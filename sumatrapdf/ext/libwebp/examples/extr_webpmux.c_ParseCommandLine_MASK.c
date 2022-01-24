#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  W_CHAR ;
struct TYPE_6__ {int argc_; char** argv_; } ;
struct TYPE_8__ {scalar_t__ action_type_; scalar_t__ type_; char* output_; char* input_; scalar_t__ arg_count_; TYPE_2__* args_; TYPE_1__ cmd_args_; } ;
struct TYPE_7__ {char* params_; char* filename_; int /*<<< orphan*/  subtype_; } ;
typedef  TYPE_2__ FeatureArg ;
typedef  TYPE_3__ Config ;

/* Variables and functions */
 scalar_t__ ACTION_DURATION ; 
 scalar_t__ ACTION_GET ; 
 scalar_t__ ACTION_INFO ; 
 scalar_t__ ACTION_IS_NIL ; 
 scalar_t__ ACTION_SET ; 
 scalar_t__ ACTION_STRIP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ErrParse ; 
 scalar_t__ FEATURETYPE_IS_NIL ; 
 scalar_t__ FEATURE_ANMF ; 
 scalar_t__ FEATURE_DURATION ; 
 scalar_t__ FEATURE_EXIF ; 
 scalar_t__ FEATURE_ICCP ; 
 scalar_t__ FEATURE_XMP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ** const) ; 
 scalar_t__ NIL_ACTION ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  SUBTYPE_ANMF ; 
 int /*<<< orphan*/  SUBTYPE_BGCOLOR ; 
 int /*<<< orphan*/  SUBTYPE_LOOP ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC10 (char const* const,char*) ; 

