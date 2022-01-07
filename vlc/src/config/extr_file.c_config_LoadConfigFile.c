
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int ssize_t ;
struct TYPE_8__ {float f; char* psz; int i; } ;
struct TYPE_7__ {int i; } ;
struct TYPE_6__ {int i; } ;
struct TYPE_9__ {TYPE_3__ value; TYPE_2__ min; TYPE_1__ max; int i_type; scalar_t__ b_removed; scalar_t__ b_unsaveable; } ;
typedef TYPE_4__ module_config_t ;
typedef scalar_t__ locale_t ;
typedef int int64_t ;
typedef int FILE ;


 int CONFIG_CLASS (int ) ;



 int ERANGE ;
 int LC_NUMERIC_MASK ;
 int VLC_EGENERIC ;
 scalar_t__ atof (char const*) ;
 int clearerr (int *) ;
 TYPE_4__* config_FindConfig (char const*) ;
 int * config_OpenConfigFile (int *) ;
 int config_lock ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int freelocale (scalar_t__) ;
 int getline (char**,size_t*,int *) ;
 int * memchr (char*,char,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int msg_Err (int *,char*,int ) ;
 int msg_Warn (int *,char*,char const*,char const*,int ) ;
 scalar_t__ newlocale (int ,char*,int *) ;
 int rewind (int *) ;
 char* strchr (char*,char) ;
 char* strdupnull (char const*) ;
 scalar_t__ uselocale (scalar_t__) ;
 int vlc_rwlock_unlock (int *) ;
 int vlc_rwlock_wrlock (int *) ;
 int vlc_strerror_c (int ) ;
 int vlc_strtoi (char const*) ;

int config_LoadConfigFile( vlc_object_t *p_this )
{
    FILE *file;

    file = config_OpenConfigFile (p_this);
    if (file == ((void*)0))
        return VLC_EGENERIC;


    char bom[3];
    if (fread (bom, 1, 3, file) != 3 || memcmp (bom, "\xEF\xBB\xBF", 3))
        rewind (file);

    char *line = ((void*)0);
    size_t bufsize;
    ssize_t linelen;


    locale_t loc = newlocale (LC_NUMERIC_MASK, "C", ((void*)0));
    locale_t baseloc = uselocale (loc);

    vlc_rwlock_wrlock (&config_lock);
    while ((linelen = getline (&line, &bufsize, file)) != -1)
    {
        line[linelen - 1] = '\0';


        if (memchr ("#[", line[0], 3) != ((void*)0))
            continue;


        const char *psz_option_name = line;

        char *ptr = strchr (line, '=');
        if (ptr == ((void*)0))
            continue;
        *ptr = '\0';

        module_config_t *item = config_FindConfig(psz_option_name);
        if (item == ((void*)0))
            continue;


        if (item->b_unsaveable)
            continue;

        if (item->b_removed)
            continue;

        const char *psz_option_value = ptr + 1;
        switch (CONFIG_CLASS(item->i_type))
        {
            case 130:
            case 128:
            {
                int64_t l;

                errno = 0;
                l = vlc_strtoi (psz_option_value);
                if ((l > item->max.i) || (l < item->min.i))
                    errno = ERANGE;
                if (errno)
                    msg_Warn (p_this, "Integer value (%s) for %s: %s",
                              psz_option_value, psz_option_name,
                              vlc_strerror_c(errno));
                else
                    item->value.i = l;
                break;
            }

            case 129:
                if (!*psz_option_value)
                    break;
                item->value.f = (float)atof (psz_option_value);
                break;

            default:
                free (item->value.psz);
                item->value.psz = strdupnull (psz_option_value);
                break;
        }
    }
    vlc_rwlock_unlock (&config_lock);
    free (line);

    if (ferror (file))
    {
        msg_Err (p_this, "error reading configuration: %s",
                 vlc_strerror_c(errno));
        clearerr (file);
    }
    fclose (file);

    if (loc != (locale_t)0)
    {
        uselocale (baseloc);
        freelocale (loc);
    }
    return 0;
}
