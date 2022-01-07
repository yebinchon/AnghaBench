; ModuleID = '/home/carl/AnghaBench/streem/src/extr_graph.c_show_graph.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_graph.c_show_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bar_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bar_data*)* @show_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_graph(%struct.bar_data* %0) #0 {
  %2 = alloca %struct.bar_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bar_data* %0, %struct.bar_data** %2, align 8
  store i32 1, i32* %3, align 4
  %6 = load %struct.bar_data*, %struct.bar_data** %2, align 8
  %7 = call i32 @show_yaxis(%struct.bar_data* %6)
  %8 = load %struct.bar_data*, %struct.bar_data** %2, align 8
  %9 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.bar_data*, %struct.bar_data** %2, align 8
  %14 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.bar_data*, %struct.bar_data** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = call i32 @show_bar(%struct.bar_data* %18, i32 %19, i32 %20)
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %11

26:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.bar_data*, %struct.bar_data** %2, align 8
  %30 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.bar_data*, %struct.bar_data** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = call i32 @show_bar(%struct.bar_data* %34, i32 %35, i32 %36)
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %27

42:                                               ; preds = %27
  ret void
}

declare dso_local i32 @show_yaxis(%struct.bar_data*) #1

declare dso_local i32 @show_bar(%struct.bar_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
