; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_directory.c_tear_down_attribute_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_directory.c_tear_down_attribute_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@test_dir_count = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@testfiles = common dso_local global %struct.TYPE_2__* null, align 8
@dotW = common dso_local global i32 0, align 4
@dotdotW = common dso_local global i32 0, align 4
@backslashW = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@ERROR_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to rmdir %s, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to rm %s, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @tear_down_attribute_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tear_down_attribute_test(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %91, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @test_dir_count, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %94

12:                                               ; preds = %8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testfiles, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @dotW, align 4
  %24 = call i64 @lstrcmpW(i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %12
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testfiles, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @dotdotW, align 4
  %34 = call i64 @lstrcmpW(i32 %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26, %12
  store i32 4, i32* %7, align 4
  br label %87

37:                                               ; preds = %26
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @lstrcpyW(i32* %16, i32* %38)
  %40 = load i32, i32* @backslashW, align 4
  %41 = call i32 @lstrcatW(i32* %16, i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testfiles, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lstrcatW(i32* %16, i32 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testfiles, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %37
  %59 = call i32 @RemoveDirectoryW(i32* %16)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = call i64 (...) @GetLastError()
  %64 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ true, %58 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @wine_dbgstr_w(i32* %16)
  %70 = call i64 (...) @GetLastError()
  %71 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %69, i64 %70)
  br label %86

72:                                               ; preds = %37
  %73 = call i32 @DeleteFileW(i32* %16)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = call i64 (...) @GetLastError()
  %78 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ true, %72 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @wine_dbgstr_w(i32* %16)
  %84 = call i64 (...) @GetLastError()
  %85 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %80, %66
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %36
  %88 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %7, align 4
  switch i32 %89, label %97 [
    i32 0, label %90
    i32 4, label %91
  ]

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %87
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %8

94:                                               ; preds = %8
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @RemoveDirectoryW(i32* %95)
  ret void

97:                                               ; preds = %87
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @lstrcmpW(i32, i32) #2

declare dso_local i32 @lstrcpyW(i32*, i32*) #2

declare dso_local i32 @lstrcatW(i32*, i32) #2

declare dso_local i32 @RemoveDirectoryW(i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, i64) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @wine_dbgstr_w(i32*) #2

declare dso_local i32 @DeleteFileW(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
