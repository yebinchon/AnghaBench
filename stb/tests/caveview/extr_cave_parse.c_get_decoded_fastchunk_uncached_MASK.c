#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fast_chunk ;
struct TYPE_4__ {scalar_t__ len; int* data; int /*<<< orphan*/  refcount; } ;
typedef  TYPE_1__ compressed_chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (unsigned char*,int) ; 
 int FUNC6 (int*) ; 
 unsigned char* FUNC7 (int*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

fast_chunk *FUNC9(int chunk_x, int chunk_z)
{
   unsigned char *decoded;
   compressed_chunk *cc;
   int inlen;
   int len;
   fast_chunk *fc;

   FUNC4();
   cc = FUNC3(chunk_x, chunk_z);
   if (cc->len != 0)
      ++cc->refcount;
   FUNC8();

   if (cc->len == 0)
      return NULL;

   FUNC0(cc != NULL);

   FUNC0(cc->data[4] == 2);

   inlen = FUNC6(cc->data);
   decoded = FUNC7(cc->data+5, inlen, inlen*3, &len);
   FUNC0(decoded != NULL);
   FUNC0(len != 0);

   FUNC4();
   FUNC1(cc);
   FUNC8();

   #ifdef FAST_CHUNK
   fc = minecraft_chunk_parse(decoded, len);
   #else
   fc = NULL;
   #endif
   if (fc == NULL)
      FUNC2(decoded);
   return fc;
}