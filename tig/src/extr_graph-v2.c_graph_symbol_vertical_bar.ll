; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_vertical_bar.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_vertical_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_symbol = type { i64, i64, i64, i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graph_symbol*)* @graph_symbol_vertical_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_symbol_vertical_bar(%struct.graph_symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.graph_symbol*, align 8
  store %struct.graph_symbol* %0, %struct.graph_symbol** %3, align 8
  %4 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %5 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

9:                                                ; preds = %1
  %10 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %11 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %46

15:                                               ; preds = %9
  %16 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %17 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %46

21:                                               ; preds = %15
  %22 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %23 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %46

27:                                               ; preds = %21
  %28 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %29 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %46

33:                                               ; preds = %27
  %34 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %35 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %46

39:                                               ; preds = %33
  %40 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %41 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %46

45:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44, %38, %32, %26, %20, %14, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
