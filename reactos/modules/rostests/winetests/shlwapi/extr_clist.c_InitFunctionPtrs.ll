; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_clist.c_InitFunctionPtrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_clist.c_InitFunctionPtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"shlwapi.dll\00", align 1
@SHLWAPI_hshlwapi = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"SHCreateStreamOnFileEx\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Too old shlwapi version\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@pSHLWAPI_17 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"No Ordinal 17\0A\00", align 1
@pSHLWAPI_18 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"No Ordinal 18\0A\00", align 1
@pSHLWAPI_19 = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"No Ordinal 19\0A\00", align 1
@pSHLWAPI_20 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"No Ordinal 20\0A\00", align 1
@pSHLWAPI_21 = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"No Ordinal 21\0A\00", align 1
@pSHLWAPI_22 = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"No Ordinal 22\0A\00", align 1
@pSHLWAPI_166 = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"No Ordinal 166\0A\00", align 1
@pSHLWAPI_184 = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"No Ordinal 184\0A\00", align 1
@pSHLWAPI_212 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"No Ordinal 212\0A\00", align 1
@pSHLWAPI_213 = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"No Ordinal 213\0A\00", align 1
@pSHLWAPI_214 = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"No Ordinal 214\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @InitFunctionPtrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitFunctionPtrs() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @SHLWAPI_hshlwapi, align 4
  %3 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %4 = call i64 @GetProcAddress(i32 %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = call i32 @win_skip(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %1, align 4
  br label %88

9:                                                ; preds = %0
  %10 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %11 = call i64 @GetProcAddress(i32 %10, i8* inttoptr (i64 17 to i8*))
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** @pSHLWAPI_17, align 8
  %13 = load i8*, i8** @pSHLWAPI_17, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %18 = call i64 @GetProcAddress(i32 %17, i8* inttoptr (i64 18 to i8*))
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** @pSHLWAPI_18, align 8
  %20 = load i8*, i8** @pSHLWAPI_18, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %25 = call i64 @GetProcAddress(i32 %24, i8* inttoptr (i64 19 to i8*))
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @pSHLWAPI_19, align 8
  %27 = load i8*, i8** @pSHLWAPI_19, align 8
  %28 = icmp ne i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %32 = call i64 @GetProcAddress(i32 %31, i8* inttoptr (i64 20 to i8*))
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** @pSHLWAPI_20, align 8
  %34 = load i8*, i8** @pSHLWAPI_20, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %38 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %39 = call i64 @GetProcAddress(i32 %38, i8* inttoptr (i64 21 to i8*))
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** @pSHLWAPI_21, align 8
  %41 = load i8*, i8** @pSHLWAPI_21, align 8
  %42 = icmp ne i8* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %45 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %46 = call i64 @GetProcAddress(i32 %45, i8* inttoptr (i64 22 to i8*))
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** @pSHLWAPI_22, align 8
  %48 = load i8*, i8** @pSHLWAPI_22, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %52 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %53 = call i64 @GetProcAddress(i32 %52, i8* inttoptr (i64 166 to i8*))
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** @pSHLWAPI_166, align 8
  %55 = load i8*, i8** @pSHLWAPI_166, align 8
  %56 = icmp ne i8* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %59 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %60 = call i64 @GetProcAddress(i32 %59, i8* inttoptr (i64 184 to i8*))
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** @pSHLWAPI_184, align 8
  %62 = load i8*, i8** @pSHLWAPI_184, align 8
  %63 = icmp ne i8* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %66 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %67 = call i64 @GetProcAddress(i32 %66, i8* inttoptr (i64 212 to i8*))
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** @pSHLWAPI_212, align 8
  %69 = load i8*, i8** @pSHLWAPI_212, align 8
  %70 = icmp ne i8* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %73 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %74 = call i64 @GetProcAddress(i32 %73, i8* inttoptr (i64 213 to i8*))
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** @pSHLWAPI_213, align 8
  %76 = load i8*, i8** @pSHLWAPI_213, align 8
  %77 = icmp ne i8* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %80 = load i32, i32* @SHLWAPI_hshlwapi, align 4
  %81 = call i64 @GetProcAddress(i32 %80, i8* inttoptr (i64 214 to i8*))
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** @pSHLWAPI_214, align 8
  %83 = load i8*, i8** @pSHLWAPI_214, align 8
  %84 = icmp ne i8* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %1, align 4
  br label %88

88:                                               ; preds = %9, %6
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
