; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_create_cache_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_create_cache_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_txtA = common dso_local global i8* null, align 8
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"CreateFile failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@cache_file_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_cache_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_cache_file() #0 {
  %1 = alloca [6500 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i8*, i8** @test_txtA, align 8
  %12 = load i32, i32* @GENERIC_WRITE, align 4
  %13 = load i32, i32* @CREATE_ALWAYS, align 4
  %14 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %15 = call i64 @CreateFileA(i8* %11, i32 %12, i32 0, i32* null, i32 %13, i32 %14, i32* null)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  store i32 1, i32* %6, align 4
  br label %44

25:                                               ; preds = %0
  %26 = getelementptr inbounds [6500 x i8], [6500 x i8]* %1, i64 0, i64 0
  %27 = call i32 @memset(i8* %26, i8 signext 88, i32 6500)
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds [6500 x i8], [6500 x i8]* %1, i64 0, i64 0
  %30 = call i32 @WriteFile(i64 %28, i8* %29, i32 6500, i32* %5, i32* null)
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @CloseHandle(i64 %31)
  %33 = trunc i64 %8 to i32
  %34 = call i32 @memset(i8* %10, i8 signext 0, i32 %33)
  %35 = load i32, i32* @MAX_PATH, align 4
  %36 = call i32 @GetCurrentDirectoryA(i32 %35, i8* %10)
  %37 = call i32 @lstrcatA(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** @test_txtA, align 8
  %39 = call i32 @lstrcatA(i8* %10, i8* %38)
  %40 = load i32, i32* @CP_ACP, align 4
  %41 = load i32, i32* @cache_file_name, align 4
  %42 = load i32, i32* @MAX_PATH, align 4
  %43 = call i32 @MultiByteToWideChar(i32 %40, i32 0, i8* %10, i32 -1, i32 %41, i32 %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %25, %24
  %45 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %48 [
    i32 0, label %47
    i32 1, label %47
  ]

47:                                               ; preds = %44, %44
  ret void

48:                                               ; preds = %44
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
