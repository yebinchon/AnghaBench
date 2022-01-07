
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct CDIO_STAT_STRUCT {int st_size; } ;
struct TYPE_6__ {int free; int close; int read; int stat; int seek; int open; int * member_5; int * member_4; int * member_3; int * member_2; int * member_1; int * member_0; } ;
typedef TYPE_1__ cdio_stream_io_functions ;
struct TYPE_7__ {char* pathname; int st_size; } ;
typedef TYPE_2__ _UserData ;
typedef int CdioDataSource_t ;


 int CDIO_STAT_CALL (char*,struct CDIO_STAT_STRUCT*) ;
 char* _cdio_strdup_fixpath (char const*) ;
 int _stdio_close ;
 int _stdio_free ;
 int _stdio_open ;
 int _stdio_read ;
 int _stdio_seek ;
 int _stdio_stat ;
 TYPE_2__* calloc (int,int) ;
 int cdio_assert (int ) ;
 int cdio_free (char*) ;
 int * cdio_stream_new (TYPE_2__*,TYPE_1__*) ;
 int cdio_warn (char*,char*,int ) ;
 int errno ;
 int strerror (int ) ;

CdioDataSource_t *
cdio_stdio_new(const char pathname[])
{
  CdioDataSource_t *new_obj = ((void*)0);
  cdio_stream_io_functions funcs = { ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0) };
  _UserData *ud = ((void*)0);
  struct CDIO_STAT_STRUCT statbuf;
  char* pathdup;

  if (pathname == ((void*)0))
    return ((void*)0);


  pathdup = _cdio_strdup_fixpath(pathname);
  if (pathdup == ((void*)0))
    return ((void*)0);

  if (CDIO_STAT_CALL (pathdup, &statbuf) == -1)
    {
      cdio_warn ("could not retrieve file info for `%s': %s",
                 pathdup, strerror (errno));
      cdio_free(pathdup);
      return ((void*)0);
    }

  ud = calloc (1, sizeof (_UserData));
  cdio_assert (ud != ((void*)0));

  ud->pathname = pathdup;
  ud->st_size = statbuf.st_size;

  funcs.open = _stdio_open;
  funcs.seek = _stdio_seek;
  funcs.stat = _stdio_stat;
  funcs.read = _stdio_read;
  funcs.close = _stdio_close;
  funcs.free = _stdio_free;

  new_obj = cdio_stream_new(ud, &funcs);

  return new_obj;
}
