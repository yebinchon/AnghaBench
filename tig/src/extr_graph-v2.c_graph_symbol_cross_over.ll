; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_cross_over.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_cross_over.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_symbol = type { i64, i64, i64, i64, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graph_symbol*)* @graph_symbol_cross_over to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_symbol_cross_over(%struct.graph_symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.graph_symbol*, align 8
  store %struct.graph_symbol* %0, %struct.graph_symbol** %3, align 8
  %4 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %5 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %4, i32 0, i32 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

9:                                                ; preds = %1
  %10 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %11 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %55

15:                                               ; preds = %9
  %16 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %17 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %22 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %27 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %55

31:                                               ; preds = %25, %20, %15
  %32 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %33 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %55

37:                                               ; preds = %31
  %38 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %39 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %44 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %55

48:                                               ; preds = %42, %37
  %49 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %50 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %55

54:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %53, %47, %36, %30, %14, %8
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
