
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_25__ {TYPE_5__* p; } ;
typedef TYPE_6__ vout_thread_t ;
struct TYPE_26__ {char* psz_string; int i_int; } ;
typedef TYPE_7__ vlc_value_t ;
struct TYPE_22__ {char* psz; } ;
struct TYPE_20__ {scalar_t__* psz; int * i; } ;
struct TYPE_27__ {unsigned int list_count; TYPE_3__ orig; int * list_text; TYPE_1__ list; } ;
typedef TYPE_8__ module_config_t ;
struct TYPE_23__ {int is_interlaced; } ;
struct TYPE_21__ {int has_deint; } ;
struct TYPE_24__ {TYPE_4__ interlacing; TYPE_2__ filter; } ;


 int DeinterlaceCallback ;
 int DeinterlaceIsModeValid (scalar_t__) ;
 int VLC_VAR_ADDCHOICE ;
 int VLC_VAR_BOOL ;
 int VLC_VAR_CLEARCHOICES ;
 int VLC_VAR_DOINHERIT ;
 int VLC_VAR_INTEGER ;
 int VLC_VAR_SETTEXT ;
 int VLC_VAR_SETVALUE ;
 int VLC_VAR_STRING ;
 TYPE_7__ _ (char*) ;
 TYPE_8__* config_FindConfig (char*) ;
 int free (char*) ;
 scalar_t__ likely (int ) ;
 int msg_Dbg (TYPE_6__*,char*) ;
 int var_AddCallback (TYPE_6__*,char*,int ,int *) ;
 int var_Change (TYPE_6__*,char*,int ,...) ;
 int var_Create (TYPE_6__*,char*,int) ;
 char* var_CreateGetNonEmptyString (TYPE_6__*,char*) ;
 int var_GetInteger (TYPE_6__*,char*) ;
 char* var_GetNonEmptyString (TYPE_6__*,char*) ;
 int var_SetInteger (TYPE_6__*,char*,int) ;
 int vlc_gettext (int ) ;

void vout_InitInterlacingSupport(vout_thread_t *vout)
{
    vlc_value_t val;

    msg_Dbg(vout, "Deinterlacing available");

    vout->p->filter.has_deint = 0;



    var_Create(vout, "deinterlace", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT );
    int deinterlace_state = var_GetInteger(vout, "deinterlace");

    var_Change(vout, "deinterlace", VLC_VAR_SETTEXT, _("Deinterlace"));

    const module_config_t *optd = config_FindConfig("deinterlace");
    var_Change(vout, "deinterlace", VLC_VAR_CLEARCHOICES);
    if (likely(optd != ((void*)0)))
        for (unsigned i = 0; i < optd->list_count; i++) {
            val.i_int = optd->list.i[i];
            var_Change(vout, "deinterlace", VLC_VAR_ADDCHOICE, val,
                       vlc_gettext(optd->list_text[i]));
        }
    var_AddCallback(vout, "deinterlace", DeinterlaceCallback, ((void*)0));

    var_Create(vout, "deinterlace-mode", VLC_VAR_STRING | VLC_VAR_DOINHERIT );
    char *deinterlace_mode = var_GetNonEmptyString(vout, "deinterlace-mode");

    var_Change(vout, "deinterlace-mode", VLC_VAR_SETTEXT,
               _("Deinterlace mode"));

    const module_config_t *optm = config_FindConfig("deinterlace-mode");
    var_Change(vout, "deinterlace-mode", VLC_VAR_CLEARCHOICES);
    if (likely(optm != ((void*)0)))
        for (unsigned i = 0; i < optm->list_count; i++) {
             if (!DeinterlaceIsModeValid(optm->list.psz[i]))
                 continue;

             val.psz_string = (char *)optm->list.psz[i];
             var_Change(vout, "deinterlace-mode", VLC_VAR_ADDCHOICE,
                        val, vlc_gettext(optm->list_text[i]));
         }
    var_AddCallback(vout, "deinterlace-mode", DeinterlaceCallback, ((void*)0));

    var_Create(vout, "deinterlace-needed", VLC_VAR_BOOL);
    var_AddCallback(vout, "deinterlace-needed", DeinterlaceCallback, ((void*)0));


    char *filter_mode = ((void*)0);
    if (vout->p->filter.has_deint)
        filter_mode = var_CreateGetNonEmptyString(vout, "sout-deinterlace-mode");
    if (filter_mode) {
        deinterlace_state = 1;
        free(deinterlace_mode);
        deinterlace_mode = filter_mode;
    }


    val.psz_string = deinterlace_mode ? deinterlace_mode : optm->orig.psz;
    var_Change(vout, "deinterlace-mode", VLC_VAR_SETVALUE, val);

    var_SetInteger(vout, "deinterlace", deinterlace_state);
    free(deinterlace_mode);

    vout->p->interlacing.is_interlaced = 0;
}
