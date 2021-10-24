- hosts: webservers
  become: true
  tasks: 
    - name: install apache
      yum: 
        name: httpd 
        state: latest
    - name: Insert Index page
      copy:
        src: index.html 
        dest: /var/www/html/index.html
    - name: Start apache
      service: 
        name: httpd 
        state: stated
