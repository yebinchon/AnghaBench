; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_enter.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i64 }

@LINE_DIFF_STAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed to find file diff\00", align 1
@REQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_common_enter(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %8 = load %struct.line*, %struct.line** %7, align 8
  %9 = getelementptr inbounds %struct.line, %struct.line* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LINE_DIFF_STAT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.view*, %struct.view** %5, align 8
  %15 = load %struct.line*, %struct.line** %7, align 8
  %16 = call %struct.line* @diff_find_header_from_stat(%struct.view* %14, %struct.line* %15)
  store %struct.line* %16, %struct.line** %7, align 8
  %17 = load %struct.line*, %struct.line** %7, align 8
  %18 = icmp ne %struct.line* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = call i32 @report(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @REQ_NONE, align 4
  store i32 %21, i32* %4, align 4
  br label %39

22:                                               ; preds = %13
  %23 = load %struct.view*, %struct.view** %5, align 8
  %24 = load %struct.line*, %struct.line** %7, align 8
  %25 = load %struct.view*, %struct.view** %5, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds %struct.line, %struct.line* %24, i64 %29
  %31 = call i32 @select_view_line(%struct.view* %23, %struct.line* %30)
  %32 = call i32 (...) @report_clear()
  %33 = load i32, i32* @REQ_NONE, align 4
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.view*, %struct.view** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.line*, %struct.line** %7, align 8
  %38 = call i32 @pager_request(%struct.view* %35, i32 %36, %struct.line* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %22, %19
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.line* @diff_find_header_from_stat(%struct.view*, %struct.line*) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @select_view_line(%struct.view*, %struct.line*) #1

declare dso_local i32 @report_clear(...) #1

declare dso_local i32 @pager_request(%struct.view*, i32, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
