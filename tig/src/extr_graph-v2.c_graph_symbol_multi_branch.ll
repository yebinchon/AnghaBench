; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_multi_branch.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_multi_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_symbol = type { i64, i64, i64, i64, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graph_symbol*)* @graph_symbol_multi_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_symbol_multi_branch(%struct.graph_symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.graph_symbol*, align 8
  store %struct.graph_symbol* %0, %struct.graph_symbol** %3, align 8
  %4 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %5 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %4, i32 0, i32 7
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

9:                                                ; preds = %1
  %10 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %11 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %50

15:                                               ; preds = %9
  %16 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %17 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %50

21:                                               ; preds = %15
  %22 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %23 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %28 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %33 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31, %26, %21
  %37 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %38 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %50

42:                                               ; preds = %36
  %43 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %44 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %50

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %31
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %47, %41, %20, %14, %8
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
