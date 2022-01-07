
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_object_t {int dummy; } ;
typedef enum pl_log_level { ____Placeholder_pl_log_level } pl_log_level ;







 int msg_Dbg (struct vlc_object_t*,char*,char const*) ;
 int msg_Err (struct vlc_object_t*,char*,char const*) ;
 int msg_Info (struct vlc_object_t*,char*,char const*) ;
 int msg_Warn (struct vlc_object_t*,char*,char const*) ;

__attribute__((used)) static void Log(void *priv, enum pl_log_level level, const char *msg)
{
    struct vlc_object_t *obj = priv;

    switch (level) {
    case 130:
    case 131: msg_Err(obj, "%s", msg); break;
    case 128: msg_Warn(obj, "%s", msg); break;
    case 129: msg_Info(obj, "%s", msg); break;
    case 132: msg_Dbg(obj, "%s", msg); break;
    default: break;
    }
}
