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
typedef  int lba_t ;

/* Variables and functions */
 int CDIO_CD_FRAMES_PER_SEC ; 
 int CDIO_CD_SECS_PER_MIN ; 
 int CDIO_INVALID_LBA ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

lba_t
FUNC3 (const char *psz_mmssff)
{
  int psz_field;
  lba_t ret;
  unsigned char c;

  if (0 == FUNC2 (psz_mmssff, "0"))
    return 0;

  c = *psz_mmssff++;
  if(c >= '0' && c <= '9')
    psz_field = (c - '0');
  else
    return CDIO_INVALID_LBA;
  while(':' != (c = *psz_mmssff++)) {
    if(c >= '0' && c <= '9')
      psz_field = psz_field * 10 + (c - '0');
    else
      return CDIO_INVALID_LBA;
  }

  ret = FUNC0 (psz_field, 0, 0);

  c = *psz_mmssff++;
  if(c >= '0' && c <= '9')
    psz_field = (c - '0');
  else
    return CDIO_INVALID_LBA;
  if(':' != (c = *psz_mmssff++)) {
    if(c >= '0' && c <= '9') {
      psz_field = psz_field * 10 + (c - '0');
      c = *psz_mmssff++;
      if(c != ':')
	return CDIO_INVALID_LBA;
    }
    else
      return CDIO_INVALID_LBA;
  }

  if(psz_field >= CDIO_CD_SECS_PER_MIN)
    return CDIO_INVALID_LBA;

  ret += FUNC0 (0, psz_field, 0);

  c = *psz_mmssff++;
  if (FUNC1(c))
    psz_field = (c - '0');
  else
    return -1;
  if('\0' != (c = *psz_mmssff++)) {
    if (FUNC1(c)) {
      psz_field = psz_field * 10 + (c - '0');
      c = *psz_mmssff++;
    }
    else
      return CDIO_INVALID_LBA;
  }

  if('\0' != c)
    return CDIO_INVALID_LBA;

  if(psz_field >= CDIO_CD_FRAMES_PER_SEC)
    return CDIO_INVALID_LBA;

  ret += psz_field;

  return ret;
}