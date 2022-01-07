; ModuleID = '/home/carl/AnghaBench/tig/src/extr_grep.c_grep_get_column_data.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_grep.c_grep_get_column_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view_column = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.view = type { i32 }
%struct.line = type { i64 }
%struct.view_column_data = type { i8*, i64*, i32*, %struct.view_column* }
%struct.grep_line = type { i8*, i64*, i32 }

@LINE_DELIMITER = common dso_local global i64 0, align 8
@grep_get_column_data.separator_column = internal global %struct.view_column zeroinitializer, align 4
@VIEW_COLUMN_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@grep_get_column_data.file_name_column = internal global %struct.view_column zeroinitializer, align 4
@VIEW_COLUMN_FILE_NAME = common dso_local global i32 0, align 4
@FILENAME_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.line*, %struct.view_column_data*)* @grep_get_column_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_get_column_data(%struct.view* %0, %struct.line* %1, %struct.view_column_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca %struct.view_column_data*, align 8
  %8 = alloca %struct.grep_line*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.line* %1, %struct.line** %6, align 8
  store %struct.view_column_data* %2, %struct.view_column_data** %7, align 8
  %9 = load %struct.line*, %struct.line** %6, align 8
  %10 = call %struct.grep_line* @grep_get_line(%struct.line* %9)
  store %struct.grep_line* %10, %struct.grep_line** %8, align 8
  %11 = load %struct.line*, %struct.line** %6, align 8
  %12 = getelementptr inbounds %struct.line, %struct.line* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LINE_DELIMITER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @VIEW_COLUMN_TEXT, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.view_column, %struct.view_column* @grep_get_column_data.separator_column, i32 0, i32 1), align 4
  %18 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %19 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %18, i32 0, i32 3
  store %struct.view_column* @grep_get_column_data.separator_column, %struct.view_column** %19, align 8
  %20 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %21 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  store i32 1, i32* %4, align 4
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.grep_line*, %struct.grep_line** %8, align 8
  %24 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.grep_line*, %struct.grep_line** %8, align 8
  %30 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @VIEW_COLUMN_FILE_NAME, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.view_column, %struct.view_column* @grep_get_column_data.file_name_column, i32 0, i32 1), align 4
  %36 = load i32, i32* @FILENAME_ALWAYS, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.view_column, %struct.view_column* @grep_get_column_data.file_name_column, i32 0, i32 0, i32 0, i32 0), align 4
  %37 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %38 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %37, i32 0, i32 3
  store %struct.view_column* @grep_get_column_data.file_name_column, %struct.view_column** %38, align 8
  br label %39

39:                                               ; preds = %34, %28, %22
  %40 = load %struct.grep_line*, %struct.grep_line** %8, align 8
  %41 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %40, i32 0, i32 2
  %42 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %43 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.grep_line*, %struct.grep_line** %8, align 8
  %45 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %48 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %47, i32 0, i32 1
  store i64* %46, i64** %48, align 8
  %49 = load %struct.grep_line*, %struct.grep_line** %8, align 8
  %50 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %53 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %39, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.grep_line* @grep_get_line(%struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
