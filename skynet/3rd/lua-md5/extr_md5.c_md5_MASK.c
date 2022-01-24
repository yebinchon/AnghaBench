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
typedef  scalar_t__ WORD32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*) ; 

void FUNC5 (const char *message, long len, char *output) {
  WORD32 d[4];
  int status = 0;
  long i = 0;
  FUNC2(d);
  while (status != 2) {
    WORD32 d_old[4];
    WORD32 wbuff[16];
    int numbytes = (len-i >= 64) ? 64 : len-i;
    /*salva os valores do vetor digest*/
    d_old[0]=d[0]; d_old[1]=d[1]; d_old[2]=d[2]; d_old[3]=d[3];
    status = FUNC0(wbuff, message+i, numbytes, status);
    if (status == 2) FUNC3(wbuff, len);
    FUNC1(wbuff, d);
    d[0]+=d_old[0]; d[1]+=d_old[1]; d[2]+=d_old[2]; d[3]+=d_old[3];
    i += numbytes;
  }
  FUNC4(d, output);
}