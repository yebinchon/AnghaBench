; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_resort_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_resort_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@sorting_view = common dso_local global %struct.view* null, align 8
@sort_view_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resort_view(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.view*, %struct.view** %3, align 8
  store %struct.view* %7, %struct.view** @sorting_view, align 8
  %8 = load %struct.view*, %struct.view** %3, align 8
  %9 = getelementptr inbounds %struct.view, %struct.view* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.view*, %struct.view** %3, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @sort_view_compare, align 4
  %15 = call i32 @qsort(%struct.TYPE_2__* %10, i64 %13, i32 8, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  store i64 1, i64* %6, align 8
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.view*, %struct.view** %3, align 8
  %22 = getelementptr inbounds %struct.view, %struct.view* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.view*, %struct.view** %3, align 8
  %27 = getelementptr inbounds %struct.view, %struct.view* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  %37 = load %struct.view*, %struct.view** %3, align 8
  %38 = getelementptr inbounds %struct.view, %struct.view* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %35, i64* %42, align 8
  br label %43

43:                                               ; preds = %34, %25
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %19

47:                                               ; preds = %19
  br label %48

48:                                               ; preds = %47, %2
  ret void
}

declare dso_local i32 @qsort(%struct.TYPE_2__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
