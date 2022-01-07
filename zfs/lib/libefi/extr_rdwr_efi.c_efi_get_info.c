
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dk_cinfo {int dki_partition; void* dki_ctype; scalar_t__ dki_cname; scalar_t__ dki_dname; } ;


 void* DKC_DIRECT ;
 void* DKC_MD ;
 void* DKC_PCMCIA_MEM ;
 void* DKC_SCSI_CCS ;
 void* DKC_UNKNOWN ;
 void* DKC_VBD ;


 int PATH_MAX ;
 int VT_EINVAL ;
 int VT_EIO ;
 int VT_ERROR ;
 char* calloc (int,int ) ;
 scalar_t__ efi_debug ;
 int errno ;
 int fprintf (int ,char*,int) ;
 int free (char*) ;
 int memset (struct dk_cinfo*,int ,int) ;
 char* realpath (char*,int *) ;
 int sprintf (char*,char*,int) ;
 int sscanf (char*,char*,scalar_t__,...) ;
 int stderr ;
 int strcpy (scalar_t__,char*) ;
 size_t strlen (scalar_t__) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
efi_get_info(int fd, struct dk_cinfo *dki_info)
{
 char *path;
 char *dev_path;
 int rval = 0;

 memset(dki_info, 0, sizeof (*dki_info));

 path = calloc(1, PATH_MAX);
 if (path == ((void*)0))
  goto error;
 (void) sprintf(path, "/proc/self/fd/%d", fd);
 dev_path = realpath(path, ((void*)0));
 free(path);

 if (dev_path == ((void*)0))
  goto error;

 if ((strncmp(dev_path, "/dev/sd", 7) == 0)) {
  strcpy(dki_info->dki_cname, "sd");
  dki_info->dki_ctype = DKC_SCSI_CCS;
  rval = sscanf(dev_path, "/dev/%[a-zA-Z]%hu",
      dki_info->dki_dname,
      &dki_info->dki_partition);
 } else if ((strncmp(dev_path, "/dev/hd", 7) == 0)) {
  strcpy(dki_info->dki_cname, "hd");
  dki_info->dki_ctype = DKC_DIRECT;
  rval = sscanf(dev_path, "/dev/%[a-zA-Z]%hu",
      dki_info->dki_dname,
      &dki_info->dki_partition);
 } else if ((strncmp(dev_path, "/dev/md", 7) == 0)) {
  strcpy(dki_info->dki_cname, "pseudo");
  dki_info->dki_ctype = DKC_MD;
  strcpy(dki_info->dki_dname, "md");
  rval = sscanf(dev_path, "/dev/md%[0-9]p%hu",
      dki_info->dki_dname + 2,
      &dki_info->dki_partition);
 } else if ((strncmp(dev_path, "/dev/vd", 7) == 0)) {
  strcpy(dki_info->dki_cname, "vd");
  dki_info->dki_ctype = DKC_MD;
  rval = sscanf(dev_path, "/dev/%[a-zA-Z]%hu",
      dki_info->dki_dname,
      &dki_info->dki_partition);
 } else if ((strncmp(dev_path, "/dev/xvd", 8) == 0)) {
  strcpy(dki_info->dki_cname, "xvd");
  dki_info->dki_ctype = DKC_MD;
  rval = sscanf(dev_path, "/dev/%[a-zA-Z]%hu",
      dki_info->dki_dname,
      &dki_info->dki_partition);
 } else if ((strncmp(dev_path, "/dev/zd", 7) == 0)) {
  strcpy(dki_info->dki_cname, "zd");
  dki_info->dki_ctype = DKC_MD;
  strcpy(dki_info->dki_dname, "zd");
  rval = sscanf(dev_path, "/dev/zd%[0-9]p%hu",
      dki_info->dki_dname + 2,
      &dki_info->dki_partition);
 } else if ((strncmp(dev_path, "/dev/dm-", 8) == 0)) {
  strcpy(dki_info->dki_cname, "pseudo");
  dki_info->dki_ctype = DKC_VBD;
  strcpy(dki_info->dki_dname, "dm-");
  rval = sscanf(dev_path, "/dev/dm-%[0-9]p%hu",
      dki_info->dki_dname + 3,
      &dki_info->dki_partition);
 } else if ((strncmp(dev_path, "/dev/ram", 8) == 0)) {
  strcpy(dki_info->dki_cname, "pseudo");
  dki_info->dki_ctype = DKC_PCMCIA_MEM;
  strcpy(dki_info->dki_dname, "ram");
  rval = sscanf(dev_path, "/dev/ram%[0-9]p%hu",
      dki_info->dki_dname + 3,
      &dki_info->dki_partition);
 } else if ((strncmp(dev_path, "/dev/loop", 9) == 0)) {
  strcpy(dki_info->dki_cname, "pseudo");
  dki_info->dki_ctype = DKC_VBD;
  strcpy(dki_info->dki_dname, "loop");
  rval = sscanf(dev_path, "/dev/loop%[0-9]p%hu",
      dki_info->dki_dname + 4,
      &dki_info->dki_partition);
 } else if ((strncmp(dev_path, "/dev/nvme", 9) == 0)) {
  strcpy(dki_info->dki_cname, "nvme");
  dki_info->dki_ctype = DKC_SCSI_CCS;
  strcpy(dki_info->dki_dname, "nvme");
  (void) sscanf(dev_path, "/dev/nvme%[0-9]",
      dki_info->dki_dname + 4);
  size_t controller_length = strlen(
      dki_info->dki_dname);
  strcpy(dki_info->dki_dname + controller_length,
      "n");
  rval = sscanf(dev_path,
      "/dev/nvme%*[0-9]n%[0-9]p%hu",
      dki_info->dki_dname + controller_length + 1,
      &dki_info->dki_partition);
 } else {
  strcpy(dki_info->dki_dname, "unknown");
  strcpy(dki_info->dki_cname, "unknown");
  dki_info->dki_ctype = DKC_UNKNOWN;
 }

 switch (rval) {
 case 0:
  errno = 129;
  goto error;
 case 1:
  dki_info->dki_partition = 0;
 }

 free(dev_path);

 return (0);
error:
 if (efi_debug)
  (void) fprintf(stderr, "DKIOCINFO errno 0x%x\n", errno);

 switch (errno) {
 case 128:
  return (VT_EIO);
 case 129:
  return (VT_EINVAL);
 default:
  return (VT_ERROR);
 }
}
