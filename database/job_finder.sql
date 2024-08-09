-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2021 at 12:09 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_mst`
--

CREATE TABLE `apply_mst` (
  `Job_Application_Id` int(5) NOT NULL,
  `Company_Id` int(5) NOT NULL,
  `Job_Seeker_Id` int(5) NOT NULL,
  `Job_Post_Id` int(5) NOT NULL,
  `Job_Application_Date` date NOT NULL,
  `Job_Application_Time` time NOT NULL,
  `Job_Application_Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply_mst`
--

INSERT INTO `apply_mst` (`Job_Application_Id`, `Company_Id`, `Job_Seeker_Id`, `Job_Post_Id`, `Job_Application_Date`, `Job_Application_Time`, `Job_Application_Status`) VALUES
(1, 2, 1, 1, '2021-01-01', '10:00:00', 'Under Rev.'),
(2, 3, 2, 2, '2021-05-01', '02:20:22', 'Selected'),
(3, 4, 3, 3, '2021-01-02', '03:21:06', 'Hiring Mgr'),
(4, 5, 4, 4, '2021-01-03', '04:22:26', 'In Progres'),
(5, 6, 5, 5, '2020-07-01', '05:23:28', 'Intv Offer'),
(6, 7, 6, 6, '2021-01-03', '06:24:30', 'JobOffered'),
(7, 8, 7, 7, '2021-01-04', '07:25:32', 'Incomp. Ap'),
(8, 9, 8, 8, '2020-04-01', '08:26:34', 'Second Grp'),
(9, 10, 9, 9, '2020-06-01', '09:27:38', 'Pos Filled'),
(10, 11, 10, 10, '2021-01-05', '10:28:38', 'Under Rev.');

-- --------------------------------------------------------

--
-- Table structure for table `category_mst`
--

CREATE TABLE `category_mst` (
  `Category_Id` int(5) NOT NULL,
  `Category_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_mst`
--

INSERT INTO `category_mst` (`Category_Id`, `Category_Name`) VALUES
(1, 'Content Strategist'),
(2, 'Motion Graphics'),
(3, 'Installers'),
(4, 'Programmers'),
(5, 'Construction'),
(6, 'Executive'),
(7, 'Manager'),
(8, 'Avionics Mechanic'),
(9, 'Web Developers'),
(10, 'Technical Support');

-- --------------------------------------------------------

--
-- Table structure for table `chat_mst`
--

CREATE TABLE `chat_mst` (
  `Chat_Id` int(5) NOT NULL,
  `Company_Id` int(5) NOT NULL,
  `Job_Seeker_Id` int(5) NOT NULL,
  `Message` text NOT NULL,
  `Chat_Date` date NOT NULL,
  `Chat_Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_mst`
--

INSERT INTO `chat_mst` (`Chat_Id`, `Company_Id`, `Job_Seeker_Id`, `Message`, `Chat_Date`, `Chat_Time`) VALUES
(1, 1, 1, 'Chat Messages Are Displayed Here!', '2021-01-01', '11:29:40'),
(2, 2, 2, 'Chat Messages Are Displayed Here!', '2021-05-01', '03:30:33'),
(3, 3, 3, 'Chat Messages Are Displayed Here!', '2021-01-02', '04:31:35'),
(4, 4, 4, 'Chat Messages Are Displayed Here!', '2021-01-03', '05:32:37'),
(5, 5, 5, 'Chat Messages Are Displayed Here!', '2020-07-01', '06:33:39'),
(6, 6, 6, 'Chat Messages Are Displayed Here!', '2021-01-03', '07:34:41'),
(7, 7, 7, 'Chat Messages Are Displayed Here!', '2021-01-04', '08:35:43'),
(8, 8, 8, 'Chat Messages Are Displayed Here!', '2020-04-01', '09:36:45'),
(9, 9, 9, 'Chat Messages Are Displayed Here!', '2020-06-01', '10:37:47'),
(10, 10, 10, 'Chat Messages Are Displayed Here!', '2021-01-05', '11:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `City_Id` int(11) NOT NULL,
  `State_Id` int(11) NOT NULL,
  `City_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`City_Id`, `State_Id`, `City_Name`) VALUES
(1, 1, 'Amrawati'),
(2, 2, 'Guwahati'),
(3, 3, 'Buxar'),
(4, 4, 'Bhilai'),
(5, 5, 'Ahmedabad'),
(6, 5, 'Vadodara'),
(7, 6, 'Jamshedpur'),
(8, 7, 'Bengaluru'),
(9, 7, 'Belagavi'),
(10, 7, 'Coorg'),
(11, 8, 'Thiruvananthapuram'),
(12, 9, 'Mumbai'),
(13, 9, 'Nashik'),
(14, 9, 'Pune'),
(15, 10, 'Chennai'),
(16, 11, 'Noida');

-- --------------------------------------------------------

--
-- Table structure for table `company_mst`
--

