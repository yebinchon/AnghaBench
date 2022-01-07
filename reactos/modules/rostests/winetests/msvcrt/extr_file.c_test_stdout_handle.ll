; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_stdout_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_stdout_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fdopen.err\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@CREATE_DEFAULT_ERROR_MODE = common dso_local global i32 0, align 4
@NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: Error file shouldn't contain data\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: Wrong error data (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: Wrong stdout data (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"%s: Stdout file shouldn't contain data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i64, i64, i8*)* @test_stdout_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stdout_handle(%struct.TYPE_8__* %0, i8* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 16, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @TRUE, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @GENERIC_READ, align 4
  %20 = load i32, i32* @GENERIC_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FILE_SHARE_READ, align 4
  %23 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CREATE_ALWAYS, align 4
  %26 = call i64 @CreateFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, %struct.TYPE_9__* %13, i32 %25, i32 0, i32* null)
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %31 = call i8* @GetStdHandle(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %38 = call i8* @GetStdHandle(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32, i32* @CREATE_DEFAULT_ERROR_MODE, align 4
  %44 = load i32, i32* @NORMAL_PRIORITY_CLASS, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = call i32 @CreateProcessA(i32* null, i8* %41, i32* null, i32* null, i32 %42, i32 %45, i32* null, i32* null, %struct.TYPE_8__* %46, %struct.TYPE_10__* %14)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @winetest_wait_child_process(i32 %49)
  %51 = load i64, i64* %12, align 8
  %52 = call i8* @read_file(i64 %51)
  store i8* %52, i8** %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %5
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 (i32, i8*, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %69

60:                                               ; preds = %5
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 (i32, i8*, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %66, i8* %67)
  br label %69

69:                                               ; preds = %60, %55
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  %74 = call i8* @read_file(i64 %73)
  store i8* %74, i8** %11, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 (i32, i8*, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %83, i8* %84)
  br label %91

86:                                               ; preds = %72
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 (i32, i8*, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %86, %77
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @CloseHandle(i64 %93)
  %95 = call i32 @DeleteFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, %struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i8* @GetStdHandle(i32) #1

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_10__*) #1

declare dso_local i32 @winetest_wait_child_process(i32) #1

declare dso_local i8* @read_file(i64) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @DeleteFileA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
