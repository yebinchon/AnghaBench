; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_fill_empty_columns.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_fill_empty_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_v2 = type { %struct.graph_row }
%struct.graph_row = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.graph_v2*)* @graph_fill_empty_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_fill_empty_columns(%struct.graph_v2* %0) #0 {
  %2 = alloca %struct.graph_v2*, align 8
  %3 = alloca %struct.graph_row*, align 8
  %4 = alloca i32, align 4
  store %struct.graph_v2* %0, %struct.graph_v2** %2, align 8
  %5 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %6 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %5, i32 0, i32 0
  store %struct.graph_row* %6, %struct.graph_row** %3, align 8
  %7 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %8 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 2
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %39, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %16 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @graph_column_has_commit(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %14
  %24 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %25 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %33 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  br label %38

38:                                               ; preds = %23, %14
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  br label %11

42:                                               ; preds = %11
  ret void
}

declare dso_local i32 @graph_column_has_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
