; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_get_views_iterator.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_get_views_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.match_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, i8*)* @criteria_get_views_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @criteria_get_views_iterator(%struct.sway_container* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.match_data*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.match_data*
  store %struct.match_data* %7, %struct.match_data** %5, align 8
  %8 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %9 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.match_data*, %struct.match_data** %5, align 8
  %14 = getelementptr inbounds %struct.match_data, %struct.match_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @criteria_matches_view(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load %struct.match_data*, %struct.match_data** %5, align 8
  %23 = getelementptr inbounds %struct.match_data, %struct.match_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @list_add(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %12
  br label %30

30:                                               ; preds = %29, %2
  ret void
}

declare dso_local i64 @criteria_matches_view(i32, i32) #1

declare dso_local i32 @list_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
