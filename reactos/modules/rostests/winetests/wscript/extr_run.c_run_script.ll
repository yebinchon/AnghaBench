; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wscript/extr_run.c_run_script.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wscript/extr_run.c_run_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no script extension\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"test%s\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"CreateFile failed: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not write to file: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32)* @run_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_script(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strrchr(i8* %20, i8 signext 46)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 1, i32* %15, align 4
  br label %63

29:                                               ; preds = %4
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @GENERIC_WRITE, align 4
  %33 = load i32, i32* @CREATE_ALWAYS, align 4
  %34 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %35 = call i64 @CreateFileA(i8* %19, i32 %32, i32 0, i32* null, i32 %33, i32 %34, i32* null)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %38 = icmp ne i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i32 1, i32* %15, align 4
  br label %63

46:                                               ; preds = %29
  %47 = load i64, i64* %12, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @WriteFile(i64 %47, i8* %48, i64 %49, i32* %13, i32* null)
  store i32 %50, i32* %14, align 4
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @CloseHandle(i64 %51)
  %53 = load i32, i32* %14, align 4
  %54 = call i32 (...) @GetLastError()
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  store i32 1, i32* %15, align 4
  br label %63

59:                                               ; preds = %46
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @run_script_file(i8* %19, i32 %60)
  %62 = call i32 @DeleteFileA(i8* %19)
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %59, %58, %45, %28
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %15, align 4
  switch i32 %65, label %67 [
    i32 0, label %66
    i32 1, label %66
  ]

66:                                               ; preds = %63, %63
  ret void

67:                                               ; preds = %63
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @WriteFile(i64, i8*, i64, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @run_script_file(i8*, i32) #2

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
