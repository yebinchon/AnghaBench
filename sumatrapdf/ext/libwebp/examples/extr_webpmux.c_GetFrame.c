
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ const id; int bitstream; } ;
typedef TYPE_2__ WebPMuxFrameInfo ;
typedef scalar_t__ WebPMuxError ;
typedef int WebPMux ;
typedef scalar_t__ WebPChunkId ;
struct TYPE_8__ {int output_; TYPE_1__* args_; } ;
struct TYPE_6__ {int params_; } ;
typedef TYPE_3__ Config ;


 int ERROR_GOTO1 (char*,int ) ;
 int ERROR_GOTO2 (char*,int ,int ) ;
 int ERROR_GOTO3 (char*,int ,int,int ) ;
 int ErrGet ;
 int ErrorString (scalar_t__) ;
 int ExUtilGetInt (int ,int,int*) ;
 scalar_t__ WEBP_CHUNK_ANMF ;
 scalar_t__ WEBP_MUX_MEMORY_ERROR ;
 scalar_t__ WEBP_MUX_NOT_FOUND ;
 scalar_t__ WEBP_MUX_OK ;
 int WebPDataClear (int *) ;
 int WebPDataInit (int *) ;
 int WebPMuxDelete (int *) ;
 scalar_t__ WebPMuxGetFrame (int const*,int,TYPE_2__*) ;
 int * WebPMuxNew () ;
 scalar_t__ WebPMuxSetImage (int *,int *,int) ;
 int WriteWebP (int *,int ) ;

__attribute__((used)) static int GetFrame(const WebPMux* mux, const Config* config) {
  WebPMuxError err = WEBP_MUX_OK;
  WebPMux* mux_single = ((void*)0);
  int num = 0;
  int ok = 1;
  int parse_error = 0;
  const WebPChunkId id = WEBP_CHUNK_ANMF;
  WebPMuxFrameInfo info;
  WebPDataInit(&info.bitstream);

  num = ExUtilGetInt(config->args_[0].params_, 10, &parse_error);
  if (num < 0) {
    ERROR_GOTO1("ERROR: Frame/Fragment index must be non-negative.\n", ErrGet);
  }
  if (parse_error) goto ErrGet;

  err = WebPMuxGetFrame(mux, num, &info);
  if (err == WEBP_MUX_OK && info.id != id) err = WEBP_MUX_NOT_FOUND;
  if (err != WEBP_MUX_OK) {
    ERROR_GOTO3("ERROR (%s): Could not get frame %d.\n",
                ErrorString(err), num, ErrGet);
  }

  mux_single = WebPMuxNew();
  if (mux_single == ((void*)0)) {
    err = WEBP_MUX_MEMORY_ERROR;
    ERROR_GOTO2("ERROR (%s): Could not allocate a mux object.\n",
                ErrorString(err), ErrGet);
  }
  err = WebPMuxSetImage(mux_single, &info.bitstream, 1);
  if (err != WEBP_MUX_OK) {
    ERROR_GOTO2("ERROR (%s): Could not create single image mux object.\n",
                ErrorString(err), ErrGet);
  }

  ok = WriteWebP(mux_single, config->output_);

 ErrGet:
  WebPDataClear(&info.bitstream);
  WebPMuxDelete(mux_single);
  return ok && !parse_error;
}
