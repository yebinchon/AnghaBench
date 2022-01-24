#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {TYPE_5__* p; } ;
typedef  TYPE_6__ vout_thread_t ;
struct TYPE_26__ {char* psz_string; int /*<<< orphan*/  i_int; } ;
typedef  TYPE_7__ vlc_value_t ;
struct TYPE_22__ {char* psz; } ;
struct TYPE_20__ {scalar_t__* psz; int /*<<< orphan*/ * i; } ;
struct TYPE_27__ {unsigned int list_count; TYPE_3__ orig; int /*<<< orphan*/ * list_text; TYPE_1__ list; } ;
typedef  TYPE_8__ module_config_t ;
struct TYPE_23__ {int is_interlaced; } ;
struct TYPE_21__ {int has_deint; } ;
struct TYPE_24__ {TYPE_4__ interlacing; TYPE_2__ filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DeinterlaceCallback ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  VLC_VAR_ADDCHOICE ; 
 int VLC_VAR_BOOL ; 
 int /*<<< orphan*/  VLC_VAR_CLEARCHOICES ; 
 int VLC_VAR_DOINHERIT ; 
 int VLC_VAR_INTEGER ; 
 int /*<<< orphan*/  VLC_VAR_SETTEXT ; 
 int /*<<< orphan*/  VLC_VAR_SETVALUE ; 
 int VLC_VAR_STRING ; 
 TYPE_7__ FUNC1 (char*) ; 
 TYPE_8__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,char*,int) ; 
 char* FUNC9 (TYPE_6__*,char*) ; 
 int FUNC10 (TYPE_6__*,char*) ; 
 char* FUNC11 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(vout_thread_t *vout)
{
    vlc_value_t val;

    FUNC5(vout, "Deinterlacing available");

    vout->p->filter.has_deint = false;

    /* Create the configuration variables */
    /* */
    FUNC8(vout, "deinterlace", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT );
    int deinterlace_state = FUNC10(vout, "deinterlace");

    FUNC7(vout, "deinterlace", VLC_VAR_SETTEXT, FUNC1("Deinterlace"));

    const module_config_t *optd = FUNC2("deinterlace");
    FUNC7(vout, "deinterlace", VLC_VAR_CLEARCHOICES);
    if (FUNC4(optd != NULL))
        for (unsigned i = 0; i < optd->list_count; i++) {
            val.i_int = optd->list.i[i];
            FUNC7(vout, "deinterlace", VLC_VAR_ADDCHOICE, val,
                       FUNC13(optd->list_text[i]));
        }
    FUNC6(vout, "deinterlace", DeinterlaceCallback, NULL);
    /* */
    FUNC8(vout, "deinterlace-mode", VLC_VAR_STRING | VLC_VAR_DOINHERIT );
    char *deinterlace_mode = FUNC11(vout, "deinterlace-mode");

    FUNC7(vout, "deinterlace-mode", VLC_VAR_SETTEXT,
               FUNC1("Deinterlace mode"));

    const module_config_t *optm = FUNC2("deinterlace-mode");
    FUNC7(vout, "deinterlace-mode", VLC_VAR_CLEARCHOICES);
    if (FUNC4(optm != NULL))
        for (unsigned i = 0; i < optm->list_count; i++) {
             if (!FUNC0(optm->list.psz[i]))
                 continue;

             val.psz_string  = (char *)optm->list.psz[i];
             FUNC7(vout, "deinterlace-mode", VLC_VAR_ADDCHOICE,
                        val, FUNC13(optm->list_text[i]));
         }
    FUNC6(vout, "deinterlace-mode", DeinterlaceCallback, NULL);
    /* */
    FUNC8(vout, "deinterlace-needed", VLC_VAR_BOOL);
    FUNC6(vout, "deinterlace-needed", DeinterlaceCallback, NULL);

    /* Override the initial value from filters if present */
    char *filter_mode = NULL;
    if (vout->p->filter.has_deint)
        filter_mode = FUNC9(vout, "sout-deinterlace-mode");
    if (filter_mode) {
        deinterlace_state = 1;
        FUNC3(deinterlace_mode);
        deinterlace_mode = filter_mode;
    }

    /* */
    val.psz_string = deinterlace_mode ? deinterlace_mode : optm->orig.psz;
    FUNC7(vout, "deinterlace-mode", VLC_VAR_SETVALUE, val);

    FUNC12(vout, "deinterlace", deinterlace_state);
    FUNC3(deinterlace_mode);

    vout->p->interlacing.is_interlaced = false;
}