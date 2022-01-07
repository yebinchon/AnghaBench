
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_2__ {scalar_t__ width; scalar_t__ height; } ;
struct pci_fbuf_softc {int rfb_wait; char* rfb_host; int vga_enabled; int vga_full; char* rfb_password; TYPE_1__ memregs; void* rfb_port; } ;


 scalar_t__ COLS_MAX ;
 int DEBUG_VERBOSE ;
 int DPRINTF (int ,char*) ;
 scalar_t__ ROWS_MAX ;
 void* atoi (char*) ;
 int pci_fbuf_usage (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 char* strsep (char**,char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int
pci_fbuf_parse_opts(struct pci_fbuf_softc *sc, char *opts)
{
 char *uopts, *xopts, *config;
 char *tmpstr;
 int ret;

 ret = 0;
 uopts = strdup(opts);
 for (xopts = strtok(uopts, ",");
      xopts != ((void*)0);
      xopts = strtok(((void*)0), ",")) {
  if (strcmp(xopts, "wait") == 0) {
   sc->rfb_wait = 1;
   continue;
  }

  if ((config = strchr(xopts, '=')) == ((void*)0)) {
   pci_fbuf_usage(xopts);
   ret = -1;
   goto done;
  }

  *config++ = '\0';

  DPRINTF(DEBUG_VERBOSE, ("pci_fbuf option %s = %s\r\n",
     xopts, config));

  if (!strcmp(xopts, "tcp") || !strcmp(xopts, "rfb")) {

          tmpstr = strsep(&config, ":");
   if (!config)
    sc->rfb_port = atoi(tmpstr);
   else {
    sc->rfb_port = atoi(config);
    sc->rfb_host = tmpstr;
   }
         } else if (!strcmp(xopts, "vga")) {
   if (!strcmp(config, "off")) {
    sc->vga_enabled = 0;
   } else if (!strcmp(config, "io")) {
    sc->vga_enabled = 1;
    sc->vga_full = 0;
   } else if (!strcmp(config, "on")) {
    sc->vga_enabled = 1;
    sc->vga_full = 1;
   } else {
    pci_fbuf_usage(opts);
    ret = -1;
    goto done;
   }
         } else if (!strcmp(xopts, "w")) {
          sc->memregs.width = (uint16_t)atoi(config);
   if (sc->memregs.width > COLS_MAX) {
    pci_fbuf_usage(xopts);
    ret = -1;
    goto done;
   } else if (sc->memregs.width == 0)
    sc->memregs.width = 1920;
  } else if (!strcmp(xopts, "h")) {
   sc->memregs.height = (uint16_t)atoi(config);
   if (sc->memregs.height > ROWS_MAX) {
    pci_fbuf_usage(xopts);
    ret = -1;
    goto done;
   } else if (sc->memregs.height == 0)
    sc->memregs.height = 1080;
  } else if (!strcmp(xopts, "password")) {
   sc->rfb_password = config;
  } else {
   pci_fbuf_usage(xopts);
   ret = -1;
   goto done;
  }
 }

done:
 return (ret);
}
