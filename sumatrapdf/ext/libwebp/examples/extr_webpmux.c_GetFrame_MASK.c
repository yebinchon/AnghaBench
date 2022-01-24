#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ const id; int /*<<< orphan*/  bitstream; } ;
typedef  TYPE_2__ WebPMuxFrameInfo ;
typedef  scalar_t__ WebPMuxError ;
typedef  int /*<<< orphan*/  WebPMux ;
typedef  scalar_t__ WebPChunkId ;
struct TYPE_8__ {int /*<<< orphan*/  output_; TYPE_1__* args_; } ;
struct TYPE_6__ {int /*<<< orphan*/  params_; } ;
typedef  TYPE_3__ Config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ErrGet ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ WEBP_CHUNK_ANMF ; 
 scalar_t__ WEBP_MUX_MEMORY_ERROR ; 
 scalar_t__ WEBP_MUX_NOT_FOUND ; 
 scalar_t__ WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(const WebPMux* mux, const Config* config) {
  WebPMuxError err = WEBP_MUX_OK;
  WebPMux* mux_single = NULL;
  int num = 0;
  int ok = 1;
  int parse_error = 0;
  const WebPChunkId id = WEBP_CHUNK_ANMF;
  WebPMuxFrameInfo info;
  FUNC6(&info.bitstream);

  num = FUNC4(config->args_[0].params_, 10, &parse_error);
  if (num < 0) {
    FUNC0("ERROR: Frame/Fragment index must be non-negative.\n", ErrGet);
  }
  if (parse_error) goto ErrGet;

  err = FUNC8(mux, num, &info);
  if (err == WEBP_MUX_OK && info.id != id) err = WEBP_MUX_NOT_FOUND;
  if (err != WEBP_MUX_OK) {
    FUNC2("ERROR (%s): Could not get frame %d.\n",
                FUNC3(err), num, ErrGet);
  }

  mux_single = FUNC9();
  if (mux_single == NULL) {
    err = WEBP_MUX_MEMORY_ERROR;
    FUNC1("ERROR (%s): Could not allocate a mux object.\n",
                FUNC3(err), ErrGet);
  }
  err = FUNC10(mux_single, &info.bitstream, 1);
  if (err != WEBP_MUX_OK) {
    FUNC1("ERROR (%s): Could not create single image mux object.\n",
                FUNC3(err), ErrGet);
  }

  ok = FUNC11(mux_single, config->output_);

 ErrGet:
  FUNC5(&info.bitstream);
  FUNC7(mux_single);
  return ok && !parse_error;
}