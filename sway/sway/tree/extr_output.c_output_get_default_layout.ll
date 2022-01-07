; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_get_default_layout.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_get_default_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.sway_output = type { i64, i64 }

@config = common dso_local global %struct.TYPE_2__* null, align 8
@L_NONE = common dso_local global i64 0, align 8
@L_VERT = common dso_local global i32 0, align 4
@L_HORIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @output_get_default_layout(%struct.sway_output* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sway_output*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @L_NONE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @L_NONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %14
  %26 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %27 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %30 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @L_VERT, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @L_HORIZ, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33, %20, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
