
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_run_args {int dummy; } ;


 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 int stderr ;
 int vlc_demux_process_url (struct vlc_run_args const*,char*) ;
 char* vlc_path2uri (char const*,int *) ;

int vlc_demux_process_path(const struct vlc_run_args *args, const char *path)
{
    char *url = vlc_path2uri(path, ((void*)0));
    if (url == ((void*)0))
    {
        fprintf(stderr, "Error: cannot convert path to URL: %s\n", path);
        return -1;
    }

    int ret = vlc_demux_process_url(args, url);
    free(url);
    return ret;
}
