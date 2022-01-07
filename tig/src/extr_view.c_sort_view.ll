; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_sort_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_sort_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_6__*, %struct.sort_state }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sort_state = type { i32, %struct.TYPE_6__* }

@VIEW_COLUMN_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_view(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sort_state*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.view*, %struct.view** %3, align 8
  %7 = getelementptr inbounds %struct.view, %struct.view* %6, i32 0, i32 1
  store %struct.sort_state* %7, %struct.sort_state** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %45
  %12 = load %struct.sort_state*, %struct.sort_state** %5, align 8
  %13 = getelementptr inbounds %struct.sort_state, %struct.sort_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.sort_state*, %struct.sort_state** %5, align 8
  %20 = getelementptr inbounds %struct.sort_state, %struct.sort_state* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  br label %28

24:                                               ; preds = %11
  %25 = load %struct.view*, %struct.view** %3, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi %struct.TYPE_6__* [ %23, %18 ], [ %27, %24 ]
  %30 = load %struct.sort_state*, %struct.sort_state** %5, align 8
  %31 = getelementptr inbounds %struct.sort_state, %struct.sort_state* %30, i32 0, i32 1
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.view*, %struct.view** %3, align 8
  %33 = call i64 @get_sort_field(%struct.view* %32)
  %34 = load i64, i64* @VIEW_COLUMN_ID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.sort_state*, %struct.sort_state** %5, align 8
  %38 = getelementptr inbounds %struct.sort_state, %struct.sort_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %11

46:                                               ; preds = %36, %28
  br label %47

47:                                               ; preds = %46
  br label %57

48:                                               ; preds = %2
  %49 = load %struct.sort_state*, %struct.sort_state** %5, align 8
  %50 = getelementptr inbounds %struct.sort_state, %struct.sort_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.sort_state*, %struct.sort_state** %5, align 8
  %56 = getelementptr inbounds %struct.sort_state, %struct.sort_state* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %48, %47
  %58 = load %struct.view*, %struct.view** %3, align 8
  %59 = call i32 @resort_view(%struct.view* %58, i32 0)
  ret void
}

declare dso_local i64 @get_sort_field(%struct.view*) #1

declare dso_local i32 @resort_view(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
