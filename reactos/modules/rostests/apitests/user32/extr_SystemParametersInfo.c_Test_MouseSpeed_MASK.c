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
typedef  int ULONG ;
typedef  int BOOL ;

/* Variables and functions */
 int SPIF_SENDCHANGE ; 
 int SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETMOUSESPEED ; 
 int /*<<< orphan*/  SPI_SETMOUSESPEED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

__attribute__((used)) static void FUNC3()
{
    ULONG ulMouseSpeed, temp;
    BOOL ret;

    ret = FUNC0(SPI_GETMOUSESPEED, 0, &ulMouseSpeed, 0);
    FUNC2(ret, "SystemParametersInfo failed\n");
    FUNC2(ulMouseSpeed >= 1 && ulMouseSpeed <=20, "Wrong mouse speed (%d)\n", (int)ulMouseSpeed);

    temp = 1;
    ret = FUNC0(SPI_SETMOUSESPEED, 0, FUNC1(temp), SPIF_SENDCHANGE | SPIF_UPDATEINIFILE);
    FUNC2(ret, "SystemParametersInfo failed\n");
    ret = FUNC0(SPI_GETMOUSESPEED, 0, &temp, 0);
    FUNC2(ret, "SystemParametersInfo failed\n");
    FUNC2(temp == 1, "SPI_GETMOUSESPEED did not get value set by SPI_SETMOUSESPEED (%d instead of 1)\n", (int)temp);

    temp = 20;
    ret = FUNC0(SPI_SETMOUSESPEED, 0, FUNC1(temp), SPIF_SENDCHANGE | SPIF_UPDATEINIFILE);
    FUNC2(ret, "SystemParametersInfo failed\n");
    ret = FUNC0(SPI_GETMOUSESPEED, 0, &temp, 0);
    FUNC2(ret, "SystemParametersInfo failed\n");
    FUNC2(temp == 20, "SPI_GETMOUSESPEED did not get value set by SPI_SETMOUSESPEED (%d instead of 20)\n", (int)temp);

    temp = 21;
    ret = FUNC0(SPI_SETMOUSESPEED, 0, FUNC1(temp), SPIF_SENDCHANGE | SPIF_UPDATEINIFILE);
    FUNC2(!ret, "expected SystemParametersInfo to fail\n");
    ret = FUNC0(SPI_GETMOUSESPEED, 0, &temp, 0);
    FUNC2(ret, "SystemParametersInfo failed\n");
    FUNC2(temp == 20, "SPI_GETMOUSESPEED got unexpected value (%d instead of 20)\n", (int)temp);

    temp = 0;
    ret = FUNC0(SPI_SETMOUSESPEED, 0, FUNC1(temp), SPIF_SENDCHANGE | SPIF_UPDATEINIFILE);
    FUNC2(!ret, "expected SystemParametersInfo to fail\n");
    ret = FUNC0(SPI_GETMOUSESPEED, 0, &temp, 0);
    FUNC2(ret, "SystemParametersInfo failed\n");
    FUNC2(temp == 20, "SPI_GETMOUSESPEED got unexpected value (%d instead of 20)\n", (int)temp);

    ret = FUNC0(SPI_SETMOUSESPEED, 0, FUNC1(ulMouseSpeed), SPIF_SENDCHANGE | SPIF_UPDATEINIFILE);
    FUNC2(ret, "SystemParametersInfo failed\n");
}