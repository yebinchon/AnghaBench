; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_planner.c_involves_hypertable.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_planner.c_involves_hypertable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @involves_hypertable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @involves_hypertable(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %38 [
    i32 130, label %10
    i32 128, label %10
    i32 129, label %32
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @planner_rt_fetch(i32 %13, i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @is_append_parent(%struct.TYPE_5__* %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %10
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @is_append_child(%struct.TYPE_5__* %21, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %39

26:                                               ; preds = %20, %10
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @involves_ts_hypertable_relid(i32* %27, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @involves_hypertable_relid_set(i32* %33, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %32, %26, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32* @planner_rt_fetch(i32, i32*) #1

declare dso_local i32 @is_append_parent(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @is_append_child(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @involves_ts_hypertable_relid(i32*, i32) #1

declare dso_local i32 @involves_hypertable_relid_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
