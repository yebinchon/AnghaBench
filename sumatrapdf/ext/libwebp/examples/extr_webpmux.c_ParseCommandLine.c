
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int W_CHAR ;
struct TYPE_6__ {int argc_; char** argv_; } ;
struct TYPE_8__ {scalar_t__ action_type_; scalar_t__ type_; char* output_; char* input_; scalar_t__ arg_count_; TYPE_2__* args_; TYPE_1__ cmd_args_; } ;
struct TYPE_7__ {char* params_; char* filename_; int subtype_; } ;
typedef TYPE_2__ FeatureArg ;
typedef TYPE_3__ Config ;


 scalar_t__ ACTION_DURATION ;
 scalar_t__ ACTION_GET ;
 scalar_t__ ACTION_INFO ;
 scalar_t__ ACTION_IS_NIL ;
 scalar_t__ ACTION_SET ;
 scalar_t__ ACTION_STRIP ;
 int CHECK_NUM_ARGS_AT_LEAST (int,int ) ;
 int CHECK_NUM_ARGS_EXACTLY (int,int ) ;
 int DeleteConfig (TYPE_3__*) ;
 int ERROR_GOTO1 (char*,int ) ;
 int ERROR_GOTO2 (char*,char const* const,int ) ;
 int ErrParse ;
 scalar_t__ FEATURETYPE_IS_NIL ;
 scalar_t__ FEATURE_ANMF ;
 scalar_t__ FEATURE_DURATION ;
 scalar_t__ FEATURE_EXIF ;
 scalar_t__ FEATURE_ICCP ;
 scalar_t__ FEATURE_XMP ;
 int LOCAL_FREE (int ** const) ;
 scalar_t__ NIL_ACTION ;
 int PrintHelp () ;
 int SUBTYPE_ANMF ;
 int SUBTYPE_BGCOLOR ;
 int SUBTYPE_LOOP ;
 int WebPGetMuxVersion () ;
 int exit (int ) ;
 int printf (char*,int const,int const,int const) ;
 int strcmp (char const* const,char*) ;

