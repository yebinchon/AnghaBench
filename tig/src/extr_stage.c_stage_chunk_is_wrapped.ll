; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_chunk_is_wrapped.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_chunk_is_wrapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i64 }

@LINE_DIFF_HEADER = common dso_local global i32 0, align 4
@opt_wrap_lines = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.line*)* @stage_chunk_is_wrapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stage_chunk_is_wrapped(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  %7 = load %struct.view*, %struct.view** %4, align 8
  %8 = load %struct.line*, %struct.line** %5, align 8
  %9 = load i32, i32* @LINE_DIFF_HEADER, align 4
  %10 = call %struct.line* @find_prev_line_by_type(%struct.view* %7, %struct.line* %8, i32 %9)
  store %struct.line* %10, %struct.line** %6, align 8
  %11 = load i32, i32* @opt_wrap_lines, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.line*, %struct.line** %6, align 8
  %15 = icmp ne %struct.line* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %29, %17
  %19 = load %struct.line*, %struct.line** %6, align 8
  %20 = load %struct.line*, %struct.line** %5, align 8
  %21 = icmp ule %struct.line* %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.line*, %struct.line** %6, align 8
  %24 = getelementptr inbounds %struct.line, %struct.line* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %33

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.line*, %struct.line** %6, align 8
  %31 = getelementptr inbounds %struct.line, %struct.line* %30, i32 1
  store %struct.line* %31, %struct.line** %6, align 8
  br label %18

32:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %27, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.line* @find_prev_line_by_type(%struct.view*, %struct.line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
