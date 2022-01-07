
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file; } ;
typedef TYPE_1__ getline_ctx ;
typedef int adns_state ;


 scalar_t__ ENOENT ;
 int adns__debug (int ,int,int ,char*,char const*) ;
 int adns__diag (int ,int,int ,char*,char const*,int ) ;
 scalar_t__ errno ;
 int fclose (int ) ;
 int fopen (char const*,char*) ;
 int gl_file ;
 int readconfiggeneric (int ,char const*,int ,TYPE_1__) ;
 int saveerr (int ,scalar_t__) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static void readconfig(adns_state ads, const char *filename, int warnmissing) {
  getline_ctx gl_ctx;

  gl_ctx.file= fopen(filename,"r");
  if (!gl_ctx.file) {
    if (errno == ENOENT) {
      if (warnmissing)
 adns__debug(ads,-1,0,"configuration file `%s' does not exist",filename);
      return;
    }
    saveerr(ads,errno);
    adns__diag(ads,-1,0,"cannot open configuration file `%s': %s",
        filename,strerror(errno));
    return;
  }

  readconfiggeneric(ads,filename,gl_file,gl_ctx);

  fclose(gl_ctx.file);
}
