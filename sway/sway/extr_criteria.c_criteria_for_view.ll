; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_for_view.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_for_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.criteria** }
%struct.criteria = type { i32 }
%struct.sway_view = type { i32 }

@config = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @criteria_for_view(%struct.sway_view* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.criteria*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = call %struct.TYPE_6__* (...) @create_list()
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %43, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.criteria**, %struct.criteria*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.criteria*, %struct.criteria** %22, i64 %24
  %26 = load %struct.criteria*, %struct.criteria** %25, align 8
  store %struct.criteria* %26, %struct.criteria** %8, align 8
  %27 = load %struct.criteria*, %struct.criteria** %8, align 8
  %28 = getelementptr inbounds %struct.criteria, %struct.criteria* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %19
  %34 = load %struct.criteria*, %struct.criteria** %8, align 8
  %35 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %36 = call i64 @criteria_matches_view(%struct.criteria* %34, %struct.sway_view* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = load %struct.criteria*, %struct.criteria** %8, align 8
  %41 = call i32 @list_add(%struct.TYPE_6__* %39, %struct.criteria* %40)
  br label %42

42:                                               ; preds = %38, %33, %19
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %13

46:                                               ; preds = %13
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %47
}

declare dso_local %struct.TYPE_6__* @create_list(...) #1

declare dso_local i64 @criteria_matches_view(%struct.criteria*, %struct.sway_view*) #1

declare dso_local i32 @list_add(%struct.TYPE_6__*, %struct.criteria*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