__attribute__((used)) static int ParseCommandLine(Config* config, const W_CHAR** const unicode_argv) {
  int i = 0;
  int feature_arg_index = 0;
  int ok = 1;
  int argc = config->cmd_args_.argc_;
  const char* const* argv = config->cmd_args_.argv_;

  const char* const* wargv =
      (unicode_argv != ((void*)0)) ? (const char**)(unicode_argv + 1) : argv;

  while (i < argc) {
    FeatureArg* const arg = &config->args_[feature_arg_index];
    if (argv[i][0] == '-') {
      if (!strcmp(argv[i], "-set")) {
        if (ACTION_IS_NIL) {
          config->action_type_ = ACTION_SET;
        } else {
          ERROR_GOTO1("ERROR: Multiple actions specified.\n", ErrParse);
        }
        ++i;
      } else if (!strcmp(argv[i], "-duration")) {
        CHECK_NUM_ARGS_AT_LEAST(2, ErrParse);
        if (ACTION_IS_NIL || config->action_type_ == ACTION_DURATION) {
          config->action_type_ = ACTION_DURATION;
        } else {
          ERROR_GOTO1("ERROR: Multiple actions specified.\n", ErrParse);
        }
        if (FEATURETYPE_IS_NIL || config->type_ == FEATURE_DURATION) {
          config->type_ = FEATURE_DURATION;
        } else {
          ERROR_GOTO1("ERROR: Multiple features specified.\n", ErrParse);
        }
        arg->params_ = argv[i + 1];
        ++feature_arg_index;
        i += 2;
      } else if (!strcmp(argv[i], "-get")) {
        if (ACTION_IS_NIL) {
          config->action_type_ = ACTION_GET;
        } else {
          ERROR_GOTO1("ERROR: Multiple actions specified.\n", ErrParse);
        }
        ++i;
      } else if (!strcmp(argv[i], "-strip")) {
        if (ACTION_IS_NIL) {
          config->action_type_ = ACTION_STRIP;
          config->arg_count_ = 0;
        } else {
          ERROR_GOTO1("ERROR: Multiple actions specified.\n", ErrParse);
        }
        ++i;
      } else if (!strcmp(argv[i], "-frame")) {
        CHECK_NUM_ARGS_AT_LEAST(3, ErrParse);
        if (ACTION_IS_NIL || config->action_type_ == ACTION_SET) {
          config->action_type_ = ACTION_SET;
        } else {
          ERROR_GOTO1("ERROR: Multiple actions specified.\n", ErrParse);
        }
        if (FEATURETYPE_IS_NIL || config->type_ == FEATURE_ANMF) {
          config->type_ = FEATURE_ANMF;
        } else {
          ERROR_GOTO1("ERROR: Multiple features specified.\n", ErrParse);
        }
        arg->subtype_ = SUBTYPE_ANMF;
        arg->filename_ = argv[i + 1];
        arg->params_ = argv[i + 2];
        ++feature_arg_index;
        i += 3;
      } else if (!strcmp(argv[i], "-loop") || !strcmp(argv[i], "-bgcolor")) {
        CHECK_NUM_ARGS_AT_LEAST(2, ErrParse);
        if (ACTION_IS_NIL || config->action_type_ == ACTION_SET) {
          config->action_type_ = ACTION_SET;
        } else {
          ERROR_GOTO1("ERROR: Multiple actions specified.\n", ErrParse);
        }
        if (FEATURETYPE_IS_NIL || config->type_ == FEATURE_ANMF) {
          config->type_ = FEATURE_ANMF;
        } else {
          ERROR_GOTO1("ERROR: Multiple features specified.\n", ErrParse);
        }
        arg->subtype_ =
            !strcmp(argv[i], "-loop") ? SUBTYPE_LOOP : SUBTYPE_BGCOLOR;
        arg->params_ = argv[i + 1];
        ++feature_arg_index;
        i += 2;
      } else if (!strcmp(argv[i], "-o")) {
        CHECK_NUM_ARGS_AT_LEAST(2, ErrParse);
        config->output_ = wargv[i + 1];
        i += 2;
      } else if (!strcmp(argv[i], "-info")) {
        CHECK_NUM_ARGS_EXACTLY(2, ErrParse);
        if (config->action_type_ != NIL_ACTION) {
          ERROR_GOTO1("ERROR: Multiple actions specified.\n", ErrParse);
        } else {
          config->action_type_ = ACTION_INFO;
          config->arg_count_ = 0;
          config->input_ = wargv[i + 1];
        }
        i += 2;
      } else if (!strcmp(argv[i], "-h") || !strcmp(argv[i], "-help")) {
        PrintHelp();
        DeleteConfig(config);
        LOCAL_FREE((W_CHAR** const)unicode_argv);
        exit(0);
      } else if (!strcmp(argv[i], "-version")) {
        const int version = WebPGetMuxVersion();
        printf("%d.%d.%d\n",
               (version >> 16) & 0xff, (version >> 8) & 0xff, version & 0xff);
        DeleteConfig(config);
        LOCAL_FREE((W_CHAR** const)unicode_argv);
        exit(0);
      } else if (!strcmp(argv[i], "--")) {
        if (i < argc - 1) {
          ++i;
          if (config->input_ == ((void*)0)) {
            config->input_ = wargv[i];
          } else {
            ERROR_GOTO2("ERROR at '%s': Multiple input files specified.\n",
                        argv[i], ErrParse);
          }
        }
        break;
      } else {
        ERROR_GOTO2("ERROR: Unknown option: '%s'.\n", argv[i], ErrParse);
      }
    } else {
      if (ACTION_IS_NIL) {
        ERROR_GOTO1("ERROR: Action must be specified before other arguments.\n",
                    ErrParse);
      }
      if (!strcmp(argv[i], "icc") || !strcmp(argv[i], "exif") ||
          !strcmp(argv[i], "xmp")) {
        if (FEATURETYPE_IS_NIL) {
          config->type_ = (!strcmp(argv[i], "icc")) ? FEATURE_ICCP :
              (!strcmp(argv[i], "exif")) ? FEATURE_EXIF : FEATURE_XMP;
        } else {
          ERROR_GOTO1("ERROR: Multiple features specified.\n", ErrParse);
        }
        if (config->action_type_ == ACTION_SET) {
          CHECK_NUM_ARGS_AT_LEAST(2, ErrParse);
          arg->filename_ = wargv[i + 1];
          ++feature_arg_index;
          i += 2;
        } else {
          ++i;
        }
      } else if (!strcmp(argv[i], "frame") &&
                 (config->action_type_ == ACTION_GET)) {
        CHECK_NUM_ARGS_AT_LEAST(2, ErrParse);
        config->type_ = FEATURE_ANMF;
        arg->params_ = argv[i + 1];
        ++feature_arg_index;
        i += 2;
      } else {
        if (config->input_ == ((void*)0)) {
          config->input_ = wargv[i];
        } else {
          ERROR_GOTO2("ERROR at '%s': Multiple input files specified.\n",
                      argv[i], ErrParse);
        }
        ++i;
      }
    }
  }
 ErrParse:
  return ok;
}
