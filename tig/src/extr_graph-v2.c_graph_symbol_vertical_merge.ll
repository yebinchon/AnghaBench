; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_vertical_merge.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_vertical_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_symbol = type { i32, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graph_symbol*)* @graph_symbol_vertical_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_symbol_vertical_merge(%struct.graph_symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.graph_symbol*, align 8
  store %struct.graph_symbol* %0, %struct.graph_symbol** %3, align 8
  %4 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %5 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %4, i32 0, i32 11
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

9:                                                ; preds = %1
  %10 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %11 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %16 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %21 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %75

25:                                               ; preds = %19, %14, %9
  %26 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %27 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %32 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %75

36:                                               ; preds = %30, %25
  %37 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %38 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %75

42:                                               ; preds = %36
  %43 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %44 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %75

48:                                               ; preds = %42
  %49 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %50 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %55 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %60 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %65 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %70 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store i32 1, i32* %2, align 4
  br label %75

74:                                               ; preds = %68, %63, %58, %53, %48
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %73, %47, %41, %35, %24, %8
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
