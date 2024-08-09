# Job Finder

![License](https://img.shields.io/badge/license-MIT-green)
![Python](https://img.shields.io/badge/python-3.8%2B-blue)
![Django](https://img.shields.io/badge/django-4.0%2B-brightgreen)

## Overview

Job Finder is a web application built using Django and MySQL that helps users search and apply for job listings. The platform allows job seekers to browse through job postings, filter results based on various criteria, and submit their applications directly through the site.

## Features

- **User Authentication**: Secure user registration, login, and password management.
- **Job Listings**: Search and filter job listings by keyword, location, and job type.
- **Job Application**: Users can submit their applications for jobs directly on the platform.
- **Employer Dashboard**: Employers can post job openings and manage applications.
- **Responsive Design**: Mobile-friendly design for an optimal user experience on all devices.

## Tech Stack

- **Backend**: Django, Python
- **Database**: MySQL
- **Frontend**: HTML, CSS, Bootstrap, JavaScript
- **Deployment**: [Include details if deployed on any platform, e.g., Heroku, AWS]

## Setup Instructions

### Prerequisites

- Python 3.8+
- XAMPP (for MySQL and PHPMyAdmin)
- Django 4.0+

### Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/viseshagarwal/Job-Finder-3.git
    cd Job-Finder-3
    ```

2. **Create a virtual environment:**
    ```bash
    python3 -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```

3. **Install dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

4. **Set up the database using XAMPP:**

   - Start the XAMPP control panel and run **Apache** and **MySQL**.
   - Open PHPMyAdmin by navigating to `http://localhost/phpmyadmin/` in your web browser.
   - Create a new database (e.g., `job_finder`).
   - Import the provided `.sql` file to populate the database:
       1. Click on the database you created.
       2. Select the **Import** tab.
       3. Click **Choose File** and upload the `.sql` file provided in the repository.
       4. Click **Go** to import the data.

5. **Configure the database settings in Django:**

   - Open `settings.py` in your Django project.
   - Update the `DATABASES` configuration to connect to your MySQL database:
     ```python
     DATABASES = {
         'default': {
             'ENGINE': 'django.db.backends.mysql',
             'NAME': 'job_finder',
             'USER': 'root',  # Or your MySQL username
             'PASSWORD': '',  # Or your MySQL password
             'HOST': 'localhost',
             'PORT': '3306',
         }
     }
     ```

6. **Run migrations:**
    ```bash
    python manage.py migrate
    ```

7. **Create a superuser:**
    ```bash
    python manage.py createsuperuser
    ```

8. **Run the development server:**
    ```bash
    python manage.py runserver
    ```
    Access the application at `http://127.0.0.1:8000/`.
