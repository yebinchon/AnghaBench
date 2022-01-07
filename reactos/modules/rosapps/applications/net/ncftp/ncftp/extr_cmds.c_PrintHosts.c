
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int url ;
typedef scalar_t__ sigproc_t ;
struct TYPE_4__ {char* bookmarkName; } ;
typedef int FILE ;
typedef TYPE_1__ Bookmark ;


 int BookmarkToURL (TYPE_1__*,char*,int) ;
 int CloseBookmarkFile (int *) ;
 int ClosePager (int *) ;
 scalar_t__ GetNextBookmark (int *,TYPE_1__*) ;
 scalar_t__ NcSignal (int ,scalar_t__) ;
 int * OpenBookmarkFile (int *) ;
 int * OpenPager () ;
 int SIGPIPE ;
 scalar_t__ SIG_IGN ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static int
PrintHosts(void)
{
 FILE *bookmarks;
 FILE *pager;
 int nbm = 0;
 Bookmark bm;
 char url[128];




 bookmarks = OpenBookmarkFile(((void*)0));
 if (bookmarks == ((void*)0))
  return (0);




 pager = OpenPager();

 while (GetNextBookmark(bookmarks, &bm) == 0) {
  nbm++;
  if (nbm == 1) {

   (void) fprintf(pager, "--BOOKMARK----------URL--------------------------------------------------------\n");
  }
  BookmarkToURL(&bm, url, sizeof(url));
  (void) fprintf(pager, "  %-16s  %s\n", bm.bookmarkName, url);
 }

 ClosePager(pager);
 CloseBookmarkFile(bookmarks);




 return (nbm);
}
