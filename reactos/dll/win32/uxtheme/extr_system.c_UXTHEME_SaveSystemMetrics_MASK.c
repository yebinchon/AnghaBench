#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct BackupSysParam {scalar_t__ spiGet; scalar_t__ spiSet; } ;
typedef  int /*<<< orphan*/  ncm ;
typedef  int /*<<< orphan*/  iconTitleFont ;
struct TYPE_8__ {int cbSize; } ;
typedef  TYPE_1__ NONCLIENTMETRICSW ;
typedef  TYPE_1__ LOGFONTW ;
typedef  TYPE_1__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int SPIF_SENDCHANGE ; 
 int SPIF_UPDATEINIFILE ; 
 scalar_t__ SPI_GETICONTITLELOGFONT ; 
 scalar_t__ SPI_GETNONCLIENTMETRICS ; 
 scalar_t__ SPI_SETICONTITLELOGFONT ; 
 scalar_t__ SPI_SETNONCLIENTMETRICS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__) ; 
 struct BackupSysParam* backupSysParams ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    const struct BackupSysParam* bsp = backupSysParams;
    NONCLIENTMETRICSW ncm;
    LOGFONTW iconTitleFont;

    FUNC3 (HKEY_CURRENT_USER);

    while (bsp->spiGet >= 0)
    {
        DWORD value;
        
        FUNC0 (bsp->spiGet, 0, &value, 0);
        FUNC0 (bsp->spiSet, 0, FUNC1(value), SPIF_UPDATEINIFILE);
        bsp++;
    }
    
    FUNC2 (&ncm, 0, sizeof (ncm));
    ncm.cbSize = sizeof (ncm);
    FUNC0 (SPI_GETNONCLIENTMETRICS, sizeof (ncm), &ncm, 0);
    FUNC0 (SPI_SETNONCLIENTMETRICS, sizeof (ncm), &ncm,
        SPIF_UPDATEINIFILE);

    FUNC2 (&iconTitleFont, 0, sizeof (iconTitleFont));
    FUNC0 (SPI_GETICONTITLELOGFONT, sizeof (iconTitleFont),
        &iconTitleFont, 0);
    FUNC0 (SPI_SETICONTITLELOGFONT, sizeof (iconTitleFont),
        &iconTitleFont, SPIF_UPDATEINIFILE | SPIF_SENDCHANGE);
}