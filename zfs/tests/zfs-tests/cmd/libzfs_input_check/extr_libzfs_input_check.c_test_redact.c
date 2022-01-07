
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int bookmark ;


 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int MAXNAMELEN ;
 int ZFS_IOC_REDACT ;
 int fnvlist_add_boolean (int *,char const*) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_string (int *,char*,char*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;
 char* strchr (char*,char) ;
 int strlcat (char*,char*,scalar_t__) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strlen (char*) ;
 int zfs_destroy (char*) ;

__attribute__((used)) static void
test_redact(const char *snapshot1, const char *snapshot2)
{
 nvlist_t *required = fnvlist_alloc();
 nvlist_t *snapnv = fnvlist_alloc();
 char bookmark[MAXNAMELEN + 32];

 fnvlist_add_string(required, "bookname", "testbookmark");
 fnvlist_add_boolean(snapnv, snapshot2);
 fnvlist_add_nvlist(required, "snapnv", snapnv);

 IOC_INPUT_TEST(ZFS_IOC_REDACT, snapshot1, required, ((void*)0), 0);

 nvlist_free(snapnv);
 nvlist_free(required);

 strlcpy(bookmark, snapshot1, sizeof (bookmark));
 *strchr(bookmark, '@') = '\0';
 strlcat(bookmark, "#testbookmark", sizeof (bookmark) -
     strlen(bookmark));
 zfs_destroy(bookmark);
}
