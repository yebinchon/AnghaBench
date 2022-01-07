; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_install.c_test_registry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_install.c_test_registry.c"
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
@.str.4 = private unnamed_addr constant [15 x i8] c"DefaultInstall\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Software\\Wine\\setupapitest\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Didn't expect the registry key to exist\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"Expected source inf to exist, last error was %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_registry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_registry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %11 = call i32 @RegCreateKeyA(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %1)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %17 = call i64 @RegOpenKeyA(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %1)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i8*, i8** @inffile, align 8
  %23 = load i32, i32* @cmdline_inf_reg, align 4
  %24 = call i32 @create_inf_file(i8* %22, i32 %23)
  %25 = load i8*, i8** @CURR_DIR, align 8
  %26 = load i8*, i8** @inffile, align 8
  %27 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %25, i8* %26)
  %28 = call i32 @run_cmdline(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 128, i8* %9)
  %29 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %30 = call i64 @RegOpenKeyA(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %1)
  store i64 %30, i64* %2, align 8
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %0
  %40 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %41 = call i32 @RegDeleteKeyA(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %43 = call i32 @RegDeleteKeyA(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %0
  %45 = load i8*, i8** @inffile, align 8
  %46 = call i32 @DeleteFileA(i8* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  %50 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @RegCreateKeyA(i32, i8*, i32*) #2

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #2

declare dso_local i32 @create_inf_file(i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @run_cmdline(i8*, i32, i8*) #2

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
