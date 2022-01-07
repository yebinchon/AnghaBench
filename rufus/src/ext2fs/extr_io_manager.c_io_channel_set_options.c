
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* io_channel ;
typedef scalar_t__ errcode_t ;
struct TYPE_7__ {TYPE_1__* manager; } ;
struct TYPE_6__ {scalar_t__ (* set_option ) (TYPE_2__*,char*,char*) ;} ;


 int EXT2_CHECK_MAGIC (TYPE_2__*,int ) ;
 scalar_t__ EXT2_ET_INVALID_ARGUMENT ;
 int EXT2_ET_MAGIC_IO_CHANNEL ;
 scalar_t__ EXT2_ET_NO_MEMORY ;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ stub1 (TYPE_2__*,char*,char*) ;

errcode_t io_channel_set_options(io_channel channel, const char *opts)
{
 errcode_t retval = 0;
 char *next, *ptr, *options, *arg;

 EXT2_CHECK_MAGIC(channel, EXT2_ET_MAGIC_IO_CHANNEL);

 if (!opts)
  return 0;

 if (!channel->manager->set_option)
  return EXT2_ET_INVALID_ARGUMENT;

 options = malloc(strlen(opts)+1);
 if (!options)
  return EXT2_ET_NO_MEMORY;
 strcpy(options, opts);
 ptr = options;

 while (ptr && *ptr) {
  next = strchr(ptr, '&');
  if (next)
   *next++ = 0;

  arg = strchr(ptr, '=');
  if (arg)
   *arg++ = 0;

  retval = (channel->manager->set_option)(channel, ptr, arg);
  if (retval)
   break;
  ptr = next;
 }
 free(options);
 return retval;
}
