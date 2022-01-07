
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
struct TYPE_3__ {struct TYPE_3__* next; int guest_ok; int comment; int path; int name; } ;
typedef TYPE_1__ smb_share_t ;
typedef int line ;
typedef int file_path ;
typedef int FILE ;
typedef int DIR ;


 int PATH_MAX ;
 int SA_NO_MEMORY ;
 int SA_OK ;
 int SA_SYSTEM_ERR ;
 char* SHARE_DIR ;
 int S_ISREG (int ) ;
 int atoi (char*) ;
 int closedir (int *) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 TYPE_1__* smb_shares ;
 int snprintf (char*,int,char*,char*,char*) ;
 int stat (char*,struct stat*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlcpy (int ,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int
smb_retrieve_shares(void)
{
 int rc = SA_OK;
 char file_path[PATH_MAX], line[512], *token, *key, *value;
 char *dup_value = ((void*)0), *path = ((void*)0), *comment = ((void*)0), *name = ((void*)0);
 char *guest_ok = ((void*)0);
 DIR *shares_dir;
 FILE *share_file_fp = ((void*)0);
 struct dirent *directory;
 struct stat eStat;
 smb_share_t *shares, *new_shares = ((void*)0);


 shares_dir = opendir(SHARE_DIR);
 if (shares_dir == ((void*)0))
  return (SA_SYSTEM_ERR);


 while ((directory = readdir(shares_dir))) {
  if (directory->d_name[0] == '.')
   continue;

  snprintf(file_path, sizeof (file_path),
      "%s/%s", SHARE_DIR, directory->d_name);

  if (stat(file_path, &eStat) == -1) {
   rc = SA_SYSTEM_ERR;
   goto out;
  }

  if (!S_ISREG(eStat.st_mode))
   continue;

  if ((share_file_fp = fopen(file_path, "r")) == ((void*)0)) {
   rc = SA_SYSTEM_ERR;
   goto out;
  }

  name = strdup(directory->d_name);
  if (name == ((void*)0)) {
   rc = SA_NO_MEMORY;
   goto out;
  }

  while (fgets(line, sizeof (line), share_file_fp)) {
   if (line[0] == '#')
    continue;


   while (line[strlen(line) - 1] == '\r' ||
       line[strlen(line) - 1] == '\n')
    line[strlen(line) - 1] = '\0';


   token = strchr(line, '=');
   if (token == ((void*)0))
    continue;

   key = line;
   value = token + 1;
   *token = '\0';

   dup_value = strdup(value);
   if (dup_value == ((void*)0)) {
    rc = SA_NO_MEMORY;
    goto out;
   }

   if (strcmp(key, "path") == 0) {
    free(path);
    path = dup_value;
   } else if (strcmp(key, "comment") == 0) {
    free(comment);
    comment = dup_value;
   } else if (strcmp(key, "guest_ok") == 0) {
    free(guest_ok);
    guest_ok = dup_value;
   } else
    free(dup_value);

   dup_value = ((void*)0);

   if (path == ((void*)0) || comment == ((void*)0) || guest_ok == ((void*)0))
    continue;
   else {
    shares = (smb_share_t *)
        malloc(sizeof (smb_share_t));
    if (shares == ((void*)0)) {
     rc = SA_NO_MEMORY;
     goto out;
    }

    (void) strlcpy(shares->name, name,
        sizeof (shares->name));

    (void) strlcpy(shares->path, path,
        sizeof (shares->path));

    (void) strlcpy(shares->comment, comment,
        sizeof (shares->comment));

    shares->guest_ok = atoi(guest_ok);

    shares->next = new_shares;
    new_shares = shares;

    free(path);
    free(comment);
    free(guest_ok);

    path = ((void*)0);
    comment = ((void*)0);
    guest_ok = ((void*)0);
   }
  }

out:
  if (share_file_fp != ((void*)0)) {
   fclose(share_file_fp);
   share_file_fp = ((void*)0);
  }

  free(name);
  free(path);
  free(comment);
  free(guest_ok);

  name = ((void*)0);
  path = ((void*)0);
  comment = ((void*)0);
  guest_ok = ((void*)0);
 }
 closedir(shares_dir);

 smb_shares = new_shares;

 return (rc);
}
