; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_reset_io_accounting.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_reset_io_accounting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@_CGROUP_IO_ACCOUNTING_METRIC_MAX = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_reset_io_accounting(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_5__* %6)
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @_CGROUP_IO_ACCOUNTING_METRIC_MAX, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32, i32* @UINT64_MAX, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %13, i32* %18, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %5, align 8
  br label %8

22:                                               ; preds = %8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @unit_get_io_accounting_raw(%struct.TYPE_5__* %23, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @zero(i32 %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @unit_get_io_accounting_raw(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
