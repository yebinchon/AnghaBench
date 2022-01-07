; ModuleID = '/home/carl/AnghaBench/tig/src/extr_grep.c_grep_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_grep.c_grep_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64*, i32, %struct.grep_state* }
%struct.grep_state = type { i8*, i32 }
%struct.buffer = type { i8* }
%struct.grep_line = type { i8*, i32, i32 }
%struct.line = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"No matches found\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@LINE_DELIMITER = common dso_local global i32 0, align 4
@LINE_FILE = common dso_local global i32 0, align 4
@LINE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.buffer*, i32)* @grep_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_read(%struct.view* %0, %struct.buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.grep_state*, align 8
  %9 = alloca %struct.grep_line*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.line*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.view*, %struct.view** %5, align 8
  %16 = getelementptr inbounds %struct.view, %struct.view* %15, i32 0, i32 2
  %17 = load %struct.grep_state*, %struct.grep_state** %16, align 8
  store %struct.grep_state* %17, %struct.grep_state** %8, align 8
  %18 = load %struct.buffer*, %struct.buffer** %6, align 8
  %19 = icmp ne %struct.buffer* %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %3
  %21 = load %struct.grep_state*, %struct.grep_state** %8, align 8
  %22 = getelementptr inbounds %struct.grep_state, %struct.grep_state* %21, i32 0, i32 0
  store i8* null, i8** %22, align 8
  %23 = load %struct.view*, %struct.view** %5, align 8
  %24 = getelementptr inbounds %struct.view, %struct.view* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.view*, %struct.view** %5, align 8
  %29 = getelementptr inbounds %struct.view, %struct.view* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 0, i64* %31, align 8
  %32 = call i32 @report(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %27, %20
  store i32 1, i32* %4, align 4
  br label %128

34:                                               ; preds = %3
  %35 = load %struct.buffer*, %struct.buffer** %6, align 8
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.view*, %struct.view** %5, align 8
  %42 = load i32, i32* @LINE_DELIMITER, align 4
  %43 = call i32* @add_line_nodata(%struct.view* %41, i32 %42)
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %128

46:                                               ; preds = %34
  %47 = load %struct.buffer*, %struct.buffer** %6, align 8
  %48 = load %struct.buffer*, %struct.buffer** %6, align 8
  %49 = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @io_memchr(%struct.buffer* %47, i8* %50, i32 0)
  store i8* %51, i8** %10, align 8
  %52 = load %struct.buffer*, %struct.buffer** %6, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i8* @io_memchr(%struct.buffer* %52, i8* %53, i32 0)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57, %46
  store i32 1, i32* %4, align 4
  br label %128

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = call i64 @strlen(i8* %62)
  store i64 %63, i64* %14, align 8
  %64 = load %struct.buffer*, %struct.buffer** %6, align 8
  %65 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @get_path(i8* %66)
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %128

71:                                               ; preds = %61
  %72 = load %struct.grep_state*, %struct.grep_state** %8, align 8
  %73 = getelementptr inbounds %struct.grep_state, %struct.grep_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %13, align 8
  %78 = load %struct.grep_state*, %struct.grep_state** %8, align 8
  %79 = getelementptr inbounds %struct.grep_state, %struct.grep_state* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.view*, %struct.view** %5, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* @LINE_FILE, align 4
  %86 = call i32 @add_line_text(%struct.view* %83, i8* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %128

89:                                               ; preds = %82, %76, %71
  %90 = load %struct.view*, %struct.view** %5, align 8
  %91 = load i32, i32* @LINE_DEFAULT, align 4
  %92 = load i64, i64* %14, align 8
  %93 = call %struct.line* @add_line_alloc(%struct.view* %90, %struct.grep_line** %9, i32 %91, i64 %92, i32 0)
  store %struct.line* %93, %struct.line** %12, align 8
  %94 = load %struct.line*, %struct.line** %12, align 8
  %95 = icmp ne %struct.line* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %128

97:                                               ; preds = %89
  %98 = load i8*, i8** %13, align 8
  %99 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %100 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @atoi(i8* %101)
  %103 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %104 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %106 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %97
  %110 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %111 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %109, %97
  %115 = load %struct.grep_line*, %struct.grep_line** %9, align 8
  %116 = getelementptr inbounds %struct.grep_line, %struct.grep_line* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load i64, i64* %14, align 8
  %120 = add i64 %119, 1
  %121 = call i32 @strncpy(i32 %117, i8* %118, i64 %120)
  %122 = load %struct.view*, %struct.view** %5, align 8
  %123 = load %struct.line*, %struct.line** %12, align 8
  %124 = call i32 @view_column_info_update(%struct.view* %122, %struct.line* %123)
  %125 = load i8*, i8** %13, align 8
  %126 = load %struct.grep_state*, %struct.grep_state** %8, align 8
  %127 = getelementptr inbounds %struct.grep_state, %struct.grep_state* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  store i32 1, i32* %4, align 4
  br label %128

128:                                              ; preds = %114, %96, %88, %70, %60, %40, %33
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @add_line_nodata(%struct.view*, i32) #1

declare dso_local i8* @io_memchr(%struct.buffer*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @get_path(i8*) #1

declare dso_local i32 @add_line_text(%struct.view*, i8*, i32) #1

declare dso_local %struct.line* @add_line_alloc(%struct.view*, %struct.grep_line**, i32, i64, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @view_column_info_update(%struct.view*, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
