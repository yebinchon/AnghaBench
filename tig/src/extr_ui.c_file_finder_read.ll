; ModuleID = '/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file_finder = type { %struct.TYPE_5__**, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.buffer = type { i64, i32 }
%struct.io = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ls-tree\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"--name-only\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"--full-name\00", align 1
@IO_RD = common dso_local global i32 0, align 4
@repo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_finder*, i8*)* @file_finder_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_finder_read(%struct.file_finder* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_finder*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [8 x i8*], align 16
  %8 = alloca %struct.buffer, align 8
  %9 = alloca %struct.io, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.file_finder* %0, %struct.file_finder** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @string_rev_is_null(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %15 ], [ %17, %16 ]
  store i8* %19, i8** %6, align 8
  %20 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 1
  store i8* null, i8** %28, align 8
  store i32 1, i32* %11, align 4
  %29 = load i32, i32* @IO_RD, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @repo, i32 0, i32 0), align 4
  %31 = getelementptr inbounds [8 x i8*], [8 x i8*]* %7, i64 0, i64 0
  %32 = call i32 @io_run(%struct.io* %9, i32 %29, i32 %30, i32* null, i8** %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %95

35:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %78, %35
  %37 = call i64 @io_get(%struct.io* %9, %struct.buffer* %8, i32 0, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %36
  %40 = load %struct.file_finder*, %struct.file_finder** %4, align 8
  %41 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %40, i32 0, i32 1
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @realloc_file_array(%struct.TYPE_5__*** %41, i64 %42, i64 2)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %81

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 4, %48
  %50 = call %struct.TYPE_5__* @calloc(i32 1, i64 %49)
  %51 = load %struct.file_finder*, %struct.file_finder** %4, align 8
  %52 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %53, i64 %54
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %55, align 8
  %56 = load %struct.file_finder*, %struct.file_finder** %4, align 8
  %57 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %81

64:                                               ; preds = %46
  %65 = load %struct.file_finder*, %struct.file_finder** %4, align 8
  %66 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %67, i64 %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @strncpy(i32 %72, i32 %74, i64 %76)
  br label %78

78:                                               ; preds = %64
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %10, align 8
  br label %36

81:                                               ; preds = %63, %45, %36
  %82 = call i64 @io_error(%struct.io* %9)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load %struct.file_finder*, %struct.file_finder** %4, align 8
  %86 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %85, i32 0, i32 0
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 1
  %89 = call i32 @realloc_file_array(%struct.TYPE_5__*** %86, i64 0, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84, %81
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %91, %84
  %93 = call i32 @io_done(%struct.io* %9)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %34
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @string_rev_is_null(i8*) #1

declare dso_local i32 @io_run(%struct.io*, i32, i32, i32*, i8**) #1

declare dso_local i64 @io_get(%struct.io*, %struct.buffer*, i32, i32) #1

declare dso_local i32 @realloc_file_array(%struct.TYPE_5__***, i64, i64) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i64) #1

declare dso_local i32 @strncpy(i32, i32, i64) #1

declare dso_local i64 @io_error(%struct.io*) #1

declare dso_local i32 @io_done(%struct.io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
