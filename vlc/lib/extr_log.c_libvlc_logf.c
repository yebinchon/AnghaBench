
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_log_t ;
typedef int va_list ;
struct TYPE_3__ {int data; int (* cb ) (int ,int,int const*,char const*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ log; } ;
typedef TYPE_2__ libvlc_instance_t ;


 int LIBVLC_DEBUG ;
 int LIBVLC_ERROR ;
 int LIBVLC_NOTICE ;
 int LIBVLC_WARNING ;




 int stub1 (int ,int,int const*,char const*,int ) ;

__attribute__((used)) static void libvlc_logf (void *data, int level, const vlc_log_t *item,
                         const char *fmt, va_list ap)
{
    libvlc_instance_t *inst = data;

    switch (level)
    {
        case 129: level = LIBVLC_NOTICE; break;
        case 130: level = LIBVLC_ERROR; break;
        case 128: level = LIBVLC_WARNING; break;
        case 131: level = LIBVLC_DEBUG; break;
    }

    inst->log.cb (inst->log.data, level, item, fmt, ap);
}
