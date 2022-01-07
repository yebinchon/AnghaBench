
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int mode; char* outname; int fp; } ;
typedef TYPE_1__ BuildCtx ;
 int LJ_32 ;
 int LJ_64 ;
 int UNUSED (int) ;
 int _O_BINARY ;
 int _fileno (int ) ;
 int _setmode (int ,int ) ;
 int build_code (TYPE_1__*) ;
 int emit_asm (TYPE_1__*) ;
 int emit_asm_debug (TYPE_1__*) ;
 int emit_bcdef (TYPE_1__*) ;
 int emit_fold (TYPE_1__*) ;
 int emit_lib (TYPE_1__*) ;
 int emit_peobj (TYPE_1__*) ;
 int emit_raw (TYPE_1__*) ;
 int emit_vmdef (TYPE_1__*) ;
 int errno ;
 int exit (int) ;
 int fclose (int ) ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 int fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int parseargs (TYPE_1__*,char**) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;

int main(int argc, char **argv)
{
  BuildCtx ctx_;
  BuildCtx *ctx = &ctx_;
  int status, binmode;

  if (sizeof(void *) != 4*LJ_32+8*LJ_64) {
    fprintf(stderr,"Error: pointer size mismatch in cross-build.\n");
    fprintf(stderr,"Try: make HOST_CC=\"gcc -m32\" CROSS=...\n\n");
    return 1;
  }

  UNUSED(argc);
  parseargs(ctx, argv);

  if ((status = build_code(ctx))) {
    fprintf(stderr,"Error: DASM error %08x\n", status);
    return 1;
  }

  switch (ctx->mode) {
  case 131:
  case 130:
    binmode = 1;
    break;
  default:
    binmode = 0;
    break;
  }

  if (ctx->outname[0] == '-' && ctx->outname[1] == '\0') {
    ctx->fp = stdout;




  } else if (!(ctx->fp = fopen(ctx->outname, binmode ? "wb" : "w"))) {
    fprintf(stderr, "Error: cannot open output file '%s': %s\n",
     ctx->outname, strerror(errno));
    exit(1);
  }

  switch (ctx->mode) {
  case 136:
  case 137:
  case 132:
    emit_asm(ctx);
    emit_asm_debug(ctx);
    break;
  case 131:
    emit_peobj(ctx);
    break;
  case 130:
    emit_raw(ctx);
    break;
  case 138:
    emit_bcdef(ctx);
    emit_lib(ctx);
    break;
  case 128:
    emit_vmdef(ctx);
    emit_lib(ctx);
    fprintf(ctx->fp, "}\n\n");
    break;
  case 135:
  case 133:
  case 129:
    emit_lib(ctx);
    break;
  case 134:
    emit_fold(ctx);
    break;
  default:
    break;
  }

  fflush(ctx->fp);
  if (ferror(ctx->fp)) {
    fprintf(stderr, "Error: cannot write to output file: %s\n",
     strerror(errno));
    exit(1);
  }
  fclose(ctx->fp);

  return 0;
}
