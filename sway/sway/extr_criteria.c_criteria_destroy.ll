; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.criteria = type { %struct.criteria*, %struct.criteria*, %struct.criteria*, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @criteria_destroy(%struct.criteria* %0) #0 {
  %2 = alloca %struct.criteria*, align 8
  store %struct.criteria* %0, %struct.criteria** %2, align 8
  %3 = load %struct.criteria*, %struct.criteria** %2, align 8
  %4 = getelementptr inbounds %struct.criteria, %struct.criteria* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @pattern_destroy(i32 %5)
  %7 = load %struct.criteria*, %struct.criteria** %2, align 8
  %8 = getelementptr inbounds %struct.criteria, %struct.criteria* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pattern_destroy(i32 %9)
  %11 = load %struct.criteria*, %struct.criteria** %2, align 8
  %12 = getelementptr inbounds %struct.criteria, %struct.criteria* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pattern_destroy(i32 %13)
  %15 = load %struct.criteria*, %struct.criteria** %2, align 8
  %16 = getelementptr inbounds %struct.criteria, %struct.criteria* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pattern_destroy(i32 %17)
  %19 = load %struct.criteria*, %struct.criteria** %2, align 8
  %20 = getelementptr inbounds %struct.criteria, %struct.criteria* %19, i32 0, i32 2
  %21 = load %struct.criteria*, %struct.criteria** %20, align 8
  %22 = call i32 @free(%struct.criteria* %21)
  %23 = load %struct.criteria*, %struct.criteria** %2, align 8
  %24 = getelementptr inbounds %struct.criteria, %struct.criteria* %23, i32 0, i32 1
  %25 = load %struct.criteria*, %struct.criteria** %24, align 8
  %26 = call i32 @free(%struct.criteria* %25)
  %27 = load %struct.criteria*, %struct.criteria** %2, align 8
  %28 = getelementptr inbounds %struct.criteria, %struct.criteria* %27, i32 0, i32 0
  %29 = load %struct.criteria*, %struct.criteria** %28, align 8
  %30 = call i32 @free(%struct.criteria* %29)
  %31 = load %struct.criteria*, %struct.criteria** %2, align 8
  %32 = call i32 @free(%struct.criteria* %31)
  ret void
}

declare dso_local i32 @pattern_destroy(i32) #1

declare dso_local i32 @free(%struct.criteria*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
