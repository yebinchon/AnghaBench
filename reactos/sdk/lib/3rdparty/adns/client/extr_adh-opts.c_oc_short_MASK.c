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
struct optioninfo {char* sopt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,int) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char **optp, const struct optioninfo *entry) {
  const char *sopt;
  int l;

  sopt= entry->sopt;
  if (!sopt) return 0;
  l= FUNC1(sopt);
  if (FUNC0(*optp,sopt,l)) return 0;
  (*optp) += l;
  return 1;
}