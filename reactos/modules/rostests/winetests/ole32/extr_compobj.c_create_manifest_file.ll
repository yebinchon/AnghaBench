; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_create_manifest_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_create_manifest_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@manifest_path = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"CreateFile failed: %u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @create_manifest_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_manifest_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @CP_ACP, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = call i32 @MultiByteToWideChar(i32 %16, i32 0, i8* %17, i32 -1, i32* %15, i32 %18)
  %20 = load i32, i32* @manifest_path, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = load i32, i32* @manifest_path, align 4
  %23 = call i32 @GetFullPathNameW(i32* %15, i32 %21, i32 %22, i32* null)
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @GENERIC_WRITE, align 4
  %27 = load i32, i32* @CREATE_ALWAYS, align 4
  %28 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %29 = call i64 @CreateFileW(i32* %15, i32 %26, i32 0, i32* null, i32 %27, i32 %28, i32* null)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %49

41:                                               ; preds = %2
  %42 = load i64, i64* %8, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @WriteFile(i64 %42, i8* %43, i32 %44, i32* %7, i32* null)
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @CloseHandle(i64 %46)
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %41, %39
  %50 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @GetFullPathNameW(i32*, i32, i32, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
