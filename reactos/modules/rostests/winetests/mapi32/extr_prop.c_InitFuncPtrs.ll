; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_InitFuncPtrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_InitFuncPtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"mapi32.dll\00", align 1
@hMapi32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"PropCopyMore@16\00", align 1
@pPropCopyMore = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"UlPropSize@4\00", align 1
@pUlPropSize = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"FPropContainsProp@12\00", align 1
@pFPropContainsProp = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"FPropCompareProp@12\00", align 1
@pFPropCompareProp = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"LPropCompareProp@8\00", align 1
@pLPropCompareProp = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"PpropFindProp@12\00", align 1
@pPpropFindProp = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"ScCountProps@12\00", align 1
@pScCountProps = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"ScCopyProps@16\00", align 1
@pScCopyProps = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"ScRelocProps@20\00", align 1
@pScRelocProps = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"LpValFindProp@12\00", align 1
@pLpValFindProp = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"FBadRglpszA@8\00", align 1
@pFBadRglpszA = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"FBadRglpszW@8\00", align 1
@pFBadRglpszW = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"FBadRowSet@4\00", align 1
@pFBadRowSet = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"FBadPropTag@4\00", align 1
@pFBadPropTag = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"FBadRow@4\00", align 1
@pFBadRow = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"FBadProp@4\00", align 1
@pFBadProp = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"FBadColumnSet@4\00", align 1
@pFBadColumnSet = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"CreateIProp@24\00", align 1
@pCreateIProp = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"ScInitMapiUtil@4\00", align 1
@pScInitMapiUtil = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [17 x i8] c"DeinitMapiUtil@0\00", align 1
@pDeinitMapiUtil = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [19 x i8] c"MAPIAllocateBuffer\00", align 1
@pMAPIAllocateBuffer = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"MAPIAllocateMore\00", align 1
@pMAPIAllocateMore = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [15 x i8] c"MAPIFreeBuffer\00", align 1
@pMAPIFreeBuffer = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [15 x i8] c"MAPIInitialize\00", align 1
@pMAPIInitialize = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [17 x i8] c"MAPIUninitialize\00", align 1
@pMAPIUninitialize = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @InitFuncPtrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitFuncPtrs() #0 {
  %1 = call i32 @LoadLibraryA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %1, i32* @hMapi32, align 4
  %2 = load i32, i32* @hMapi32, align 4
  %3 = call i64 @GetProcAddress(i32 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %4 = inttoptr i64 %3 to i8*
  store i8* %4, i8** @pPropCopyMore, align 8
  %5 = load i32, i32* @hMapi32, align 4
  %6 = call i64 @GetProcAddress(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @pUlPropSize, align 8
  %8 = load i32, i32* @hMapi32, align 4
  %9 = call i64 @GetProcAddress(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @pFPropContainsProp, align 8
  %11 = load i32, i32* @hMapi32, align 4
  %12 = call i64 @GetProcAddress(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @pFPropCompareProp, align 8
  %14 = load i32, i32* @hMapi32, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** @pLPropCompareProp, align 8
  %17 = load i32, i32* @hMapi32, align 4
  %18 = call i64 @GetProcAddress(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** @pPpropFindProp, align 8
  %20 = load i32, i32* @hMapi32, align 4
  %21 = call i64 @GetProcAddress(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** @pScCountProps, align 8
  %23 = load i32, i32* @hMapi32, align 4
  %24 = call i64 @GetProcAddress(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** @pScCopyProps, align 8
  %26 = load i32, i32* @hMapi32, align 4
  %27 = call i64 @GetProcAddress(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** @pScRelocProps, align 8
  %29 = load i32, i32* @hMapi32, align 4
  %30 = call i64 @GetProcAddress(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** @pLpValFindProp, align 8
  %32 = load i32, i32* @hMapi32, align 4
  %33 = call i64 @GetProcAddress(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** @pFBadRglpszA, align 8
  %35 = load i32, i32* @hMapi32, align 4
  %36 = call i64 @GetProcAddress(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** @pFBadRglpszW, align 8
  %38 = load i32, i32* @hMapi32, align 4
  %39 = call i64 @GetProcAddress(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** @pFBadRowSet, align 8
  %41 = load i32, i32* @hMapi32, align 4
  %42 = call i64 @GetProcAddress(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** @pFBadPropTag, align 8
  %44 = load i32, i32* @hMapi32, align 4
  %45 = call i64 @GetProcAddress(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** @pFBadRow, align 8
  %47 = load i32, i32* @hMapi32, align 4
  %48 = call i64 @GetProcAddress(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** @pFBadProp, align 8
  %50 = load i32, i32* @hMapi32, align 4
  %51 = call i64 @GetProcAddress(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** @pFBadColumnSet, align 8
  %53 = load i32, i32* @hMapi32, align 4
  %54 = call i64 @GetProcAddress(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** @pCreateIProp, align 8
  %56 = load i32, i32* @hMapi32, align 4
  %57 = call i64 @GetProcAddress(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** @pScInitMapiUtil, align 8
  %59 = load i32, i32* @hMapi32, align 4
  %60 = call i64 @GetProcAddress(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** @pDeinitMapiUtil, align 8
  %62 = load i32, i32* @hMapi32, align 4
  %63 = call i64 @GetProcAddress(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** @pMAPIAllocateBuffer, align 8
  %65 = load i32, i32* @hMapi32, align 4
  %66 = call i64 @GetProcAddress(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** @pMAPIAllocateMore, align 8
  %68 = load i32, i32* @hMapi32, align 4
  %69 = call i64 @GetProcAddress(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** @pMAPIFreeBuffer, align 8
  %71 = load i32, i32* @hMapi32, align 4
  %72 = call i64 @GetProcAddress(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** @pMAPIInitialize, align 8
  %74 = load i32, i32* @hMapi32, align 4
  %75 = call i64 @GetProcAddress(i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** @pMAPIUninitialize, align 8
  %77 = load i8*, i8** @pMAPIAllocateBuffer, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %0
  %80 = load i8*, i8** @pMAPIAllocateMore, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i8*, i8** @pMAPIFreeBuffer, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i8*, i8** @pScInitMapiUtil, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i8*, i8** @pDeinitMapiUtil, align 8
  %90 = icmp ne i8* %89, null
  br label %91

91:                                               ; preds = %88, %85, %82, %79, %0
  %92 = phi i1 [ false, %85 ], [ false, %82 ], [ false, %79 ], [ false, %0 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  ret i32 %93
}

declare dso_local i32 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
