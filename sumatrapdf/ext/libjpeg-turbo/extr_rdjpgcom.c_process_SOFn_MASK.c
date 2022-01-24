#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  M_SOF0 140 
#define  M_SOF1 139 
#define  M_SOF10 138 
#define  M_SOF11 137 
#define  M_SOF13 136 
#define  M_SOF14 135 
#define  M_SOF15 134 
#define  M_SOF2 133 
#define  M_SOF3 132 
#define  M_SOF5 131 
#define  M_SOF6 130 
#define  M_SOF7 129 
#define  M_SOF9 128 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 () ; 
 unsigned int FUNC3 () ; 

__attribute__((used)) static void
FUNC4 (int marker)
{
  unsigned int length;
  unsigned int image_height, image_width;
  int data_precision, num_components;
  const char * process;
  int ci;

  length = FUNC3();	/* usual parameter length count */

  data_precision = FUNC2();
  image_height = FUNC3();
  image_width = FUNC3();
  num_components = FUNC2();

  switch (marker) {
  case M_SOF0:	process = "Baseline";  break;
  case M_SOF1:	process = "Extended sequential";  break;
  case M_SOF2:	process = "Progressive";  break;
  case M_SOF3:	process = "Lossless";  break;
  case M_SOF5:	process = "Differential sequential";  break;
  case M_SOF6:	process = "Differential progressive";  break;
  case M_SOF7:	process = "Differential lossless";  break;
  case M_SOF9:	process = "Extended sequential, arithmetic coding";  break;
  case M_SOF10:	process = "Progressive, arithmetic coding";  break;
  case M_SOF11:	process = "Lossless, arithmetic coding";  break;
  case M_SOF13:	process = "Differential sequential, arithmetic coding";  break;
  case M_SOF14:	process = "Differential progressive, arithmetic coding"; break;
  case M_SOF15:	process = "Differential lossless, arithmetic coding";  break;
  default:	process = "Unknown";  break;
  }

  FUNC1("JPEG image is %uw * %uh, %d color components, %d bits per sample\n",
	 image_width, image_height, num_components, data_precision);
  FUNC1("JPEG process: %s\n", process);

  if (length != (unsigned int) (8 + num_components * 3))
    FUNC0("Bogus SOF marker length");

  for (ci = 0; ci < num_components; ci++) {
    (void) FUNC2();	/* Component ID code */
    (void) FUNC2();	/* H, V sampling factors */
    (void) FUNC2();	/* Quantization table number */
  }
}