
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct struct_io_channel {int dummy; } ;
typedef TYPE_1__* io_channel ;
typedef scalar_t__ errcode_t ;
struct TYPE_8__ {int refcount; int buffer_block_number; struct TYPE_8__* buffer; int * handle; struct TYPE_8__* name; int read_only; int size; int offset; struct TYPE_8__* private_data; void* buffer_size; int magic; void* block_size; int manager; } ;
typedef TYPE_1__* PNT_PRIVATE_DATA ;
typedef int NT_PRIVATE_DATA ;
typedef int BOOLEAN ;


 int BooleanFlagOn (int,int ) ;
 scalar_t__ EIO ;
 scalar_t__ ENOMEM ;
 scalar_t__ EXT2_ET_BAD_DEVICE_NAME ;
 int EXT2_ET_MAGIC_IO_CHANNEL ;
 int EXT2_ET_MAGIC_NT_IO_CHANNEL ;
 int EXT2_FLAG_RW ;
 void* EXT2_MIN_BLOCK_SIZE ;
 int _CloseDisk (int *) ;
 int _Ext2OpenDevice (char const*,int ,int **,int *,int *,int *,scalar_t__*) ;
 int _UnlockDrive (int *) ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (void*) ;
 int nt_io_manager () ;
 int strcpy (TYPE_1__*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static errcode_t nt_open(const char *name, int flags, io_channel *channel)
{
 io_channel io = ((void*)0);
 PNT_PRIVATE_DATA nt_data = ((void*)0);
 errcode_t errcode = 0;

 if (name == ((void*)0))
  return EXT2_ET_BAD_DEVICE_NAME;


 io = (io_channel) calloc(1, sizeof(struct struct_io_channel));
 if (io == ((void*)0)) {
  errcode = ENOMEM;
  goto out;
 }

 io->name = calloc(strlen(name) + 1, 1);
 if (io->name == ((void*)0)) {
  errcode = ENOMEM;
  goto out;
 }

 nt_data = (PNT_PRIVATE_DATA) calloc(1, sizeof(NT_PRIVATE_DATA));
 if (nt_data == ((void*)0)) {
  errcode = ENOMEM;
  goto out;
 }

 nt_data->buffer = malloc(EXT2_MIN_BLOCK_SIZE);
 if (nt_data->buffer == ((void*)0)) {
  errcode = ENOMEM;
  goto out;
 }


 io->magic = EXT2_ET_MAGIC_IO_CHANNEL;
 io->manager = nt_io_manager();
 strcpy(io->name, name);
 io->block_size = EXT2_MIN_BLOCK_SIZE;
 io->refcount = 1;

 nt_data->magic = EXT2_ET_MAGIC_NT_IO_CHANNEL;
 nt_data->buffer_block_number = 0xffffffff;
 nt_data->buffer_size = EXT2_MIN_BLOCK_SIZE;
 io->private_data = nt_data;


 if (!_Ext2OpenDevice(name, (BOOLEAN)!BooleanFlagOn(flags, EXT2_FLAG_RW), &nt_data->handle,
  &nt_data->offset, &nt_data->size, &nt_data->read_only, &errcode)) {
  if (!errcode)
   errcode = EIO;
  goto out;
 }


 *channel = io;

out:
 if (errcode) {
  if (io != ((void*)0)) {
   free(io->name);
   free(io);
  }

  if (nt_data != ((void*)0)) {
   if (nt_data->handle != ((void*)0)) {
    _UnlockDrive(nt_data->handle);
    _CloseDisk(nt_data->handle);
   }
   free(nt_data->buffer);
   free(nt_data);
  }
 }

 return errcode;
}
