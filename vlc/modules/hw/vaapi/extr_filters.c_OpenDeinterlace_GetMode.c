
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deint_mode {char* name; } ;
typedef int filter_t ;
typedef int VAProcFilterCapDeinterlacing ;


 unsigned int ARRAY_SIZE (struct deint_mode*) ;
 scalar_t__ OpenDeinterlace_IsValidType (int *,int const*,unsigned int,struct deint_mode*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 struct deint_mode* deint_modes ;
 int msg_Dbg (int *,char*,char*) ;
 int msg_Err (int *,char*) ;
 int msg_Info (int *,char*,char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static inline int
OpenDeinterlace_GetMode(filter_t * filter, char const * deint_mode,
                        struct deint_mode * p_deint_mode,
                        VAProcFilterCapDeinterlacing const caps[],
                        unsigned int num_caps)
{
    bool fallback = 0;
    if (deint_mode && strcmp(deint_mode, "auto"))
    {
        for (unsigned int i = 0; i < ARRAY_SIZE(deint_modes); ++i)
        {
            if (!strcmp(deint_mode, deint_modes[i].name))
            {
                if (OpenDeinterlace_IsValidType(filter, caps, num_caps,
                                                deint_modes + i))
                {
                    *p_deint_mode = deint_modes[i];
                    msg_Dbg(filter, "using %s deinterlace method",
                            deint_modes[i].name);
                    return VLC_SUCCESS;
                }
            }
        }
        fallback = 1;
    }

    for (unsigned int i = 0; i < ARRAY_SIZE(deint_modes); ++i)
        if (OpenDeinterlace_IsValidType(filter, caps, num_caps,
                                        deint_modes + i))
        {
            *p_deint_mode = deint_modes[i];
            if (fallback)
                msg_Info(filter, "%s algorithm not available, falling back to "
                         "%s algorithm", deint_mode, deint_modes[i].name);
            else
                msg_Dbg(filter, "using %s deinterlace method",
                        deint_modes[i].name);
            return VLC_SUCCESS;
        }





    msg_Err(filter, "no algorithm available");
    return VLC_EGENERIC;
}