CREATE TABLE `company_mst` (
  `Company_Id` int(5) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `About_Company` text DEFAULT NULL,
  `Company_Type` varchar(20) DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `EMail_Id` varchar(30) NOT NULL,
  `Mobile_Number` varchar(12) NOT NULL,
  `Website` varchar(30) DEFAULT NULL,
  `Logo` text DEFAULT NULL,
  `IsAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_mst`
--

INSERT INTO `company_mst` (`Company_Id`, `Password`, `Name`, `About_Company`, `Company_Type`, `Address`, `EMail_Id`, `Mobile_Number`, `Website`, `Logo`, `IsAdmin`) VALUES
(1, 'helloVisesh', 'Visesh Agarwal', NULL, NULL, 'Jamshedpur, Jharkhand, India', 'viseshagarwal@outlook.com', '7717769254', NULL, NULL, 1),
(2, 'adbotagency~2.', 'Adbot', 'Perfect mix of marketing and creative delivered to you. We relates our industry presence as the rare Red Wine, eroding into more and more valuable organization with fading time likewise your rare wine bottle. Red color defines us the best as our working methodology and enthusiasm relates to hot red in terms of aggressiveness, extrovert, energy, passion and liveliness to empower our clients with similar competitive edge in their digital marketing efforts. TOP DIGITAL MARKETING AGENCY Adbot™ is dedicated to create digital marketing campaigns having quick viewer attention and prolonged imprints on viewers mind with highest customer acquisition. + Largest Pool of Performing Web & Apps Inventory + Media Buying & Display Campaign Planning & Strategy + Lowest Ad Cost, Higher CTR & Top Ad Placement + Committed Performance Display Ads Campaign offering CPL, CPA & CPC. Digital Marketing Agency in Delhi Things have been done before but it matters the most, how well you rethink, recreate, & reinvent Adbot™ is the preferred Digital Marketing Agency by corporate giants as well as startups who are looking to capitalize on limitless possibilities that digital marketing can provide. We have established our brand value on the basis of our immaculate results, tangible ROI, professional approach to problems and tailor made solutions for any client.  Incorporated in the year 2013, Adbot™ has placed strongly as an organization in the league of top digital agencies solving the real marketing problems of corporate and startups worldwide.  We have placed 33+ startups to get into running companies and bag investment. We are equally serving corporate houses solving their problem to cope with new technology and sync their offline promotions with online channels. We have served more than 150 clientele and marketing campaigns for clients from India, USA, Canada, UK, Europe, AUS-NZ, SA, Indonesia, South Asia and elsewhere…  We possess a firm grip in advertising, branding and marketing in digital space. Adbot™ is the leading Google® Advertiser, Google® Analytics and Facebook® Marketing partner for managing large scale search marketing campaigns, online advertising campaigns and social media campaigns.  Adbot™ is the premium name in industry owned by prime consultant Ankita Sinha when it comes to digital marketing, creative and engagement media. Our service verticals include search engine marketing, online advertising, social media marketing, content marketing, email marketing, app development and rich media creative solutions, SEO services, social media optimization, Google AdWords management and not to forget eCommerce solution.', 'Digital Mktg Agency', 'A-82, Block A, Sector 4, Noida-201301, Uttar Pradesh, India.', 'info@adbot.in', '9145108585', 'www.adbot.in', 'user/logos/adbot.jpg', 0),
(3, 'assemblageentertainment!3.', 'Assemblage Entertainment', 'The dictionary defines Assemblage as \'a collection or gathering of things or people\'. As you probe further, it also represents an artistic composition made by grouping together a multitude of objects using two or three dimensional elements.  That is who we are – a motley crew of animation specialists that the industry respects. With a proven track record in the Indian 3D animation industry and through an assemblage of the right people and technology, we create full-length CGI animation feature films and aspire to narrate compelling stories through various mediums. Out endeavor is to constantly strive to identify new trends and patterns in the ever evolving animation ecosystem.This is evident in the new ethos we are trying to introduce into the Indian animation industry – the best of multiple worlds that our people have inhabited until now, the culture we foster, the talent we acquire, the technology we deploy, the co-production agreements we enjoy, the work that we bring to India and so on.  We believe animation is a universal language that resonates across geographies and demographics. We use this language to tell our stories, to open up new worlds and to bring dreams to life!', 'Animation Studio', '104, Marwah Complex, Off Saki Vihar Road, Krishanlal Marwah Road, Andheri East, Mumbai-400072,India', 'info@madassemblage.com', '8228479498', 'www.madassemblage.com', 'user/logos/assemblage.jpg', 0),
(4, 'keralafibreopticnetwork#4.', 'Kerala Fibre Optic Network', 'Welcome to Kerala IT, a Government of Kerala initiative offering a single window to a world of opportunities to IT Companies, Professionals, Investors, Developers and Service Providers alike in the state of Kerala. The site give a comprehensive listing of various IT initiative in the state of Kerala conceived to be developed as a \'Hub and Spoke\' model. Technopark-Thiruvananthapuram, Infopark-Kochi and Cyberpark-Kozhikode shall act as the hubs with satellite centers being developed at Kollam, Cherthala, Koratty. Please feel free to browse through this portal, specially designed with filtering tools, project details and other important contact information at your finger tip.  With world’s greenest IT work spaces, Kerala IT is one the finest work place. Abundant talent pool and Centre of Excellences in the emerging technologies like IoT, BlockChain, AI, Cyber Security, Space Tech and MedTech makes Kerala IT the next digital hub. Highest Human Development Index among other states in the country attracts many global giants to invest in the state. Nissan’s digital innovation centre, product development companies like Oracle & IBS, all major IT service companies like Infosys, Cognizant, Wipro & TCS are present in state  With over 3 Million plug and play work spaces on various models like GovtOwned IT parks , Co developer, Private parks. With over 600 IT companies Kerala IT provides direct jobs to about 125000 people and have an IT exports of 1.5 billion.  Apart from the IT parks in various locations of the state, Kerala IT has other dedicated departments like Startup Mission which runs incubators and accelerators for more than 2000 startups, State IT Mission which implements and manages Governance related applications & solutions, Capacity building initiatives like ICT Academy, IIITMK & ICFOSS, and a great infrastructure investments in pipeline like optical connectivity to every villages through KFON. Also Kerala became the maximum WiFi hot spot enabled state in India recently.', 'Cable Television Co.', '7th Floor, Felicity Square M.G. Road, Statue Thiruvananthapuram, Kerala-695001, India.', 'kfon@ksitil.org', '7180020895', 'www.keralait.org', 'user/logos/kerala.jpg', 0),
(5, 'coforgeitconsultingfirm$5.', 'Coforge', 'Coforge is a leading global IT solutions organization, enabling its clients to transform at the intersect of unparalleled domain expertise and emerging technologies to achieve real-world business impact. A focus on very select industries, a detailed understanding of the underlying processes of those industries and partnerships with leading platforms provides us a distinct vantage. We leverage AI, Cloud and Insight driven technologies, allied with our industry expertise, to transform client businesses into intelligent, high growth enterprises. Today our proprietary platforms power critical business processes across the Insurance, Financial Services and Travel industries. Our 11,000 technology and process consultants engineer, design, consult, operate and modernize systems across the world.', 'IT Consulting Firm', 'SEZ Developer Unit, Plot No. TZ-2 & 2A, Sector Tech Zone, Greater Noida, Uttar Pradesh-201308 India.', 'investors@niit-tech.com', '6011410292', 'www.coforgetech.com', 'user/logos/coforge.jpg', 0),
(6, 'bombayburmahtradingcompany%6.', 'Bombay Burmah Trading Corp.', 'Introduction The Bombay Burmah Trading Corporation, Limited (BBTCL) is a 150 year old company. The company founded its fortunes on teak in the year 1863, as a public company, and everything that followed is history. The company is a leading concern of the Wadia Group, a reputed Indian business house with interests in plantations, foods, textiles, chemicals, electronics and light engineering, health care and real estate. Bombay Burmah, Bombay Dyeing and Britannia are the mastheads of the Wadia Group. Today, BBTCL is one of the few oldest companies of pre-independence era, still flourishing with its core values, ethics and above all, competency in trade. It is the second oldest publicly quoted company. The BBTCL Group has an annual consolidated turnover of 1.2 billion dollars. The Company has diversified its interests into tea, coffee, other plantation products, biscuit and dairy products, auto electric and white goods parts, weighing products, horticulture and landscaping services, healthcare products (viz.) dental, orthopaedic and opthalmic products. History Originally BBTCL was formed as a public company to encourage teak business by taking over the assets and rights in Burma (now Myanmar) of William Wallace. At that time, the company was catering to the domestic demands, and then expanded it’s trading in other Asian regions. It was not until 1913 that the Company turned its attention to tea plantations and invested in suitable areas in South India.', 'Trading Company', '9, Wallace Street Fort, Mumbai-400001, Maharashtra, India.', 'writetous@bbtcl.com', '9122221971', 'bbtcl.com', 'user/logos/bombay.jpg', 0),
(7, 'bainandcompany^7.', 'Bain & Company', 'This is where aspiration meets innovation, candor fuels collaboration and impossible surrenders to teamwork. We champion the bold to achieve the extraordinary. We\'re a global consultancy that helps the world’s most ambitious change makers define the future. Across 59 offices in 37 countries, we work alongside our clients as one team with a shared ambition to achieve extraordinary results, outperform the competition and redefine industries. We complement our tailored, integrated expertise with a vibrant ecosystem of digital innovators to deliver better, faster and more enduring outcomes. Our 10-year commitment to invest more than $1 billion in pro bono services brings our talent, expertise and insight to organizations tackling today’s urgent challenges in education, racial equity, social justice, economic development and the environment. ', 'Management Cons Firm', 'Skav 909, 20th Floor 9/1, Lavelle Road, Richmond Circle Bengaluru, Karnataka-560001 India.', 'recruiting.india@bain.com', '8112468725', 'www.bain.com', 'user/logos/bain.jpg', 0),
(8, 'gtppl&8.', 'Wagh Bakri Tea', 'Wagh Bakri Tea Group, well-known for its premium tea, is having a presence in tea business since 1892. Today, Wagh Bakri Tea Group owns and operates, under its umbrella, one of the leading packaged tea companies in India with a turnover of over Rs.1500 Cr. and over 40 million Kgs of tea distribution. The group is a leading stride in tea exports and retail consumers all over the world. With huge a number of Wagh Bakri tea lovers around the world, it has emerged as a truly global brand. The Group enjoys an undisputed market presence in Gujarat, Rajasthan, Madhya Pradesh, Maharashtra, Delhi, Hyderabad, Chhattisgarh, Western Uttar Pradesh & Goa and has recently forayed into Punjab and Karnataka. Over the years, a long-lasting relationship of love and trust has developed between Wagh Bakri Tea Brand and its loyal consumers. Leaf from the best tea gardens is selected and the Group Directors personally taste and evaluate the teas.', 'Tea Company', 'Wagh Bakri House, Opposite Parimal Garden, Ambawadi, Ahmedabad-380006 Gujarat, India.', 'feedback@waghbakritea.com', '7179660662', 'www.waghbakritea.com', 'user/logos/wagh.jpg', 0),
(9, 'aequs*9.', 'Aequs Private Limited', 'Aequs is a global precision manufacturing company headquartered in Aequs Special Economic Zone in Belagavi, Karnataka, India. The company specializes in precision manufacturing, forging, sheet metal fabrication, surface treatments and assembly for aerospace and allied industries. Besides India, Aequs operates several manufacturing facilities in the US and France, catering to global OEMs. We offer a fully capable, integrated manufacturing ecosystem that effectively meets the wide-ranging demands of customers around the world. Our global partnerships with industry leaders enable the integrated ecosystem in providing value-added capabilities through three fully operational Joint Ventures based within Aequs SEZ at Belagavi.', 'Aircraft Mfr.', 'Number 55, Aequs Towers, ITPB - Whitefield Main Road, Mahadevapura Post, Bangalore-560048, Karnataka', 'info_sez@aequs.com', '608042495', 'www.aequs.com', 'user/logos/aequs.jpg', 0),
(10, 'datamatics(10.', 'Datamatics', 'Our vision is to be a world-class organization admired for consistently delivering superior business value. We will achieve this by enhancing business efficiency for data-driven businesses through smart solutions. Datamatics is a provider of consulting, information technology (IT), data management, and business process management services.[9][10] Its services use robotics, artificial intelligence and machine learning algorithms. Headquartered in Mumbai, the company has a presence across America, Australia, Asia and Europe. The company was incorporated in 1987, offering computer and electronic data processing linked services, and later added information technology enabled services with robotic process automation. On 3 November 1987, the company was incorporated as Interface Software Resources Private Ltd. The name of the company was then changed to Datamatics Technologies Private Ltd. on 18 December 1992.  It then changed its name to Datamatics Technologies Ltd. when it got listed as a public company under the provisions of section 43A of the Companies Act on 13 January 2000.', 'IT Consulting Firm', 'Knowledge Center, Street Number 17 MIDC, Andheri (East), Mumbai-400093, Maharashtra, India.', 'investors@datamatics.com', '9102261020', 'www.datamatics.com', 'user/logos/datamatics.jpg', 0),
(11, 'infosys)11.', 'Infosys', 'Infosys is a global leader in next-generation digital services and consulting. We enable clients in 46 countries to navigate their digital transformation. With nearly four decades of experience in managing the systems and workings of global enterprises, we expertly steer our clients through their digital journey. We do it by enabling the enterprise with an AI-powered core that helps prioritize the execution of change. We also empower the business with agile digital at scale to deliver unprecedented levels of performance and customer delight. Our always-on learning agenda drives their continuous improvement through building and transferring digital skills, expertise, and ideas from our innovation ecosystem. Established in 1981, Infosys is a NYSE listed global consulting and IT services company with more than 249k employees. From a capital of US$250, we have grown to become a US$13.15 billion (LTM Q3 FY21 revenues) company with a market capitalization of approximately US$ 72.2 billion. In our journey of over 39 years, we have catalyzed some of the major changes that have led to India\'s emergence as the global destination for software services talent. We pioneered the Global Delivery Model and became the first IT Company from India to be listed on NASDAQ. Our employee stock options program created some of India\'s first salaried millionaires.', 'IT Consulting Firm', '44, Hosur Road, Electronics City, Bengaluru-560100, Karnataka, India.', 'infosys_launchpad@infosys.com', '8028520261', '', 'user/logos/infosys.jpg', 0),
(12, 'adanigreenenergylimited|22', 'Adani Green Energy Limited', 'About Green Energy Adani Green Energy Limited (AGEL) is one of the largest renewable companies in India, with a current project portfolio of 13,990 MW. AGEL is part of the Adani Group’s promise to provide a better, cleaner and greener future for India. Driven by the Group’s philosophy of ‘Growth with Goodness’, the Company develops, builds, owns, operates and maintains utility-scale grid-connected solar and wind farm projects. The electricity generated is supplied to central and state government entities and government-backed corporations.  On the back of long-term Power Purchase Agreements (PPAs) of 25 years with central and state government entities, AGEL has leveraged its capabilities and expanded its presence across 11 Indian states. The Company deploys the latest technologies in its projects. With a portfolio of 54 operational projects and 12 projects under construction, AGEL is driving India on its renewable energy journey. Vision To be a world class leader in businesses that enrich lives and contribute to nations in building infrastructure through sustainable value creation.', 'Renewable Energy Co.', 'Adani Green Energy Limited, Adani House, Near Mithakhali Six Roads, Navrangpura, Ahmedabad - 380009.', 'investor@agel.adani.com', '7925559439', 'www.adanigreenenergy.com', 'user/logos/adani.jpg', 0),
(13, 'tatasteel;23', 'Tata Steel Limited', 'Shaped by a lineage of sound and straightforward business principles, the Tata Group is built on a foundation of trust and transparency. This forms the basis of every business we operate in. Founded by Jamsetji Nusserwanji Tata in 1868 and headquartered in India, the Tata Group is a global business conglomerate operating in over 100 countries across 5 continents. From an early foray into steel and automobiles, to staying abreast of the latest technologies, the Tata Group today has a strong presence across diverse industries such as agrochemicals, automotive, chemicals, construction, finance, consumer products, and hospitality. The world of Tata Steel is one without boundaries - growing, changing and challenging, a world that embraces different skills, continuous innovation, sustainable growth and a better quality of life. We touch the lives of millions of people across the world every day with the steel that we produce. And it is highly likely that Tata Steel has affected your life today, though you may not know it.  From the vehicle you drive, to the house you live in; from the bridges you cross, to the hand tools that you use; we strive to deliver unparalleled quality through our customised value-added solutions to make your life easier.  This is made possible by our commitment to a culture of continuous improvement, through which we drive operational excellence in processes, products and people.  Tata Steel is currently the world’s second-most geographically diversified steel producer. We are one of the few steel operations that are fully integrated – from mining to the manufacturing and marketing of finished products.  Continuous improvement in our product and service portfolio, along with success in value creating initiatives for customers, allows us to serve global growth markets. Today, we operate in 26 countries and have a commercial presence in over 50 countries with employees across five continents. And the numbers are growing.  Our Raw Material operations are spread across India and Canada which help us to be self-sufficient in steel production. Key manufacturing functions are performed by the raw materials and iron-making groups, while Shared Services provides maintenance support for a smooth production. In India, our downstream business activities are structured into strategic business units such as Ferro-alloys and Minerals, Tubes, Wires, Bearings, Agrico, Industrial By-products Management & Tata Growth Shop.', 'Steel Producers', 'P.O. Bistupur Jamshedpur - 831001, Jharkhand, India.', 'cosec@tatasteel.com', '7180010882', 'www.tatasteel.com', 'user/logos/tata.jpg', 0),
(14, 'hindalcoindustrieslimited:24', 'Hindalco Industries Limited', 'A leader in aluminium and copper. Hindalco Industries Limited is the metals flagship company of the Aditya Birla Group. With a consolidated turnover of US$18.7 billion, Hindalco is an industry leader in aluminium and copper.  Hindalco’s acquisition of Aleris Corporation in April 2020, through its subsidiary Novelis Inc., has cemented the company\'s position as the world’s largest flat-rolled products player and recycler of aluminium.  Hindalco’s state-of-art copper facility comprises a world-class copper smelter and a fertiliser plant along with a captive jetty. The copper smelter is among Asia\'s largest custom smelters at a single location.  In India, the company’s aluminium units across the country encompass the gamut of operations from bauxite mining, alumina refining, coal mining, captive power plants and aluminium smelting to downstream rolling, extrusions and foils. Today, Hindalco ranks among the global aluminium majors as an integrated producer and a footprint in 9 countries outside India.  The Birla Copper unit produces copper cathodes and continuous cast copper rods, along with other by-products, including gold, silver, and DAP fertilisers. It is India’s largest private producer of gold.  Hindalco has been accorded Star Trading House status in India. Its aluminium is accepted for delivery under the High-Grade Aluminium Contract on the London Metal Exchange (LME), while its copper quality is also registered on the LME with Grade A accreditation.', 'Aluminium And Copper', 'Aries Palms Tower A House, Old Padra Road, Shivashraya Society, Tandalja, Vadodara, Gujarat - 390007', 'hilinvestors@adityabirla.com', '6026412510', 'www.hindalco.com', 'user/logos/hindalco.jpg', 0),
(15, 'ntpclimited\'25', 'National Thermal Power Co. Ltd', 'NTPC is India’s largest power utility with an installed capacity of 64,880  MW (including JVs), plans to become a 130 GW company by 2032. Established in 1975, NTPC aims to be the world’s largest and best power major.  NTPC has comprehensive Rehabilitation & Resettlement and CSR policies well integrated with its core business of setting up power projects and generating electricity. The company is committed to generating reliable power at competitive prices in a sustainable manner by optimising the use of multiple energy sources with innovative eco-friendly technologies thereby NTPC is contributing to the economic development of the nation and upliftment of the society. Vision & Mission TO BE THE WORLD’S LEADING POWER COMPANY, ENERGIZING INDIA’S GROWTH.', 'Thermal Power', 'NTPC Bhawan, Scope Complex, Institutional Area, Lodhi Road, New Delhi - 110003, India.', 'ntpccc@ntpc.co.in', '9111243610', 'www.ntpc.co.in', 'user/logos/national.jpg', 0),
(16, 'saillimited\"26', 'Steel Authority Of India Ltd.', 'Steel Authority of India Limited -  A Maharatna Steel Authority of India Limited (SAIL) is one of the largest steel-making companies in India and one of the Maharatna’s of the country’s Central Public Sector Enterprises.  SAIL produces iron and steel at five integrated plants and three special steel plants, located principally in the eastern and central regions of India and situated close to domestic sources of raw materials. SAIL manufactures and sells a broad range of steel products. Ownership and Management The Government of India owns about 65% of SAIL\'s equity and retains voting control of the Company. However, SAIL, by virtue of its \'Maharatna\' status, enjoys significant operational and financial autonomy.', 'Steel', 'Shri Krishna Apartment, Judges Bunglow Road, Vastrapur, Ahmedabad - 380015, Gujarat, India.', 'ipss_sect@rediffmail.com', '8180034599', 'www.sail.co.in', 'user/logos/sail.jpg', 0),
(17, 'mahindralimited,27', 'Mahindra And Mahindra Limited', 'A federation of companies, bound by one purpose – to Rise. Inspired by this spirit, our legacy and values, our goal to always positively impact our partners, stakeholders, communities and the world at large, remains unshakeable. Our INDUSTRIES Every time the society needed us, we stepped in and helped create a new industry. In 1945, our journey commenced with us getting into the steel business, and over time, we expanded to 22 key industries. A need for change in the agricultural practices pushed us to foray into that sector right before the agriculture revolution began in India. We became one of the key torch-bearers of the IT revolution in our country. Our focus now lies in developing alternate energy sources because we believe energy conservation will play a huge role in ensuring a better future – for not just our country and communities, but the entire world.', 'Automotive Mfg. Corp', 'Mahindra And Mahindra Limited, Opposite Navrangpura Police Station Road, Navrangpura, Ahmedabad - 38', 'investors@mahindra.com', '7084480054', 'auto.mahindra.com', 'user/logos/mahindra.jpg', 0),
(18, 'wiprolimited<28', 'Wipro Limited', 'Overview Wipro Limited (NYSE: WIT, BSE: 507685, NSE: WIPRO) is a leading global information technology, consulting and business process services company. We harness the power of cognitive computing, hyper-automation, robotics, cloud, analytics and emerging technologies to help our clients adapt to the digital world and make them successful. A company recognized globally for its comprehensive portfolio of services, strong commitment to sustainability and good corporate citizenship, we have over 180,000 dedicated employees serving clients across six continents. Together, we discover ideas and connect the dots to build a better and a bold new future. Spirit of Wipro The Spirit of Wipro is the core of Wipro. These are our Values. It is about who we are. It is our character. It is reflected consistently in all our behavior. The Spirit is deeply rooted in the unchanging essence of Wipro. But it also embraces what we must aspire to be. It is the indivisible synthesis of the four values. The Spirit is a beacon. It is what gives us direction and a clear sense of purpose. It energizes us and is the touchstone for all that we do. Our Strategy On November 18, 2020, Wipro\'s CEO and MD, Thierry Delaporte and members of the Executive Leadership team presented a strategic plan to investors and analysts. Watch the presentations to learn how Wipro\'s bold new vision will strengthen our global leadership, drive innovative solutions for our customers, and generate sustainable value for shareholders.', 'Conglomerate', 'Doddakanneli, Sarjapur Road, Bengaluru - 560035, India.', 'info@wipro.com', '6918046827', 'www.wipro.com', 'user/logos/wipro.jpg', 0),
(19, 'abbottindialimited.29', 'Abbott India Limited', 'We’re dedicated to fulfilling the promise of human potential, in all places, in all aspects and stages of life. We believe that health is the key to that promise. Because at our healthiest, we’re capable of achieving anything. And that’s why our pursuit of helping people achieve their best health at every life stage will never end. This is how we put that belief into practice each and every day.  OUR PROMISE We are here for the people  we serve in their pursuit of healthy lives. This has been the way of Abbott for more than a century—passionately and thoughtfully translating science into lasting contributions to health.  Our products encircle life, from newborns to aging adults, from nutrition and diagnostics through medical care and pharmaceutical therapy.  Caring is central to the work we do and defines our responsibility to those we serve.  We advance leading-edge science and technologies that hold the potential for significant improvements to health and to the practice of health care. We value our diversity—that of our products, technologies, markets and people—and believe that diverse perspectives combined with shared goals inspire new ideas and better ways of addressing changing health needs. We focus on exceptional performance—a hallmark of Abbott people worldwide—demanding of ourselves and each other because our work impacts people’s lives. We strive to earn the trust of those we serve by committing to the highest standards of quality, excellence in personal relationships, and behavior characterized by honesty, fairness and integrity. We sustain success—for our business and the people we serve—by staying true to key tenets upon which our company was founded over a century ago: innovative care and a desire to make a meaningful difference in all that we do. The promise of our company is in the promise that our work holds for health and life. Since 1910, Abbott has been dedicated to helping people in India live healthier lives through a diverse range of science-based nutritional products, diagnostic tools, branded generic pharmaceuticals, and diabetes and vascular devices.  Headquartered in Mumbai, Abbott India Limited, a publicly listed company and a subsidiary of Abbott Laboratories, takes pride in offering high-quality trusted medicines in multiple therapeutic categories such as women\'s health, gastroenterology, cardiology, metabolic disorders and primary care.  One of India\'s fastest-growing pharmaceutical companies, Abbott India Limited is part of Abbott\'s global pharmaceutical business in India.  We have expertise across product development, manufacturing, sales and customer service and are dedicated to providing high-quality, reliable products with the expert clinical support our customers need.  Abbott India Limited believes in providing quality healthcare through a mix of global and local products for people in India. Our in-house development and medical teams undertake product and clinical development tailored to the unique needs of the Indian market. Our employees work to produce high-quality, high-volume formulations using cost efficient processes. And, our trained personnel are dedicated to ensuring compliance with international quality standards.', 'Pharmaceutical Comp.', '3 Corporate Park Sion-Trombay Road, Chembur, Mumbai - 400071, India.', 'abbott@co.in', '9867978888', 'www.abbott.co.in', 'user/logos/abbott.jpg', 0),
(20, 'eagleburgmannprivatelimited>30', 'Eagle Burgmann Private Limited', 'Always on the move EagleBurgmann India Pvt. Ltd. is the market leader in the mechanical seal industry in India, with over 40 years of rich experience. With its headquarters and main manufacturing location situated in Pune, it also has two other manufacturing locations in Mumbai and Vapi. We are certified to the ISO 9001:2008 for quality management systems and have successfully implemented environment management systems and occupational management systems which are certified to ISO 14001:2009 and OHSAS 18001:2007 respectively.  EagleBurgmann offers engineered, rugged and reliable sealing solutions in virtually all segments of the process industry. In India, the key industrial sectors served are the oil and gas industry, refineries and petrochemical plants, power plants, the fertilizer industry and many more.  At EagleBurgmann, we have always catered to challenging applications in the industry and hence are known more popularly as a \"sealing solutions provider\" rather than merely a seal manufacturer. We design and manufacture mechanical seals and sealing systems for a wide array of equipments that include pumps, compressors, mixers, kneaders, agitators, turbines, etc. The designs are proven over the years with a vast reference of successfully running applications in the field. Our history In 1975, Sealol Hin­dus­tan Ltd., a joint venture between EG&G Sealol Inc., USA and the Dalal Group, Bombay, started man­u­fac­tur­ing me­chan­i­cal seals in Vapi. In 1982, the Dalal Group exited the man­age­ment and the Poon­awalla Group took over Sealol Hin­dus­tan Ltd. During this time, the op­er­a­tions were shifted to Pune. In 1993, Burgmann India Pvt. Ltd., Mumbai, was in­cor­po­rated in India through a joint venture between Feodor Burgmann Dich­tung­w­erke GmbH, Germany, and the Balwa Group. In 1998, due to the world­wide ac­qui­si­tion of Sealol, the Poon­awalla Group entered into a joint venture with Eagle Industry Co. Ltd., Japan to form Eagle Poon­awalla Industry Ltd. In the year 2006, however, the Poon­awalla Group shares were acquired by Eagle Industry Co. Ltd. and the company name was changed to Eagle Seals & Systems India Ltd (ESSIL). In 2004 Feodor Burgmann Dich­tung­w­erke GmbH, Germany, was renamed Burgmann In­dus­tries GmbH & Co. KG. 2007 saw the ac­qui­si­tion of the Balwa Group shares by EBI Asia, to form a wholly owned sub­sidiary. In 2009, Burgmann India Pvt. Ltd. merged with ESSIL to form EagleBurgmann India Pvt. Ltd.', 'Industrial Sealing ', 'Number - 403, 448, Atlantis K-10 Tower - A, Opposite Honest Restaurant, Vadodara - 390023, Gujarat, ', 'compliance.finance@in', '8026523336', 'www.eagleburgmann.co.in', 'user/logos/eagle.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `educational_qualification`
--

CREATE TABLE `educational_qualification` (
  `Educational_Qualification_Id` int(5) NOT NULL,
  `Job_Seeker_Id` int(5) NOT NULL,
  `Job_Post_Id` int(5) NOT NULL,
  `Educational_Qualification_Name` varchar(30) NOT NULL,
  `Institute_Name` varchar(30) NOT NULL,
  `Pass_Out_Year` int(4) NOT NULL,
  `Marks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `educational_qualification`
--

INSERT INTO `educational_qualification` (`Educational_Qualification_Id`, `Job_Seeker_Id`, `Job_Post_Id`, `Educational_Qualification_Name`, `Institute_Name`, `Pass_Out_Year`, `Marks`) VALUES
(1, 1, 1, 'Pro. Diploma In Digital Mktg.', 'Quinoxx Creative Academy', 2019, 80),
(2, 2, 2, 'Deg. In Media GFX & Animation', 'Hiraba B.ED. College', 2018, 95),
(3, 3, 3, 'High School Diploma', 'St. Xavier\'s School', 2017, 70),
(4, 4, 4, 'Master Of Computer Application', 'LD Institute', 2018, 81),
(5, 5, 5, 'MBA In Financial Markets', 'Mudra Institute Of Comms.', 2017, 75),
(6, 6, 6, 'MBA In Finance', 'Symbiosis International Univ.', 2019, 95),
(7, 7, 7, 'MSC In Chemist', 'St. Xavier\'s College', 2019, 65),
(8, 8, 8, 'Diploma In Mechanical Elec.', 'Sage University', 2019, 82),
(9, 9, 9, 'BCA', 'St. Xavier\'s College', 2019, 83),
(10, 10, 10, 'MSC.IT', 'KS School Of Business Mngmt', 2016, 93);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `Experience_Id` int(5) NOT NULL,
  `Job_Seeker_Id` int(5) NOT NULL,
  `Job_Post_Id` int(5) NOT NULL,
  `Company_Name` varchar(30) NOT NULL,
  `Job_Role` varchar(20) NOT NULL,
  `Date_Of_Joining` date NOT NULL,
  `Date_Of_Leaving` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`Experience_Id`, `Job_Seeker_Id`, `Job_Post_Id`, `Company_Name`, `Job_Role`, `Date_Of_Joining`, `Date_Of_Leaving`) VALUES
(1, 1, 1, 'Webchutney', 'Accountant', '2019-07-01', '2020-12-31'),
(2, 2, 2, 'Blue Ribbon 3D', 'Animator', '2018-06-01', '2020-04-30'),
(3, 3, 3, 'Atria Convergence Techno. Ltd.', 'Technician', '2017-06-01', '2020-12-31'),
(4, 4, 4, 'KPIT', 'Field Techn. Cons.', '2018-07-01', '2020-06-30'),
(5, 5, 5, 'Zerodha', 'Equities Trader', '2017-07-01', '2020-12-31'),
(6, 6, 6, 'MM Management Consultant', 'Administrator', '2019-07-01', '2020-12-31'),
(7, 7, 7, 'Tata Global Beverages', 'Tester', '2019-07-01', '2020-12-31'),
(8, 8, 8, 'Larsen & Toubro Infotech', 'Sap Sec. Consult.', '2019-07-01', '2020-03-31'),
(9, 9, 9, 'Accenture', 'Senior Lync Consult.', '2019-07-01', '2020-05-31'),
(10, 10, 10, 'Mphasis', 'Technology Consult.', '2016-07-01', '2020-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `hobby`
--

CREATE TABLE `hobby` (
  `Hobby_Id` int(5) NOT NULL,
  `Job_Seeker_Id` int(5) NOT NULL,
  `Hobby_Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hobby`
--

INSERT INTO `hobby` (`Hobby_Id`, `Job_Seeker_Id`, `Hobby_Name`) VALUES
(1, 1, 'Board Game'),
(2, 2, 'Acting'),
(3, 3, 'Chess'),
(4, 4, 'Prgmg.'),
(5, 5, 'Stock Mktg'),
(6, 6, 'Animation'),
(7, 7, 'Singing'),
(8, 8, 'Air Sports'),
(9, 9, 'Travelling'),
(10, 10, 'Cooking');

-- --------------------------------------------------------

--
-- Table structure for table `job_mst`
--

CREATE TABLE `job_mst` (
  `Job_Post_Id` int(5) NOT NULL,
  `Company_Id` int(5) NOT NULL,
  `Category_Id` int(5) NOT NULL,
  `City_Id` int(5) NOT NULL,
  `Job_Post_Name` varchar(30) NOT NULL,
  `Job_Post_Type` varchar(20) NOT NULL,
  `Job_Post_Description` text NOT NULL,
  `Job_Post_Responsibility` text NOT NULL,
  `Job_Post_Educational_Qualification` varchar(300) NOT NULL,
  `Job_Post_Experience` int(1) NOT NULL,
  `Job_Post_Salary` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_mst`
--

INSERT INTO `job_mst` (`Job_Post_Id`, `Company_Id`, `Category_Id`, `City_Id`, `Job_Post_Name`, `Job_Post_Type`, `Job_Post_Description`, `Job_Post_Responsibility`, `Job_Post_Educational_Qualification`, `Job_Post_Experience`, `Job_Post_Salary`) VALUES
(1, 2, 1, 1, 'Content Managers', 'Content Strategist', 'Plans and execute all web, SEO/SEM database marketing, email, social media and display advertising campaigns.', 'Content Manager duties include producing and publishing content, writing, editing and proofreading, formulating content strategies and managing a content team, among other tasks.', 'Bachelor of Arts (B.A.)/Bachelor of Sciences (B.S.) Degree.', 3, 240000),
(2, 3, 2, 2, 'Art Director', 'Graphic Designer', 'Be sure to know graphics design and layout in and out.', 'Art directors are responsible for the overall visual aspects of an advertising or media campaign and coordinate the work of other artistic or design staff, such as graphic designers. In publishing, art directors typically oversee the page layout of catalogs, newspapers, or magazines.', 'Bachelor\'s Degree in Design.', 0, 252000),
(3, 4, 3, 3, 'Senior Sales Head', 'Ad. Sales Agent', 'Cable television technicians install, inspect, maintain, repair antennas, cables and amplifying equipment used in cable television transmission.', 'The Senior Sales Manager leads and manages all sales operations and oversees activities of the junior sales management team. The key objective of the Senior Sales Manager is to grow incremental and new sales for the business while simultaneously reducing customer turnover.', 'Bachelor\'s/Master\'s Degree in Business Administration, Business Management, Communications, Marketing.', 5, 300000),
(4, 5, 4, 4, 'Analyst', 'Telecom Analyst', 'IT Consultants have to consult staff from different parts of a client\'s organization.', 'An analyst gathers, interprets, and uses complex data to develop actionable steps that will improve processes and optimize results. Day-to-day, he or she assesses company and client needs, receives robust information, and analyzes it, looking for telltale trends or areas for improvement.', 'Bachelor\'s Degree in Business Studies, Computer, Economics, Maths or Statistics.', 3, 216000),
(5, 6, 5, 5, 'Operator (Trading Terminal)', 'Fundamental Trader', 'Traders are responsible for making prices and executing trades in equities, bonds, commodities and foreign exchange, usually dealing on behalf of, or for the benefit of, investment banks.', 'Typically a terminal operator\'s responsibilities include interacting with Retail and HNI clients. He/she has to punch orders and execute online trades on behalf of the clients,monitoring day to day operations, clients\' margin and risk.', 'Bachelor in Commerce (B.Com), Master of Business Administration (M.B.A), Post Graduate Diploma in Management (P.G.D.M.).', 4, 360000),
(6, 7, 6, 6, 'Financial Manager', 'Finance', 'If you are motivated, enjoy problem solving and have an interest in helping organisations to operate better, then management consultancy is the career for you.', 'A Finance Manager distributes the financial resources of a company, is responsible for the budget planning, and supports the executive management team by offering insights and financial advice that will allow them to make the best business decisions for the company.', 'Bachelor\'s/Master\'s Degree in Accounting, Business Administration, Economics or Finance.', 5, 372000),
(7, 8, 7, 7, 'Assistant', 'Batch Maker', 'In the manufacturing company, the tester should detect the defects in the process of manufacture. By looking at the color and size of the processed leaves one is able to determine whether they have been dried under fire or fermented and sends them back to the factory to modulate it if required. They also need to coordinate the various works in the garden and tell the researcher of the commercial needs. ', 'Assistant should act as a first point of contact: dealing with correspondence and phone calls. Managing diaries and organising meetings and appointments, often controlling access to the manager/executive. Booking and arranging travel, transport and accommodation. Organising events and conferences.', 'High School Diploma.', 2, 330000),
(8, 9, 8, 8, 'Flight Attendant', 'Manufacturing', 'As an aircraft manufacturing technician you have to be involved in to undertake repairs, assembling and overhaul of diverse manufacturing equipment, such as numerically controlled and precision-built machines.', 'Flight Attendants are generally responsible for ensuring passengers\' safety and comfort at all times. Their duties include ensuring that the emergency equipment is working, that the cabin is clean, and that there is an adequate supply of food and beverages.', 'Diploma In Aviation and Hospitality Management.', 1, 180000),
(9, 10, 9, 9, 'Project Manager', 'Software Consultant', 'IT Consultants analyse an organisation\'s data and determines information system requirements, defines project objectives, design and install information technology systems.', 'In the broadest sense, project managers (PMs) are responsible for planning, organizing, and directing the completion of specific projects for an organization while ensuring these projects are on time, on budget, and within scope.', 'Bachelor\'s Degree in Business or Management.', 0, 228000),
(10, 11, 10, 10, 'Programmer', 'Technology Cons.', 'Computer programmer need to code and test programming for software, mobile apps and computer applications and fix bugs in existing code.', 'Programmers are also known as Software Engineers or Systems Programmers, Computer Programmers are tasked with designing and creating software programs, integrating systems and software, training end-users, analyzing algorithms, modifying source-code, writing system instructions, debugging, and maintaining operating systems.', 'Bachelor of Computer Applications (B.C.A.)/Master of Computer Applications (M.C.A)/Bachelor of Technology (B.Tech)/Master of Technology (M.Tech)/Master of Science in IT (MSC.IT).', 0, 420000),
(11, 12, 5, 11, 'Production Manager', 'Production', 'Production managers ensure that manufacturing processes run reliably and efficiently. Responsibilities of the job include: planning and organising production schedules. ... estimating, negotiating and agreeing budgets and timescales with clients and managers. ensuring that health and safety regulations are met.', 'Production managers ensure that manufacturing processes run reliably and efficiently. Responsibilities of the job include: planning and organising production schedules. Estimating, negotiating and agreeing budgets and timescales with clients and managers.', 'Diploma of Leadership and Management/Diploma of Logistics', 5, 300000),
(12, 12, 5, 12, 'Deputy General Manager', 'Mechanical Engineer', 'The Deputy General Manager assists the General Manager to plan, develop, implement and oversee company initiatives and projects. She or he oversees the company\'s operations, has budgeting responsibilities and is involved in hiring and evaluating company employees.', 'A deputy general manager primary responsibility is to oversee the day-to-day operations, which can include negotiating contracts with vendors or prospective employees, assigning tasks, leading meetings and implementing initiatives handed down by the general manager or executives. They analyze and implement policies and procedures, oversee short- and long-term business plans and initiatives and help in budgeting activities. They interact more often with a company’s personnel than the general manager and may even respond to and resolve internal and external grievances.', 'Bachelor\'s/Master\'s Degree in Law.', 10, 2500000),
(13, 12, 5, 13, 'Maintenance Manager', 'Casting Industry', 'Maintenance Managers oversee and lead maintenance procedures and actions in a company. Also known as Maintenance Supervisors, these professionals manage activities for the repair of buildings, landscapes, and offices. Duties include tracking expenses, reporting progress, and assigning schedules.', 'A Typical Maintenance Manager is responsible for keeping the ground operations running by managing and overseeing all maintenance-related activities. In practice, this includes: Scheduling and overseeing all maintenance-related work by managing a team of maintenance technicians and supervisors.', 'Bachelor’s Degree in Engineering.', 5, 400000),
(14, 13, 6, 14, 'Mktg. Manager', 'Mktg. Coordinator', 'A marketing manager builds that awareness by developing and executing on marketing strategies to meet consumer need — and maximize profits. Working in industries as varied as advertising, hospitality, healthcare, finance, technology, retail, and education, marketing managers are integral to a company\'s success.', 'A Marketing Manager is responsible for managing the promotion and positioning of a brand or the products and services that a company sells. Typically marketing managers are employed to attract more customers to buy from the company and to raise brand awareness through the creation of marketing campaigns.', 'Bachelor\'s/Master\'s Degree in Accounting, Communications, Public Relations or Marketing.', 10, 192000),
(15, 13, 6, 15, 'Web Designer', 'Designer', 'Web designers plan, create and code internet sites and web pages, many of which combine text with sounds, pictures, graphics and video clips. A web designer is responsible for creating the design and layout of a website or web pages. It and can mean working on a brand new website or updating an already existing site.', 'Web Designer Responsibilities include: Creating website designs. Producing sample sites. Meeting with clients to discuss requirements and/or project progress. Demonstrating and receiving feedback about draft sites. Keeping up to date with recent technological and software developments. Developing skills and expertise in appropriate software/programming languages such as HTML and Javascript. Creating products that are user-friendly, effective and appealing. Digital retouching and image editing. Working as part of a multidisciplinary team.', 'Bachelor of Computer Applications (B.C.A.)/Master of Computer Applications (M.C.A)/Bachelor of Technology (B.Tech)/Master of Technology (M.Tech)/Master of Science in IT (MSC.IT).', 0, 420000),
(16, 13, 6, 16, 'Accountant', 'Account Executive', 'Accountant Provides financial information to management by researching and analyzing accounting data; preparing reports. Prepares asset, liability, and capital account entries by compiling and analyzing account information. Documents financial transactions by entering account information.', 'Accountant should ensure the accuracy of financial documents, as well as their compliance with relevant laws and regulations. Preparing and maintaining important financial reports. Preparing tax returns and ensuring that taxes are paid properly and on time.', 'Bachelor\'s Degree in Accounting.', 5, 1200000),
(17, 14, 5, 1, 'Metallurgical Engineer', 'Metallurgist', 'Metallurgical engineers work with metals and alloys in a variety of industrial and manufacturing settings. They are primarily responsible for analyzing metals and alloys to determine their physical and chemical properties.', 'Metallurgical Engineer administer everyday production, develop plans to upgrade plant and ensure optimal level of quality assurance.', 'Bachelor of Technology (B.Tech) in Materials/Metallurgical Engineering.', 4, 120000),
(18, 14, 7, 2, 'Craft Worker', 'Craft Store Employee', 'Craft Worker Create or reproduce hand-made objects for sale and exhibition using a variety of techniques, such as welding, weaving, pottery, and needlecraft.', 'Craft Worker create functional or decorative objects by hand, using a variety of methods and materials. Develop concepts or creative ideas for craft objects.', 'Bachelor\'s/Master\'s Degree in Fine Arts.', 0, 312000),
(19, 14, 7, 3, 'Welder', 'Welding', 'Welders manage the machines that manufacture and repair metal structures, tools, and equipment. These skilled professionals work in a variety of industries including automotive, construction, and manufacturing. Other duties include planning layouts and measurements and testing welded surfaces.', 'Welder responsibilities include: Reading blueprints and drawings and taking measurements to plan layout and procedures. Determining the appropriate welding equipment or method based on requirements. Setting up components for welding according to specifications.', 'Associate of Science in Welding or Bachelor of Science in Welding Engineering.', 0, 300000),
(20, 15, 8, 4, 'Turbine Desk Engineer', 'Desk Operation', 'Turbine Desk Engineer should Maintain Generation on units as per approved export power schedule.', 'Turbine Desk Engineer should maintain Generation on units as per approved export power schedule. Monitoring all equipment parameters. Identification of deviation in Turbine operation parameters and take appropriate action for normalization.', 'Bachelor of Engineering/Bachelor of Technology in Electronics or Mechanica.', 6, 480000),
(21, 15, 8, 5, 'Industrial Engineer', 'Maintenance', 'Industrial engineers find ways to eliminate wastefulness in production processes. They devise efficient systems that integrate workers, machines, materials, information, and energy to make a product or provide a service.', 'Industrial Engineer Analyze different factors - where are the sales coming from, what is being sold more, what type of promos/discounts are working, on which days sales are the highest, which categories (shirts, t shirts, jeans, etc.) are sold the most etc.', 'Bachelor\'s Degree in Business Management, Industrial Engineering, Logistics.', 0, 420000),
(22, 15, 8, 6, 'Boiler Desk Engineer', 'AFBC Boiler', 'Responsible for all instrument & control system equipment regular maintenance and repairing, such as all field instrumentation, valves.', 'Boiler Desk Engineer manage the boiler and other related machinery, ensuring it is functional and safe at all times. Inspect safety devices on a daily basis, running tests and reporting any unusual situations. Monitor boiler water and fuel levels, making adjustments and activating valves as necessary to keep the boiler operational.', 'Degree/Diploma in Chemical Engineering, Electrical Engineering, Instrumentation Engineering, Mechanical Engineering, Power Plant Engineering/Production Engineering.', 0, 400000),
(23, 16, 10, 7, 'General Manager', 'Steel Making', 'General Managers are tasked with overseeing daily business activities, improving overall business functions, training heads of departments, managing budgets, developing strategic plans, creating policies, and communicating business goals.', 'General Manager responsibilities include formulating overall strategy, managing people and establishing policies. To be successful in this role, you should be a thoughtful leader and a confident decision-maker, helping our people develop and be productive, while ensuring our profits are on the rise.', 'Diploma in Hotel Management.', 2, 3000000),
(24, 16, 10, 8, 'Finance Officer', 'Accounts And Finance', 'The role of the Finance Officer involves providing financial and administrative support to colleagues, clients and stakeholders of the business. It’s a role that may attract applicants keen to move up the financial corporate ladder; those with ambitions of being Finance Managers, or even the CFO one day.', 'Finance Officer duties and responsibilities of the job assisting in the preparation of budgets. Managing records and receipts. Reconciling daily, monthly and yearly transactions. Preparing balance sheets.', 'Master of Business Administration (M.B.A.)', 5, 1200000),
(25, 16, 10, 9, 'Logistics Manager', 'Logistics', 'Logistics Manager should do Planning and managing logistics, warehouse, transportation and customer services. Directing, optimizing and coordinating full order cycle. Liaising and negotiating with suppliers, manufacturers, retailers and consumers.  Logistics Manager job description template | Workableresources.workable.com › lo ', 'Logistics Manager responsibilities include: Planning and managing logistics, warehouse, transportation and customer services. Directing, optimizing and coordinating full order cycle. Liaising and negotiating with suppliers, manufacturers, retailers and consumers.', 'Bachelor\'s/Master\'s Degree in Business, Computing, Distribution, Economics, Geography, Information Systems, Management, Science or Transport.', 2, 600000),
(26, 17, 8, 10, 'Research Analyst', 'AutomotiveIndustrial', 'A research analyst is responsible for researching, analyzing, interpreting, and presenting data related to markets, operations, finance/accounting, economics, customers, and other information related to the field they work in.', 'A research analyst is responsible for researching, analyzing, interpreting, and presenting data related to markets, operations, finance/accounting, economics, customers, and other information related to the field they work in.', 'Bachelor of Business Administration (B.B.A.) in Finance or Marketing/Bachelor of Commerce (B.Com) in Business Statistics or Mathematics/Bachelor of Science (BSC) in Mathematics or Statistics. ', 0, 240000),
(27, 17, 8, 11, 'Sales Executive', 'Automotive Mftg.', 'Sales executives promote products and services to customers and negotiate contracts with the aim of maximising profits. Salaries are often enhanced by a good benefits package, including commission-based earnings, bonuses, lunch allowances and sometimes health insurance and a company car.', 'Sales executives are the key point of contact between an organisation and its clients: answering queries, offering advice and introducing new products. Their work includes: organising sales visits. demonstrating and presenting products.', 'Bachelor\'s/Master\'s Degree in Advertising Sales, Business Administration, Marketing, Promotions.', 5, 228000),
(28, 17, 8, 12, 'Engineer Trainee', 'Electronics Engr.', 'The Trainee Engineer\'s responsibilities include attending meetings, conducting desktop and field research, performing all practical and administrative duties assigned by the Supervisor, traveling to other sites when required, assisting on projects, offering suggestions for improvement, and writing up reports.', 'The Trainee Engineer\'s responsibilities include attending meetings, conducting desktop and field research, performing all practical and administrative duties assigned by the Supervisor, traveling to other sites when required, assisting on projects, offering suggestions for improvement, and writing up reports.', 'Bachelor\' Degree in Engineering.', 1, 228000),
(29, 18, 10, 13, 'Technical Support Engineer', 'IT Hardware Engineer', 'A Technical Support Engineer will research, diagnose, troubleshoot, and resolve customer issues in an accurate and timely manner. You will be responsible for working with different systems, software, and hardware and follow standard procedures to escalate unresolved issues to appropriate internal departments.', 'Technical Support Engineer responsibilities include resolving network issues, configuring operating systems and using remote desktop connections to provide immediate support. You will use email and chat applications to give clients quick answers to simple IT issues.', 'Degree in Computer Engineering, Computer Science, Engineering or Technical.', 3, 240000),
(30, 18, 10, 14, 'Associate Analyst', 'Human Resource', 'Associate analyst include setting up reporting systems and collecting data; using analytical skills to understand how the collected data affects business decisions, and preparing reports that detail findings and recommend solutions.', 'An associate analyst is a professional who is responsible for the research and investigation for a specific business process and department to help the senior staff make further decisions. ... They must assist in developing new business models that can generate profits while reducing costs.', 'Bachelor\'s/Master\'s Degree in Computer Science, Finance.', 1, 300000),
(31, 18, 10, 15, 'Help Desk Engineer', 'Engineer', 'Help Desk Engineer Serving as the first point of contact for customers seeking technical assistance over the phone or email. Performing remote troubleshooting through diagnostic techniques and pertinent questions. Determining the best solution based on the issue and details provided by customers.', 'Help desk support specialists are the go-to people for providing technical assistance and support related to computer systems, hardware, and software. They are responsible for answering queries and addressing system and user issues in a timely and professional manner.', 'Bachelor\'s Degree in Computer Sciences or Engineering.', 0, 264000),
(32, 19, 7, 16, 'Therapy Business Manager', 'Chemist', 'Therapy Business Manager Plan and Manage achievement of Sales targets on Product wise / Value wise Primary and Secondary Sales, Territory profitability, increase / maintain brand market shares through effective planning of resources, distribution management, Costumer Relation Management / Key Opinion Leader engagement initiatives and control on expenses.', 'Plan and Manage achievement of Sales targets on Product wise / Value wise Primary and Secondary Sales, Territory profitability, increase / maintain brand market shares through effective planning of resources, distribution management, Costumer Relation Management / Key Opinion Leader engagement initiatives and control on expenses.', 'Bachelor of Pharmacy (B.Pharma)/Bachelor of Science(B.SC.)/Master of Science (M.S.C) in Microbiology with or without Management Degree.', 3, 132000),
(33, 19, 7, 1, 'Territory Business Manager', 'Business Development', 'Territory Business Manager responsibilities include Maintaining customer relationships. Setting and meeting sales targets to increase revenue. Finding ways to ensure efficiency of sales operations.', 'Territory Business Manager responsibilities include: Maintaining customer relationships. Setting and meeting sales targets to increase revenue. Finding ways to ensure efficiency of sales operations.', 'Bachelor\'s Degree in Business Administration, Business Management or Marketing.', 2, 228000),
(34, 19, 7, 2, 'Account Manager', 'Accounting', 'As an Accounting Manager, you will supervise, monitor and evaluate all day-to-day accounting activities. In addition, you will be establishing financial status by developing and implementing systems for collecting, analyzing, verifying and reporting financial information.', 'Account Manager manages and oversees the daily operations of the accounting department. Monitoring and analyzing accounting data and produce financial reports or statements. Establishing and enforcing proper accounting methods, policies and principles.', 'Bachelor\'s Degree in Sales Management or Operations Management.', 5, 720000),
(35, 20, 6, 3, 'Survey Co-ordinator', 'Maintenance Engineer', 'Survey Co-ordinator should analyse, developing and maintaining survey datasets. develop and maintain internal survey policies and procedures. analysing survey data and providing timely reports for senior staff and other audiences as appropriate.', 'Survey Co-ordinator measure land features, such as depth and shape, based on reference points. They examine previous land records to verify data from on-site surveys. Survey Co-Ordinator also prepare maps and reports, and present results to clients.', 'Diploma in Civil Engineering.', 1, 204000),
(36, 20, 6, 4, 'Senior Sales Executive', 'Sales', 'Senior Sales Executive job duties should Identifies business opportunities by identifying prospects and evaluating their position in the industry; researching and analyzing sales options. Sells products by establishing contact and developing relationships with prospects; recommending solutions.', 'Senior Sales Executives are the most experienced members of a sales team. They are responsible for guiding Sales Representatives and ensuring that sales targets are met, generating leads, managing key accounts, and monitoring competitors’ sales activities.', 'Bachelor\'s Degree in Professional or Technical Sales.', 5, 150000),
(37, 20, 6, 5, 'Electrical Design Engineer', 'Design Engineering', 'Electrical design engineers develop new electrical systems for various applications. They research systems ideas and draw up plans for these systems, usually using a computer program. They are responsible for developing system specifications and layouts.', 'Electrical Design Engineers create solutions, which can range from small component designs to large-scale systems. More commonly you would be working on security, alarm systems, lighting and HV / LV systems.', 'Bachelor\'s Degree in Electrical Engineering.', 4, 1200000),
(38, 12, 6, 6, 'Internal Auditors', 'Auditing', 'Internal Auditors responsibilities include Performing the full audit cycle including risk management and control management over operations\' effectiveness, financial reliability and compliance with all applicable directives and regulations. Determining internal audit scope and developing annual plans.', 'The Duties of an Internal Auditor Objectively assess a company\'s IT and/or business processes. Assess the company\'s risks and the efficacy of its risk management efforts. Ensure that the organization is complying with relevant laws and statutes. Evaluate internal control and make recommendations on how to improve.', 'Bachelor\'s/Master\'s Degree in Accounting.', 2, 144000),
(39, 13, 3, 7, 'Researcher', 'Coatings&Composites', 'The Researcher\'s duties include aligning methodologies with research goals, using a range of tools to acquire information and interpret data, writing up reports and presenting findings and schedules to management and other stakeholders, identifying trends and patterns, conducting fieldwork and tests when required, as well as protecting databases and confidential information.', 'Researchers have a responsibility to communicate their research, to collaborate with others where appropriate and to transfer and exploit knowledge for the benefit of your employer, the economy and society as a whole. Researchers have a responsibility to behave honestly and ethically in the course of their research.', 'Bachelor\'s/Master\'s Degree in Economics, Research.', 0, 1080000),
(40, 14, 9, 8, 'Senior Site Engineer', 'Security Systems', 'We are looking for Senior Site Engineer having 5 to 7 years experience in building construction. Must have sound knowledge of material calculation.', 'The primary role of a senior site engineer is to oversee the design and building of construction projects. Senior civil engineers are heavily involved in the planning process of projects, such as those encompassing roads and large buildings. They create budgets, review safety issues, conduct land surveys, and manage teams of surveyors, engineering technicians, and construction workers. Senior civil engineers are also involved in the inspection of completed projects to ensure that all codes have been met, safety issues addressed, and that the job has met all specifications.', 'Bachelor of Science (B.S.C) in Civil Engineering.', 2, 1320000);

-- --------------------------------------------------------

--
-- Table structure for table `language_known`
--

CREATE TABLE `language_known` (
  `Language_Known_Id` int(5) NOT NULL,
  `Job_Seeker_Id` int(5) NOT NULL,
  `Language_Known_Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language_known`
--

INSERT INTO `language_known` (`Language_Known_Id`, `Job_Seeker_Id`, `Language_Known_Name`) VALUES
(1, 1, 'Hindi'),
(2, 2, 'Gujarati'),
(3, 3, 'Pahari'),
(4, 4, 'Urdu'),
(5, 5, 'Malayalam'),
(6, 6, 'Kangri'),
(7, 7, 'Marathi'),
(8, 8, 'English'),
(9, 9, 'Bengali'),
(10, 10, 'Nepali');

-- --------------------------------------------------------

--
-- Table structure for table `payment_mst`
--

CREATE TABLE `payment_mst` (
  `Payment_Id` int(5) NOT NULL,
  `Company_Id` int(5) NOT NULL,
  `Payment_Details` text NOT NULL,
  `Payment_Date` date NOT NULL,
  `Payment_Time` time NOT NULL,
  `Payment_Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_mst`
--

INSERT INTO `payment_mst` (`Payment_Id`, `Company_Id`, `Payment_Details`, `Payment_Date`, `Payment_Time`, `Payment_Status`) VALUES
(1, 1, 'Paid Rupees 1000 Through Online Payment Portal.', '2010-03-12', '08:41:45', 'Pending'),
(2, 2, 'Paid Rupees 1000 Through Online Payment Portal.', '2013-06-04', '07:44:51', 'Success'),
(3, 3, 'Paid Rupees 1000 Through Online Payment Portal.', '2000-09-04', '09:45:54', 'Completed'),
(4, 4, 'Paid Rupees 1000 Through Online Payment Portal.', '1992-10-06', '10:46:57', 'Cancelled'),
(5, 5, 'Paid Rupees 1000 Through Online Payment Portal.', '1999-11-07', '11:47:59', 'Rejected'),
(6, 6, 'Paid Rupees 1000 Through Online Payment Portal.', '1998-12-08', '12:48:59', 'Pending'),
(7, 7, 'Paid Rupees 1000 Through Online Payment Portal.', '1996-04-09', '13:49:01', 'Success'),
(8, 8, 'Paid Rupees 1000 Through Online Payment Portal.', '1997-05-31', '09:50:55', 'Completed'),
(9, 9, 'Paid Rupees 1000 Through Online Payment Portal.', '1993-06-05', '06:51:57', 'Cancelled'),
(10, 10, 'Paid Rupees 1000 Through Online Payment Portal.', '1998-07-05', '07:52:59', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `seek_mst`
--

CREATE TABLE `seek_mst` (
  `Job_Seeker_Id` int(5) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `EMail_Id` varchar(30) NOT NULL,
  `Gender` varchar(2) NOT NULL,
  `Mobile_Number` varchar(12) NOT NULL,
  `Resume` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seek_mst`
--

INSERT INTO `seek_mst` (`Job_Seeker_Id`, `Password`, `Name`, `Address`, `Date_Of_Birth`, `EMail_Id`, `Gender`, `Mobile_Number`, `Resume`) VALUES
(1, 'aabhasabburi)12.', 'Aabhas Abburi', 'Agartala, Tripura, India.', '1999-02-01', 'aabhasabburi@gmail.com', 'M', '9876543210', ''),
(2, 'aalyahabhyankar-13.', 'Aalyah Abhyankar', 'Ahmedabad, Gujarat, India.', '1998-04-05', 'aalyahabhyankar@gmail.com', 'F', '9081726354', ''),
(3, 'babhribhimala_14.', 'Babhri Bhimala', 'Baddi, Himachal Pradesh, India.', '1997-06-05', 'babhribhimala@gmail.com', 'M', '9012345678', ''),
(4, 'bagyabaral=15.', 'Bagya Baral', 'Badrinath, Uttarakhand, India.', '1996-08-07', 'bagyabaral@gmail.com', 'F', '9786534210', ''),
(5, 'cacharichourasiya+16.', 'Cachari Chourasiya', 'Calicut, Kerala, India.', '1995-10-09', 'cacharichourasiya@gmail.com', 'M', '8071926453', ''),
(6, 'charucethirakath[17.', 'Charu Cethirakath', 'Chail, Himachal Pradesh, India.', '1997-12-11', 'charucethirakath@gmail.com', 'F', '8697524310', ''),
(7, 'damitadabholkar{18.', 'Damita Dabholkar', 'Dabhosa, Maharashtra, India.', '1997-05-04', 'damitadabholkar@gmail.com', 'F', '7061928354', ''),
(8, 'daamodardabral]19.', 'Daamodar Dabral', 'Daman, Dadra And Nagar Haveli, India.', '1999-07-06', 'daamodardabral@gmail.com', 'M', '7591824320', ''),
(9, 'eashaneknath}20.', 'Eashan Eknath', 'Faridabad, Haryana, India.', '1999-06-08', 'eashaneknath@gmail.com', 'M', '6908172534', ''),
(10, 'elainaengle\\21.', 'Elaina Engle', 'Gangtok, Sikkim, India.', '1994-02-10', 'elainaengle@gmail.com', 'F', '6549382710', ''),
(11, 'abcdefgh', 'Abcd', 'efgh', '2021-03-04', 'abcd@gmail.com', 'Ma', '9876543210', '');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `Skill_Id` int(5) NOT NULL,
  `Job_Seeker_Id` int(5) NOT NULL,
  `Skill_Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`Skill_Id`, `Job_Seeker_Id`, `Skill_Name`) VALUES
(1, 1, 'Marketing'),
(2, 2, 'Art'),
(3, 3, 'Accounting'),
(4, 4, 'Leadership'),
(5, 5, 'Analytical'),
(6, 6, 'Listening'),
(7, 7, 'Acting'),
(8, 8, 'Technical'),
(9, 9, 'Athletics'),
(10, 10, 'Chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `State_Id` int(11) NOT NULL,
  `State_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`State_Id`, `State_Name`) VALUES
(1, 'Andhra Pradesh'),
(2, 'Assam'),
(3, 'Bihar'),
(4, 'Chhattisgarh'),
(5, 'Gujarat'),
(6, 'Jharkhand'),
(7, 'Karnataka'),
(8, 'Kerala'),
(9, 'Maharashtra'),
(10, 'Tamil Nadu'),
(11, 'Uttar Pradesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_mst`
--
ALTER TABLE `apply_mst`
  ADD PRIMARY KEY (`Job_Application_Id`),
  ADD KEY `Company_Id` (`Company_Id`),
  ADD KEY `Job_Seeker_Id` (`Job_Seeker_Id`),
  ADD KEY `Job_Post_Id` (`Job_Post_Id`);

--
-- Indexes for table `category_mst`
--
ALTER TABLE `category_mst`
  ADD PRIMARY KEY (`Category_Id`);

--
-- Indexes for table `chat_mst`
--
ALTER TABLE `chat_mst`
  ADD PRIMARY KEY (`Chat_Id`),
  ADD KEY `Company_Id` (`Company_Id`),
  ADD KEY `Job_Seeker_Id` (`Job_Seeker_Id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`City_Id`),
  ADD KEY `State_Id` (`State_Id`);

--
-- Indexes for table `company_mst`
--
ALTER TABLE `company_mst`
  ADD PRIMARY KEY (`Company_Id`);

--
-- Indexes for table `educational_qualification`
--
ALTER TABLE `educational_qualification`
  ADD PRIMARY KEY (`Educational_Qualification_Id`),
  ADD KEY `Job_Seeker_Id` (`Job_Seeker_Id`),
  ADD KEY `Job_Post_Id` (`Job_Post_Id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`Experience_Id`),
  ADD KEY `Job_Seeker_Id` (`Job_Seeker_Id`),
  ADD KEY `Job_Post_Id` (`Job_Post_Id`);

--
-- Indexes for table `hobby`
--
ALTER TABLE `hobby`
  ADD PRIMARY KEY (`Hobby_Id`),
  ADD KEY `Job_Seeker_Id` (`Job_Seeker_Id`);

--
-- Indexes for table `job_mst`
--
ALTER TABLE `job_mst`
  ADD PRIMARY KEY (`Job_Post_Id`),
  ADD KEY `Company_Id` (`Company_Id`),
  ADD KEY `Category_Id` (`Category_Id`),
  ADD KEY `City_Id` (`City_Id`);

--
-- Indexes for table `language_known`
--
ALTER TABLE `language_known`
  ADD PRIMARY KEY (`Language_Known_Id`),
  ADD KEY `Job_Seeker_Id` (`Job_Seeker_Id`);

--
-- Indexes for table `payment_mst`
--
ALTER TABLE `payment_mst`
  ADD PRIMARY KEY (`Payment_Id`),
  ADD KEY `Company_Id` (`Company_Id`);

--
-- Indexes for table `seek_mst`
--
ALTER TABLE `seek_mst`
  ADD PRIMARY KEY (`Job_Seeker_Id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`Skill_Id`),
  ADD KEY `Job_Seeker_Id` (`Job_Seeker_Id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`State_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_mst`
--
ALTER TABLE `apply_mst`
  MODIFY `Job_Application_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category_mst`
--
ALTER TABLE `category_mst`
  MODIFY `Category_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat_mst`
--
ALTER TABLE `chat_mst`
  MODIFY `Chat_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `City_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `company_mst`
--
ALTER TABLE `company_mst`
  MODIFY `Company_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `educational_qualification`
--
ALTER TABLE `educational_qualification`
  MODIFY `Educational_Qualification_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `Experience_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hobby`
--
ALTER TABLE `hobby`
  MODIFY `Hobby_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_mst`
--
ALTER TABLE `job_mst`
  MODIFY `Job_Post_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `language_known`
--
ALTER TABLE `language_known`
  MODIFY `Language_Known_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_mst`
--
ALTER TABLE `payment_mst`
  MODIFY `Payment_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seek_mst`
--
ALTER TABLE `seek_mst`
  MODIFY `Job_Seeker_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `Skill_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `State_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply_mst`
--
ALTER TABLE `apply_mst`
  ADD CONSTRAINT `apply_mst_ibfk_1` FOREIGN KEY (`Company_Id`) REFERENCES `company_mst` (`Company_Id`);

--
-- Constraints for table `chat_mst`
--
ALTER TABLE `chat_mst`
  ADD CONSTRAINT `chat_mst_ibfk_1` FOREIGN KEY (`Company_Id`) REFERENCES `company_mst` (`Company_Id`),
  ADD CONSTRAINT `chat_mst_ibfk_2` FOREIGN KEY (`Job_Seeker_Id`) REFERENCES `seek_mst` (`Job_Seeker_Id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`State_Id`) REFERENCES `state` (`State_Id`);

--
-- Constraints for table `educational_qualification`
--
ALTER TABLE `educational_qualification`
  ADD CONSTRAINT `educational_qualification_ibfk_1` FOREIGN KEY (`Job_Seeker_Id`) REFERENCES `seek_mst` (`Job_Seeker_Id`),
  ADD CONSTRAINT `educational_qualification_ibfk_2` FOREIGN KEY (`Job_Post_Id`) REFERENCES `job_mst` (`Job_Post_Id`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`Job_Seeker_Id`) REFERENCES `seek_mst` (`Job_Seeker_Id`),
  ADD CONSTRAINT `experience_ibfk_2` FOREIGN KEY (`Job_Post_Id`) REFERENCES `job_mst` (`Job_Post_Id`);

--
-- Constraints for table `hobby`
--
ALTER TABLE `hobby`
  ADD CONSTRAINT `hobby_ibfk_1` FOREIGN KEY (`Job_Seeker_Id`) REFERENCES `seek_mst` (`Job_Seeker_Id`);

--
-- Constraints for table `job_mst`
--
ALTER TABLE `job_mst`
  ADD CONSTRAINT `job_mst_ibfk_1` FOREIGN KEY (`Company_Id`) REFERENCES `company_mst` (`Company_Id`),
  ADD CONSTRAINT `job_mst_ibfk_2` FOREIGN KEY (`Category_Id`) REFERENCES `category_mst` (`Category_Id`),
  ADD CONSTRAINT `job_mst_ibfk_3` FOREIGN KEY (`City_Id`) REFERENCES `city` (`City_Id`);

--
-- Constraints for table `language_known`
--
ALTER TABLE `language_known`
  ADD CONSTRAINT `language_known_ibfk_1` FOREIGN KEY (`Job_Seeker_Id`) REFERENCES `seek_mst` (`Job_Seeker_Id`);

--
-- Constraints for table `payment_mst`
--
ALTER TABLE `payment_mst`
  ADD CONSTRAINT `payment_mst_ibfk_1` FOREIGN KEY (`Company_Id`) REFERENCES `company_mst` (`Company_Id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`Job_Seeker_Id`) REFERENCES `seek_mst` (`Job_Seeker_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
