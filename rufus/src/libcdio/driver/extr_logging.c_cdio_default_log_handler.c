
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cdio_log_level_t ;







 int EXIT_FAILURE ;
 int abort () ;
 int cdio_assert_not_reached () ;
 int cdio_loglevel_default ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 int stdout ;

extern void
cdio_default_log_handler(cdio_log_level_t level, const char message[])
{
  switch (level)
    {
    case 130:
      if (level >= cdio_loglevel_default) {
        fprintf (stderr, "**ERROR: %s\n", message);
        fflush (stderr);
      }
      exit (EXIT_FAILURE);
      break;
    case 131:
      if (level >= cdio_loglevel_default) {
        fprintf (stdout, "--DEBUG: %s\n", message);
      }
      break;
    case 128:
      if (level >= cdio_loglevel_default) {
        fprintf (stdout, "++ WARN: %s\n", message);
      }
      break;
    case 129:
      if (level >= cdio_loglevel_default) {
        fprintf (stdout, "   INFO: %s\n", message);
      }
      break;
    case 132:
      if (level >= cdio_loglevel_default) {
        fprintf (stderr, "!ASSERT: %s\n", message);
        fflush (stderr);
      }
      abort ();
      break;
    default:
      cdio_assert_not_reached ();
      break;
    }

  fflush (stdout);
}
