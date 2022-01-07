; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_cross_merge.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_cross_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_symbol = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graph_symbol*)* @graph_symbol_cross_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_symbol_cross_merge(%struct.graph_symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.graph_symbol*, align 8
  store %struct.graph_symbol* %0, %struct.graph_symbol** %3, align 8
  %4 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %5 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %4, i32 0, i32 10
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

9:                                                ; preds = %1
  %10 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %11 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %16 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %21 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %74

25:                                               ; preds = %19, %14, %9
  %26 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %27 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %32 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %74

36:                                               ; preds = %30, %25
  %37 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %38 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %74

42:                                               ; preds = %36
  %43 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %44 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %49 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %54 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %59 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %64 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %69 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %74

73:                                               ; preds = %67, %62, %57, %52, %47, %42
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %72, %41, %35, %24, %8
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
