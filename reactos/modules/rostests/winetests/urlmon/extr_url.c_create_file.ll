; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_create_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"CreateFile failed\0A\00", align 1
@test_file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @GENERIC_WRITE, align 4
  %16 = load i32, i32* @CREATE_ALWAYS, align 4
  %17 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %18 = call i64 @CreateFileA(i8* %14, i32 %15, i32 0, i32* null, i32 %16, i32 %17, i32* null)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %49

28:                                               ; preds = %2
  %29 = load i8*, i8** @test_file, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** @test_file, align 8
  %33 = call i32 @DeleteFileA(i8* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i8*, i8** %3, align 8
  store i8* %35, i8** @test_file, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call i32 @WriteFile(i64 %36, i8* %37, i32 %39, i32* %6, i32* null)
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @CloseHandle(i64 %41)
  %43 = load i32, i32* @MAX_PATH, align 4
  %44 = call i32 @GetCurrentDirectoryA(i32 %43, i32* %13)
  %45 = call i32 @lstrcatA(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @lstrcatA(i32* %13, i8* %46)
  %48 = call i32 @set_file_url(i32* %13)
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %34, %27
  %50 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %9, align 4
  switch i32 %51, label %53 [
    i32 0, label %52
    i32 1, label %52
  ]

52:                                               ; preds = %49, %49
  ret void

53:                                               ; preds = %49
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @GetCurrentDirectoryA(i32, i32*) #2

declare dso_local i32 @lstrcatA(i32*, i8*) #2

declare dso_local i32 @set_file_url(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
