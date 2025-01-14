
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int command; char const** txt; int unum_size; int* unum; void** num; int list; int ctrl_id; } ;
typedef TYPE_1__ loc_cmd ;
typedef int line ;
typedef void* int32_t ;
struct TYPE_7__ {char const c; int flag; } ;
typedef int FILE ;
typedef int BOOL ;


 size_t ARRAYSIZE (TYPE_4__*) ;
 int FALSE ;



 int LOC_NEEDS_UPDATE ;
 int SEEK_SET ;
 TYPE_4__* attr_parse ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 size_t fread (char*,int,int,int *) ;
 int free_loc_cmd (TYPE_1__*) ;
 int free_locale_list () ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 TYPE_1__* get_loc_cmd (char,char*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int loc_line_nr ;
 int locale_list ;
 int luprint (char*) ;
 int luprintf (char*,char const,...) ;
 int * open_loc_file (char const*) ;
 int space ;
 size_t strspn (char*,int ) ;
 int uprintf (char*,...) ;

BOOL get_supported_locales(const char* filename)
{
 FILE* fd = ((void*)0);
 BOOL r = FALSE;
 char line[1024];
 size_t i, j, k;
 loc_cmd *lcmd = ((void*)0), *last_lcmd = ((void*)0);
 long end_of_block;
 int version_line_nr = 0;
 uint32_t loc_base_major = -1, loc_base_minor = -1;

 fd = open_loc_file(filename);
 if (fd == ((void*)0))
  goto out;


 i = fread(line, 1, sizeof(line), fd);
 if (i < sizeof(line)) {
  uprintf("Invalid loc file: the file is too small!");
  goto out;
 }
 if (((uint8_t)line[0]) > 0x80) {
  uprintf("Invalid loc file: the file should not have a BOM (Byte Order Mark)");
  goto out;
 }
 for (i=0; i<sizeof(line)-1; i++)
  if ((((uint8_t)line[i]) == 0x0D) && (((uint8_t)line[i+1]) == 0x0A)) break;
 if (i >= sizeof(line)-1) {
  uprintf("Invalid loc file: the file MUST be saved in DOS mode (CR/LF)");
  goto out;
 }
 fseek(fd, 0, SEEK_SET);

 loc_line_nr = 0;
 line[0] = 0;
 free_locale_list();
 do {

  end_of_block = ftell(fd);
  if (fgets(line, sizeof(line), fd) == ((void*)0))
   break;
  loc_line_nr++;

  i = strspn(line, space);
  if ((line[i] != 'l') && (line[i] != 'v') && (line[i] != 'a'))
   continue;

  lcmd = get_loc_cmd(line[i], &line[i+1]);
  if ((lcmd == ((void*)0)) || ((lcmd->command != 129) && (lcmd->command != 128) && (lcmd->command != 130))) {
   free_loc_cmd(lcmd);
   continue;
  }
  switch (lcmd->command) {
  case 129:

   if (last_lcmd != ((void*)0)) {
    if (version_line_nr == 0) {
     uprintf("localization: no compatible version was found - this locale will be ignored\n");
     list_del(&last_lcmd->list);
     free_loc_cmd(last_lcmd);
    } else {
     last_lcmd->num[1] = (int32_t)end_of_block;
    }
   }
   lcmd->num[0] = (int32_t)ftell(fd);

   list_add_tail(&lcmd->list, &locale_list);
   uprintf("localization: found locale '%s'\n", lcmd->txt[0]);
   last_lcmd = lcmd;
   version_line_nr = 0;
   break;
  case 130:
   if (last_lcmd == ((void*)0)) {
    luprint("[a]ttributes cannot precede [l]ocale");
   } else for(j=0; lcmd->txt[0][j] != 0; j++) {
    for (k=0; k<ARRAYSIZE(attr_parse); k++) {
     if (attr_parse[k].c == lcmd->txt[0][j]) {

      last_lcmd->ctrl_id |= attr_parse[k].flag;
      break;
     }
    }
    if (k >= ARRAYSIZE(attr_parse))
     luprintf("unknown attribute '%c' - ignored", lcmd->txt[0][j]);
   }
   free_loc_cmd(lcmd);
   break;
  case 128:
   if (version_line_nr != 0) {
    luprintf("[v]ersion was already provided at line %d", version_line_nr);
   } else if (lcmd->unum_size != 2) {
    luprint("[v]ersion format is invalid");
   } else if (last_lcmd == ((void*)0)) {
    luprint("[v]ersion cannot precede [l]ocale");
   } else if (loc_base_major == -1) {


    loc_base_major = lcmd->unum[0];
    loc_base_minor = lcmd->unum[1];
    version_line_nr = loc_line_nr;
   } else {
    if ((lcmd->unum[0] < loc_base_major) || ((lcmd->unum[0] == loc_base_major) && (lcmd->unum[1] < loc_base_minor))) {
     last_lcmd->ctrl_id |= LOC_NEEDS_UPDATE;
     luprintf("the version of this translation is older than the base one and may result in some messages not being properly translated.\n"
      "If you are the translator, please update your translation with the changes that intervened between v%d.%d and v%d.%d.\n"
      "See https://github.com/pbatard/rufus/blob/master/res/loc/ChangeLog.txt",
      lcmd->unum[0], lcmd->unum[1], loc_base_major, loc_base_minor);
    }
    version_line_nr = loc_line_nr;
   }
   free_loc_cmd(lcmd);
   break;
  }
 } while (1);
 if (last_lcmd != ((void*)0)) {
  if (version_line_nr == 0) {
   uprintf("localization: no compatible version was found - this locale will be ignored\n");
   list_del(&last_lcmd->list);
   free_loc_cmd(last_lcmd);
  } else {
   last_lcmd->num[1] = (int32_t)ftell(fd);
  }
 }
 r = !list_empty(&locale_list);
 if (r == FALSE)
  uprintf("localization: '%s' contains no valid locale sections\n", filename);

out:
 if (fd != ((void*)0))
  fclose(fd);
 return r;
}
