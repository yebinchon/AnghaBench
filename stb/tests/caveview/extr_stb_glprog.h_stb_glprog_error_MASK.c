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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2(char *error, int error_buflen, char *str1, char *str2, char *str3)
{
   int n = FUNC0(str1);
   FUNC1(error, str1, error_buflen);
   if (n < error_buflen && str2) {
      FUNC1(error+n, str2, error_buflen - n);
      n += FUNC0(str2);
      if (n < error_buflen && str3) {
         FUNC1(error+n, str3, error_buflen - n);
      }
   }
   error[error_buflen-1] = 0;
}