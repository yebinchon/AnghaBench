; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_qmgr.c_test_globalness.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_qmgr.c_test_globalness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_globalness.format = internal constant [8 x i8] c"test_%u\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@CLSID_BackgroundCopyManager = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IBackgroundCopyManager = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"EnumJobs failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to create job enumerator.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"GetCount failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Adding a job in another process failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_globalness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_globalness() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %1, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %2, align 8
  store i32* null, i32** %4, align 8
  %15 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %16 = bitcast i32** %4 to i8**
  %17 = call i64 @CoCreateInstance(i32* @CLSID_BackgroundCopyManager, i32* null, i32 %15, i32* @IID_IBackgroundCopyManager, i8** %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %5, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = call i32 (...) @GetTickCount()
  %25 = call i32 @wsprintfW(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_globalness.format, i64 0, i64 0), i32 %24)
  %26 = call i32 @run_child(i8* %14)
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @IBackgroundCopyManager_EnumJobs(i32* %27, i32 0, i32** %3)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %5, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %0
  %39 = call i32 @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %83

40:                                               ; preds = %0
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @IEnumBackgroundCopyJobs_GetCount(i32* %42, i64* %7)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %5, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %75, %40
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %60, label %78

60:                                               ; preds = %58
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @IEnumBackgroundCopyJobs_Next(i32* %61, i32 1, i32** %8, i32* null)
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @IBackgroundCopyJob_GetDisplayName(i32* %63, i32* %10)
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @lstrcmpW(i32 %65, i8* %14)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %60
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @CoTaskMemFree(i32 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @IBackgroundCopyJob_Release(i32* %73)
  br label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %6, align 8
  br label %50

78:                                               ; preds = %58
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @IEnumBackgroundCopyJobs_Release(i32* %79)
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %38
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @IBackgroundCopyManager_Release(i32* %84)
  %86 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @wsprintfW(i8*, i8*, i32) #2

declare dso_local i32 @GetTickCount(...) #2

declare dso_local i32 @run_child(i8*) #2

declare dso_local i64 @IBackgroundCopyManager_EnumJobs(i32*, i32, i32**) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @IEnumBackgroundCopyJobs_GetCount(i32*, i64*) #2

declare dso_local i32 @IEnumBackgroundCopyJobs_Next(i32*, i32, i32**, i32*) #2

declare dso_local i32 @IBackgroundCopyJob_GetDisplayName(i32*, i32*) #2

declare dso_local i64 @lstrcmpW(i32, i8*) #2

declare dso_local i32 @CoTaskMemFree(i32) #2

declare dso_local i32 @IBackgroundCopyJob_Release(i32*) #2

declare dso_local i32 @IEnumBackgroundCopyJobs_Release(i32*) #2

declare dso_local i32 @IBackgroundCopyManager_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