__attribute__((used)) static int FUNC11(Config* config, const W_CHAR** const unicode_argv) {
  int i = 0;
  int feature_arg_index = 0;
  int ok = 1;
  int argc = config->cmd_args_.argc_;
  const char* const* argv = config->cmd_args_.argv_;
  // Unicode file paths will be used if available.
  const char* const* wargv =
      (unicode_argv != NULL) ? (const char**)(unicode_argv + 1) : argv;

  while (i < argc) {
    FeatureArg* const arg = &config->args_[feature_arg_index];
    if (argv[i][0] == '-') {  // One of the action types or output.
      if (!FUNC10(argv[i], "-set")) {
        if (ACTION_IS_NIL) {
          config->action_type_ = ACTION_SET;
        } else {
          FUNC3("ERROR: Multiple actions specified.\n", ErrParse);
        }
        ++i;
      } else if (!FUNC10(argv[i], "-duration")) {
        FUNC0(2, ErrParse);
        if (ACTION_IS_NIL || config->action_type_ == ACTION_DURATION) {
          config->action_type_ = ACTION_DURATION;
        } else {
          FUNC3("ERROR: Multiple actions specified.\n", ErrParse);
        }
        if (FEATURETYPE_IS_NIL || config->type_ == FEATURE_DURATION) {
          config->type_ = FEATURE_DURATION;
        } else {
          FUNC3("ERROR: Multiple features specified.\n", ErrParse);
        }
        arg->params_ = argv[i + 1];
        ++feature_arg_index;
        i += 2;
      } else if (!FUNC10(argv[i], "-get")) {
        if (ACTION_IS_NIL) {
          config->action_type_ = ACTION_GET;
        } else {
          FUNC3("ERROR: Multiple actions specified.\n", ErrParse);
        }
        ++i;
      } else if (!FUNC10(argv[i], "-strip")) {
        if (ACTION_IS_NIL) {
          config->action_type_ = ACTION_STRIP;
          config->arg_count_ = 0;
        } else {
          FUNC3("ERROR: Multiple actions specified.\n", ErrParse);
        }
        ++i;
      } else if (!FUNC10(argv[i], "-frame")) {
        FUNC0(3, ErrParse);
        if (ACTION_IS_NIL || config->action_type_ == ACTION_SET) {
          config->action_type_ = ACTION_SET;
        } else {
          FUNC3("ERROR: Multiple actions specified.\n", ErrParse);
        }
        if (FEATURETYPE_IS_NIL || config->type_ == FEATURE_ANMF) {
          config->type_ = FEATURE_ANMF;
        } else {
          FUNC3("ERROR: Multiple features specified.\n", ErrParse);
        }
        arg->subtype_ = SUBTYPE_ANMF;
        arg->filename_ = argv[i + 1];
        arg->params_ = argv[i + 2];
        ++feature_arg_index;
        i += 3;
      } else if (!FUNC10(argv[i], "-loop") || !FUNC10(argv[i], "-bgcolor")) {
        FUNC0(2, ErrParse);
        if (ACTION_IS_NIL || config->action_type_ == ACTION_SET) {
          config->action_type_ = ACTION_SET;
        } else {
          FUNC3("ERROR: Multiple actions specified.\n", ErrParse);
        }
        if (FEATURETYPE_IS_NIL || config->type_ == FEATURE_ANMF) {
          config->type_ = FEATURE_ANMF;
        } else {
          FUNC3("ERROR: Multiple features specified.\n", ErrParse);
        }
        arg->subtype_ =
            !FUNC10(argv[i], "-loop") ? SUBTYPE_LOOP : SUBTYPE_BGCOLOR;
        arg->params_ = argv[i + 1];
        ++feature_arg_index;
        i += 2;
      } else if (!FUNC10(argv[i], "-o")) {
        FUNC0(2, ErrParse);
        config->output_ = wargv[i + 1];
        i += 2;
      } else if (!FUNC10(argv[i], "-info")) {
        FUNC1(2, ErrParse);
        if (config->action_type_ != NIL_ACTION) {
          FUNC3("ERROR: Multiple actions specified.\n", ErrParse);
        } else {
          config->action_type_ = ACTION_INFO;
          config->arg_count_ = 0;
          config->input_ = wargv[i + 1];
        }
        i += 2;
      } else if (!FUNC10(argv[i], "-h") || !FUNC10(argv[i], "-help")) {
        FUNC6();
        FUNC2(config);
        FUNC5((W_CHAR** const)unicode_argv);
        FUNC8(0);
      } else if (!FUNC10(argv[i], "-version")) {
        const int version = FUNC7();
        FUNC9("%d.%d.%d\n",
               (version >> 16) & 0xff, (version >> 8) & 0xff, version & 0xff);
        FUNC2(config);
        FUNC5((W_CHAR** const)unicode_argv);
        FUNC8(0);
      } else if (!FUNC10(argv[i], "--")) {
        if (i < argc - 1) {
          ++i;
          if (config->input_ == NULL) {
            config->input_ = wargv[i];
          } else {
            FUNC4("ERROR at '%s': Multiple input files specified.\n",
                        argv[i], ErrParse);
          }
        }
        break;
      } else {
        FUNC4("ERROR: Unknown option: '%s'.\n", argv[i], ErrParse);
      }
    } else {  // One of the feature types or input.
      if (ACTION_IS_NIL) {
        FUNC3("ERROR: Action must be specified before other arguments.\n",
                    ErrParse);
      }
      if (!FUNC10(argv[i], "icc") || !FUNC10(argv[i], "exif") ||
          !FUNC10(argv[i], "xmp")) {
        if (FEATURETYPE_IS_NIL) {
          config->type_ = (!FUNC10(argv[i], "icc")) ? FEATURE_ICCP :
              (!FUNC10(argv[i], "exif")) ? FEATURE_EXIF : FEATURE_XMP;
        } else {
          FUNC3("ERROR: Multiple features specified.\n", ErrParse);
        }
        if (config->action_type_ == ACTION_SET) {
          FUNC0(2, ErrParse);
          arg->filename_ = wargv[i + 1];
          ++feature_arg_index;
          i += 2;
        } else {
          ++i;
        }
      } else if (!FUNC10(argv[i], "frame") &&
                 (config->action_type_ == ACTION_GET)) {
        FUNC0(2, ErrParse);
        config->type_ = FEATURE_ANMF;
        arg->params_ = argv[i + 1];
        ++feature_arg_index;
        i += 2;
      } else {  // Assume input file.
        if (config->input_ == NULL) {
          config->input_ = wargv[i];
        } else {
          FUNC4("ERROR at '%s': Multiple input files specified.\n",
                      argv[i], ErrParse);
        }
        ++i;
      }
    }
  }
 ErrParse:
  return ok;
}