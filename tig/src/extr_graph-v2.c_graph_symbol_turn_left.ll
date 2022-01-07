; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_turn_left.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_turn_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_symbol = type { i64, i64, i64, i64, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graph_symbol*)* @graph_symbol_turn_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_symbol_turn_left(%struct.graph_symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.graph_symbol*, align 8
  store %struct.graph_symbol* %0, %struct.graph_symbol** %3, align 8
  %4 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %5 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %10 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %15 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %54

19:                                               ; preds = %13, %8, %1
  %20 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %21 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %54

25:                                               ; preds = %19
  %26 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %27 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %32 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %37 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35, %30, %25
  %41 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %42 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %54

46:                                               ; preds = %40
  %47 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %48 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %54

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %35
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %51, %45, %24, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
