; ModuleID = '/home/carl/AnghaBench/tig/src/extr_pager.c_pager_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_pager.c_pager_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed run the diff-highlight program: %s\00", align 1
@opt_diff_highlight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pager_read(%struct.view* %0, %struct.buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.buffer*, %struct.buffer** %6, align 8
  %9 = icmp ne %struct.buffer* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = load %struct.view*, %struct.view** %5, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @diff_done_highlight(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @opt_diff_highlight, align 4
  %18 = call i32 @report(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %4, align 4
  br label %29

19:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.view*, %struct.view** %5, align 8
  %22 = load %struct.buffer*, %struct.buffer** %6, align 8
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.view*, %struct.view** %5, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @diff_common_read(%struct.view* %21, i32 %24, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %20, %19, %16
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @diff_done_highlight(i32) #1

declare dso_local i32 @report(i8*, i32) #1

declare dso_local i32 @diff_common_read(%struct.view*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
