; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_internet_features.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_internet_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@pCoInternetIsFeatureEnabled = common dso_local global i32 0, align 4
@pCoInternetSetFeatureEnabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Skipping internet feature tests, IE is too old\0A\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@szFeatureControlKey = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"RegCreateKey failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Running features tests in a separated process.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\22%s\22 %s internet_features\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not create process: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_internet_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_internet_features() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @pCoInternetIsFeatureEnabled, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @pCoInternetSetFeatureEnabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %0
  %15 = call i32 @win_skip(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %72

16:                                               ; preds = %11
  %17 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %18 = load i32, i32* @szFeatureControlKey, align 4
  %19 = call i64 @RegOpenKeyA(i32 %17, i32 %18, i32* %1)
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %16
  %24 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 4, i1 false)
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %5, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %6, align 8
  %29 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %30 = load i32, i32* @szFeatureControlKey, align 4
  %31 = call i64 @RegCreateKeyA(i32 %29, i32 %30, i32* %1)
  store i64 %31, i64* %2, align 8
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %2, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = call i32 @trace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @winetest_get_mainargs(i8*** %7)
  %40 = load i8**, i8*** %7, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %42, i8* %45)
  %47 = load i8**, i8*** %7, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @CreateProcessA(i8* %49, i8* %28, i32* null, i32* null, i32 %50, i32 0, i32* null, i32* null, %struct.TYPE_5__* %4, %struct.TYPE_6__* %3)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i64 (...) @GetLastError()
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @winetest_wait_child_process(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CloseHandle(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @CloseHandle(i32 %62)
  %64 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %65 = load i32, i32* @szFeatureControlKey, align 4
  %66 = call i32 @RegDeleteKeyA(i32 %64, i32 %65)
  %67 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %72

68:                                               ; preds = %16
  %69 = call i32 (...) @test_internet_features_registry()
  %70 = call i32 (...) @test_CoInternetIsFeatureEnabled()
  %71 = call i32 (...) @test_CoInternetSetFeatureEnabled()
  br label %72

72:                                               ; preds = %68, %23, %14
  ret void
}

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @RegOpenKeyA(i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @RegCreateKeyA(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @winetest_get_mainargs(i8***) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @CreateProcessA(i8*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @winetest_wait_child_process(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @RegDeleteKeyA(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @test_internet_features_registry(...) #1

declare dso_local i32 @test_CoInternetIsFeatureEnabled(...) #1

declare dso_local i32 @test_CoInternetSetFeatureEnabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
