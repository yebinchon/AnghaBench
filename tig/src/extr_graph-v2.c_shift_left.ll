; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_shift_left.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_shift_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_row = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graph_row*, %struct.graph_row*, i32)* @shift_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shift_left(%struct.graph_row* %0, %struct.graph_row* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.graph_row*, align 8
  %6 = alloca %struct.graph_row*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.graph_row* %0, %struct.graph_row** %5, align 8
  store %struct.graph_row* %1, %struct.graph_row** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %10 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = call i32 @graph_column_has_commit(%struct.TYPE_2__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %61, %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %21
  %25 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %26 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = call i32 @graph_column_has_commit(%struct.TYPE_2__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %61

34:                                               ; preds = %24
  %35 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %36 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %44 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %42, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %61

53:                                               ; preds = %34
  %54 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %55 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @continued_down(%struct.graph_row* %54, %struct.graph_row* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %65

60:                                               ; preds = %53
  br label %64

61:                                               ; preds = %52, %33
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %21

64:                                               ; preds = %60, %21
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %59, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @graph_column_has_commit(%struct.TYPE_2__*) #1

declare dso_local i32 @continued_down(%struct.graph_row*, %struct.graph_row*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
