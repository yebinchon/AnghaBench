#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DIRECTORY_MODE ; 
 int /*<<< orphan*/  CONFIG_FILE ; 
 int /*<<< orphan*/  DEFAULT_CONFIG_CONTENTS ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* config_directory ; 
 char* config_filename ; 
 int /*<<< orphan*/  disable_output ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 () ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char**,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC15 (void) {
  FUNC1 ();
  if (!FUNC10 (config_filename)) {
    return; // Do not create custom config file
  }
  if (FUNC10 (config_directory)) {
    config_directory = FUNC4 ();
  }
  FUNC12 (&config_filename, "%s/%s", config_directory, CONFIG_FILE);
  config_filename = FUNC5 (config_filename);
  if (!disable_output) {
    FUNC9 ("I: config dir=[%s]\n", config_directory);
  }
  // printf ("I: config file=[%s]\n", config_filename);

  int config_file_fd;
  //char *config_directory = get_config_directory ();
  //char *downloads_directory = get_downloads_directory ();

  if (!FUNC6 (config_directory, CONFIG_DIRECTORY_MODE)) {
    if (!disable_output) {
      FUNC9 ("[%s] created\n", config_directory);
    }
  }

  FUNC13 (config_directory);
  config_directory = NULL;
  // see if config file is there
  if (FUNC0 (config_filename, R_OK) != 0) {
    // config file missing, so touch it
    config_file_fd = FUNC7 (config_filename, O_CREAT | O_RDWR, 0600);
    if (config_file_fd == -1)  {
      FUNC8 ("open[config_file]");
      FUNC9 ("I: config_file=[%s]\n", config_filename);
      FUNC3 (EXIT_FAILURE);
    }
    if (FUNC14 (config_file_fd, DEFAULT_CONFIG_CONTENTS, FUNC11 (DEFAULT_CONFIG_CONTENTS)) <= 0) {
      FUNC8 ("write[config_file]");
      FUNC3 (EXIT_FAILURE);
    }
    FUNC2 (config_file_fd);
  }
}