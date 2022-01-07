
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_DIRECTORY_MODE ;
 int CONFIG_FILE ;
 int DEFAULT_CONFIG_CONTENTS ;
 int EXIT_FAILURE ;
 int O_CREAT ;
 int O_RDWR ;
 int R_OK ;
 scalar_t__ access (char*,int ) ;
 int check_type_sizes () ;
 int close (int) ;
 char* config_directory ;
 char* config_filename ;
 int disable_output ;
 int exit (int ) ;
 char* get_config_directory () ;
 char* make_full_path (char*) ;
 int mkdir (char*,int ) ;
 int open (char*,int,int) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 scalar_t__ str_empty (char*) ;
 int strlen (int ) ;
 int tasprintf (char**,char*,char*,int ) ;
 int tfree_str (char*) ;
 scalar_t__ write (int,int ,int ) ;

void running_for_first_time (void) {
  check_type_sizes ();
  if (!str_empty (config_filename)) {
    return;
  }
  if (str_empty (config_directory)) {
    config_directory = get_config_directory ();
  }
  tasprintf (&config_filename, "%s/%s", config_directory, CONFIG_FILE);
  config_filename = make_full_path (config_filename);
  if (!disable_output) {
    printf ("I: config dir=[%s]\n", config_directory);
  }


  int config_file_fd;



  if (!mkdir (config_directory, CONFIG_DIRECTORY_MODE)) {
    if (!disable_output) {
      printf ("[%s] created\n", config_directory);
    }
  }

  tfree_str (config_directory);
  config_directory = ((void*)0);

  if (access (config_filename, R_OK) != 0) {

    config_file_fd = open (config_filename, O_CREAT | O_RDWR, 0600);
    if (config_file_fd == -1) {
      perror ("open[config_file]");
      printf ("I: config_file=[%s]\n", config_filename);
      exit (EXIT_FAILURE);
    }
    if (write (config_file_fd, DEFAULT_CONFIG_CONTENTS, strlen (DEFAULT_CONFIG_CONTENTS)) <= 0) {
      perror ("write[config_file]");
      exit (EXIT_FAILURE);
    }
    close (config_file_fd);
  }
}
