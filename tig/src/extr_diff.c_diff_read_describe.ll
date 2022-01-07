; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_read_describe.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_read_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.buffer = type { i32 }
%struct.diff_state = type { i32 }
%struct.line = type { i32 }

@LINE_PP_REFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Refs: \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.buffer*, %struct.diff_state*)* @diff_read_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_read_describe(%struct.view* %0, %struct.buffer* %1, %struct.diff_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca %struct.diff_state*, align 8
  %8 = alloca %struct.line*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store %struct.diff_state* %2, %struct.diff_state** %7, align 8
  %11 = load %struct.view*, %struct.view** %5, align 8
  %12 = load %struct.view*, %struct.view** %5, align 8
  %13 = getelementptr inbounds %struct.view, %struct.view* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LINE_PP_REFS, align 4
  %16 = call %struct.line* @find_next_line_by_type(%struct.view* %11, i32 %14, i32 %15)
  store %struct.line* %16, %struct.line** %8, align 8
  %17 = load %struct.line*, %struct.line** %8, align 8
  %18 = icmp ne %struct.line* %17, null
  br i1 %18, label %19, label %47

19:                                               ; preds = %3
  %20 = load %struct.buffer*, %struct.buffer** %6, align 8
  %21 = icmp ne %struct.buffer* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load %struct.buffer*, %struct.buffer** %6, align 8
  %24 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @string_trim(i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load %struct.line*, %struct.line** %8, align 8
  %28 = call i32 @box_text(%struct.line* %27)
  %29 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %22
  %39 = load %struct.view*, %struct.view** %5, align 8
  %40 = load %struct.line*, %struct.line** %8, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @append_line_format(%struct.view* %39, %struct.line* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %48

46:                                               ; preds = %38, %22
  br label %47

47:                                               ; preds = %46, %19, %3
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.line* @find_next_line_by_type(%struct.view*, i32, i32) #1

declare dso_local i8* @string_trim(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @box_text(%struct.line*) #1

declare dso_local i32 @append_line_format(%struct.view*, %struct.line*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
