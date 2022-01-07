; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_pageheap.c_DisplayImageInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_pageheap.c_DisplayImageInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i32] [i32 68, i32 73, i32 73, i32 58, i32 32, i32 82, i32 101, i32 103, i32 79, i32 112, i32 101, i32 110, i32 75, i32 101, i32 121, i32 69, i32 120, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 32, i32 40, i32 37, i32 100, i32 41, i32 10, i32 0], align 4
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i32] [i32 71, i32 108, i32 111, i32 98, i32 97, i32 108, i32 70, i32 108, i32 97, i32 103, i32 0], align 4
@FLG_HEAP_PAGE_ALLOCS = common dso_local global i32 0, align 4
@Image = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [10 x i32] [i32 112, i32 97, i32 116, i32 104, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@ImageExecOptionsString = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [36 x i32] [i32 9, i32 37, i32 115, i32 58, i32 32, i32 112, i32 97, i32 103, i32 101, i32 32, i32 104, i32 101, i32 97, i32 112, i32 32, i32 101, i32 110, i32 97, i32 98, i32 108, i32 101, i32 100, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 102, i32 108, i32 97, i32 103, i32 115, i32 32, i32 40, i32 0], align 4
@.str.4 = private unnamed_addr constant [41 x i32] [i32 80, i32 97, i32 103, i32 101, i32 32, i32 104, i32 101, i32 97, i32 112, i32 32, i32 105, i32 115, i32 32, i32 101, i32 110, i32 97, i32 98, i32 108, i32 101, i32 100, i32 32, i32 102, i32 111, i32 114, i32 32, i32 37, i32 115, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 102, i32 108, i32 97, i32 103, i32 115, i32 32, i32 40, i32 0], align 4
@.str.5 = private unnamed_addr constant [14 x i32] [i32 80, i32 97, i32 103, i32 101, i32 72, i32 101, i32 97, i32 112, i32 70, i32 108, i32 97, i32 103, i32 115, i32 0], align 4
@.str.6 = private unnamed_addr constant [6 x i32] [i32 102, i32 117, i32 108, i32 108, i32 32, i32 0], align 4
@.str.7 = private unnamed_addr constant [7 x i32] [i32 116, i32 114, i32 97, i32 99, i32 101, i32 115, i32 0], align 4
@.str.8 = private unnamed_addr constant [3 x i32] [i32 41, i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i8**)* @DisplayImageInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DisplayImageInfo(i32 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @KEY_READ, align 4
  %16 = call i64 @RegOpenKeyExW(i32 %13, i8* %14, i32 0, i32 %15, i32* %11)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = call i32 (i8*, ...) @wprintf(i8* bitcast ([31 x i32]* @.str to i8*), i64 %21)
  %23 = load i8*, i8** @FALSE, align 8
  store i8* %23, i8** %4, align 8
  br label %71

24:                                               ; preds = %3
  %25 = load i8*, i8** @FALSE, align 8
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @ReadSZFlagsFromRegistry(i32 %26, i8* bitcast ([11 x i32]* @.str.1 to i8*))
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @FLG_HEAP_PAGE_ALLOCS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %24
  %33 = load i32*, i32** @Image, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i8**, i8*** %7, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** @ImageExecOptionsString, align 8
  %41 = call i32 (i8*, ...) @wprintf(i8* bitcast ([10 x i32]* @.str.2 to i8*), i8* %40)
  %42 = load i8*, i8** @TRUE, align 8
  %43 = load i8**, i8*** %7, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i8*, ...) @wprintf(i8* bitcast ([36 x i32]* @.str.3 to i8*), i8* %45)
  br label %50

47:                                               ; preds = %32
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (i8*, ...) @wprintf(i8* bitcast ([41 x i32]* @.str.4 to i8*), i8* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @ReadSZFlagsFromRegistry(i32 %51, i8* bitcast ([14 x i32]* @.str.5 to i8*))
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 (i8*, ...) @wprintf(i8* bitcast ([6 x i32]* @.str.6 to i8*))
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (i8*, ...) @wprintf(i8* bitcast ([7 x i32]* @.str.7 to i8*))
  br label %64

64:                                               ; preds = %62, %58
  %65 = call i32 (i8*, ...) @wprintf(i8* bitcast ([3 x i32]* @.str.8 to i8*))
  %66 = load i8*, i8** @TRUE, align 8
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %64, %24
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @RegCloseKey(i32 %68)
  %70 = load i8*, i8** %9, align 8
  store i8* %70, i8** %4, align 8
  br label %71

71:                                               ; preds = %67, %20
  %72 = load i8*, i8** %4, align 8
  ret i8* %72
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i32 @ReadSZFlagsFromRegistry(i32, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
