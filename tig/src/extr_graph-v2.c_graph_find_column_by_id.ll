; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_find_column_by_id.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_find_column_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_row = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.graph_row*, i8*)* @graph_find_column_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @graph_find_column_by_id(%struct.graph_row* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.graph_row*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.graph_row* %0, %struct.graph_row** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.graph_row*, %struct.graph_row** %4, align 8
  %9 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.graph_row*, %struct.graph_row** %4, align 8
  %14 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %11
  %18 = load %struct.graph_row*, %struct.graph_row** %4, align 8
  %19 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = call i32 @graph_column_has_commit(%struct.TYPE_2__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.graph_row*, %struct.graph_row** %4, align 8
  %28 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %6, align 8
  br label %46

33:                                               ; preds = %25, %17
  %34 = load %struct.graph_row*, %struct.graph_row** %4, align 8
  %35 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %3, align 8
  br label %52

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %11

50:                                               ; preds = %11
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i32 @graph_column_has_commit(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
