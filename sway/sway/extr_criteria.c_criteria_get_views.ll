; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_get_views.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_get_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.criteria = type { i32 }
%struct.match_data = type { i32*, %struct.criteria* }

@criteria_get_views_iterator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @criteria_get_views(%struct.criteria* %0) #0 {
  %2 = alloca %struct.criteria*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.match_data, align 8
  store %struct.criteria* %0, %struct.criteria** %2, align 8
  %5 = call i32* (...) @create_list()
  store i32* %5, i32** %3, align 8
  %6 = getelementptr inbounds %struct.match_data, %struct.match_data* %4, i32 0, i32 0
  %7 = load i32*, i32** %3, align 8
  store i32* %7, i32** %6, align 8
  %8 = getelementptr inbounds %struct.match_data, %struct.match_data* %4, i32 0, i32 1
  %9 = load %struct.criteria*, %struct.criteria** %2, align 8
  store %struct.criteria* %9, %struct.criteria** %8, align 8
  %10 = load i32, i32* @criteria_get_views_iterator, align 4
  %11 = call i32 @root_for_each_container(i32 %10, %struct.match_data* %4)
  %12 = load i32*, i32** %3, align 8
  ret i32* %12
}

declare dso_local i32* @create_list(...) #1

declare dso_local i32 @root_for_each_container(i32, %struct.match_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
