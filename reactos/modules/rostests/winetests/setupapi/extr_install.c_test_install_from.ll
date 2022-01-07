; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_install.c_test_install_from.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_install.c_test_install_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Software\\Wine\\setupapitest\\setupapitest\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Expected RegCreateKeyA to succeed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected registry key to exist\0A\00", align 1
@inffile = common dso_local global i8* null, align 8
@cmdline_inf_reg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@CURR_DIR = common dso_local global i8* null, align 8
@INF_STYLE_WIN4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"DefaultInstall\00", align 1
@SPINST_REGISTRY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Unexpected failure\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Expected ERROR_SUCCESS, got %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Software\\Wine\\setupapitest\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"Didn't expect the registry key to exist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_install_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_install_from() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %12 = call i32 @RegCreateKeyA(i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %4)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %18 = call i64 @RegOpenKeyA(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %4)
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i8*, i8** @inffile, align 8
  %24 = load i32, i32* @cmdline_inf_reg, align 4
  %25 = call i32 @create_inf_file(i8* %23, i32 %24)
  %26 = load i8*, i8** @CURR_DIR, align 8
  %27 = load i8*, i8** @inffile, align 8
  %28 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i32, i32* @INF_STYLE_WIN4, align 4
  %30 = call i32 @SetupOpenInfFileA(i8* %10, i32* null, i32 %29, i32* null)
  store i32 %30, i32* %3, align 4
  %31 = call i32 @SetLastError(i32 -559038737)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SPINST_REGISTRY, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @SetupInstallFromInfSectionA(i32* null, i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %38 = call i64 (...) @GetLastError()
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %45 = call i64 @RegOpenKeyA(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32* %4)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %0
  %55 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %56 = call i32 @RegDeleteKeyA(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %58 = call i32 @RegDeleteKeyA(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %0
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @SetupCloseInfFile(i32 %60)
  %62 = load i8*, i8** @inffile, align 8
  %63 = call i32 @DeleteFileA(i8* %62)
  %64 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @RegCreateKeyA(i32, i8*, i32*) #2

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #2

declare dso_local i32 @create_inf_file(i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @SetupOpenInfFileA(i8*, i32*, i32, i32*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SetupInstallFromInfSectionA(i32*, i32, i8*, i32, i32, i8*, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #2

declare dso_local i32 @SetupCloseInfFile(i32) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
