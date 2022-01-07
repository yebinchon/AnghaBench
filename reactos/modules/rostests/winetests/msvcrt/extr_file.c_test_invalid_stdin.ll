; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_invalid_stdin.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_invalid_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i8*, i8*, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@p_fopen_s = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"skipping invalid stdin tests\0A\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RegOpenCurrentUser failed: %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%s file stdin\00", align 1
@CREATE_DEFAULT_ERROR_MODE = common dso_local global i32 0, align 4
@NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"RegCloseKey failed: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_invalid_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invalid_stdin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* @p_fopen_s, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 @win_skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %62

19:                                               ; preds = %1
  %20 = load i32, i32* @KEY_READ, align 4
  %21 = call i64 @RegOpenCurrentUser(i32 %20, i32* %8)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 16, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 32)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 32, i32* %33, align 8
  %34 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %39 = call i8* @GetStdHandle(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %42 = call i8* @GetStdHandle(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @TRUE, align 4
  %47 = load i32, i32* @CREATE_DEFAULT_ERROR_MODE, align 4
  %48 = load i32, i32* @NORMAL_PRIORITY_CLASS, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @CreateProcessA(i32* null, i8* %14, i32* null, i32* null, i32 %46, i32 %49, i32* null, i32* null, %struct.TYPE_7__* %7, %struct.TYPE_9__* %5)
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @winetest_wait_child_process(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @RegCloseKey(i32 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %19, %17
  %63 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %10, align 4
  switch i32 %64, label %66 [
    i32 0, label %65
    i32 1, label %65
  ]

65:                                               ; preds = %62, %62
  ret void

66:                                               ; preds = %62
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i64 @RegOpenCurrentUser(i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i8* @GetStdHandle(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_9__*) #2

declare dso_local i32 @winetest_wait_child_process(i32) #2

declare dso_local i64 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
