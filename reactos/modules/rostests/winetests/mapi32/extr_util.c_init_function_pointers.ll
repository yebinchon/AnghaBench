; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_util.c_init_function_pointers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_util.c_init_function_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"mapi32.dll\00", align 1
@hMapi32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ScInitMapiUtil@4\00", align 1
@pScInitMapiUtil = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"DeinitMapiUtil@0\00", align 1
@pDeinitMapiUtil = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"SwapPword@8\00", align 1
@pSwapPword = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"SwapPlong@8\00", align 1
@pSwapPlong = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"HexFromBin@12\00", align 1
@pHexFromBin = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"FBinFromHex@8\00", align 1
@pFBinFromHex = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"UFromSz@4\00", align 1
@pUFromSz = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"UlFromSzHex@4\00", align 1
@pUlFromSzHex = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"CbOfEncoded@4\00", align 1
@pCbOfEncoded = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"IsBadBoundedStringPtr@8\00", align 1
@pIsBadBoundedStringPtr = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"MAPIInitialize\00", align 1
@pMAPIInitialize = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"MAPIUninitialize\00", align 1
@pMAPIUninitialize = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_function_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_function_pointers() #0 {
  %1 = call i32 @LoadLibraryA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %1, i32* @hMapi32, align 4
  %2 = load i32, i32* @hMapi32, align 4
  %3 = call i64 @GetProcAddress(i32 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %4 = inttoptr i64 %3 to i8*
  store i8* %4, i8** @pScInitMapiUtil, align 8
  %5 = load i32, i32* @hMapi32, align 4
  %6 = call i64 @GetProcAddress(i32 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @pDeinitMapiUtil, align 8
  %8 = load i32, i32* @hMapi32, align 4
  %9 = call i64 @GetProcAddress(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @pSwapPword, align 8
  %11 = load i32, i32* @hMapi32, align 4
  %12 = call i64 @GetProcAddress(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @pSwapPlong, align 8
  %14 = load i32, i32* @hMapi32, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** @pHexFromBin, align 8
  %17 = load i32, i32* @hMapi32, align 4
  %18 = call i64 @GetProcAddress(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** @pFBinFromHex, align 8
  %20 = load i32, i32* @hMapi32, align 4
  %21 = call i64 @GetProcAddress(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** @pUFromSz, align 8
  %23 = load i32, i32* @hMapi32, align 4
  %24 = call i64 @GetProcAddress(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** @pUlFromSzHex, align 8
  %26 = load i32, i32* @hMapi32, align 4
  %27 = call i64 @GetProcAddress(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** @pCbOfEncoded, align 8
  %29 = load i32, i32* @hMapi32, align 4
  %30 = call i64 @GetProcAddress(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** @pIsBadBoundedStringPtr, align 8
  %32 = load i32, i32* @hMapi32, align 4
  %33 = call i64 @GetProcAddress(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** @pMAPIInitialize, align 8
  %35 = load i32, i32* @hMapi32, align 4
  %36 = call i64 @GetProcAddress(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** @pMAPIUninitialize, align 8
  ret void
}

declare dso_local i32 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
