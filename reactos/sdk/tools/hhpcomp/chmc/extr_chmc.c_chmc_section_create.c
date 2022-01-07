
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chmcSection {char* name; char* filename; scalar_t__ fd; scalar_t__ mark_count; int mark_list; int control_data; int reset_table_header; int len; scalar_t__ offset; } ;
struct chmcFile {TYPE_1__* config; } ;
struct TYPE_2__ {char* tmpdir; } ;


 int INIT_LIST_HEAD (int *) ;
 int PATH_MAX ;
 int assert (char const*) ;
 struct chmcSection* calloc (int,int) ;
 int chmc_control_data_init (int *) ;
 int chmc_reset_table_init (int *) ;
 int chmcerr_msg (char*,char const*) ;
 int chmcerr_set (int ,int ) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int free (struct chmcSection*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ mkstemps (char*,int ) ;
 int stderr ;
 int strcat (char*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strerror (int ) ;
 int strlen (char const*) ;

struct chmcSection *chmc_section_create(struct chmcFile *chm,
                                        const char *name)
{
 struct chmcSection *section;

 assert(name);

 section = calloc(1, sizeof(struct chmcSection));
 if (section) {
  const char *tmpdir;
  int len;

  len = strlen(name);
  memcpy(section->name, name, len + 1);
  section->offset = 0;
  section->len = 0;

  tmpdir = ((void*)0);
  if (chm->config != ((void*)0))
   tmpdir = chm->config->tmpdir;
  if (tmpdir == ((void*)0))
   tmpdir = "/tmp/";

  len = strlen(tmpdir);
  if (len >= PATH_MAX - 12) {
   chmcerr_set(errno, strerror(errno));
   chmcerr_msg("tmpdir too long: '%s'", tmpdir);
   goto fail;
  }

  strcat(section->filename, tmpdir);
  if (section->filename[len - 1] != '/')
   strcat(section->filename, "/");

  if (strcmp("MSCompressed", name) == 0)
   strcat(section->filename, "chmcCXXXXXX");
  else
   strcat(section->filename, "chmcUXXXXXX");

  section->fd = mkstemps(section->filename, 0);
  fprintf(stderr, "temp file: %s\n", section->filename);
  if (section->fd < 0) {
   chmcerr_set(errno, strerror(errno));
   chmcerr_msg("creat() file '%s'", section->filename);
   goto fail;
  }
  else if (strcmp(section->name, "MSCompressed") == 0) {
   chmc_reset_table_init(&section->reset_table_header);
   chmc_control_data_init(&section->control_data);
   INIT_LIST_HEAD(&section->mark_list);
   section->mark_count = 0;
  }
 } else {
  chmcerr_set(errno, strerror(errno));
  chmcerr_msg("section '%s' allocation failed", name);
 }

 return section;

 fail:
 free(section);
 return ((void*)0);
}
