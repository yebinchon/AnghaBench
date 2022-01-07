; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_insert_column.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_insert_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_column = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.graph_v2 = type { i32 }
%struct.graph_row = type { i64, %struct.graph_column* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.graph_column* (%struct.graph_v2*, %struct.graph_row*, i64, i8*)* @graph_insert_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.graph_column* @graph_insert_column(%struct.graph_v2* %0, %struct.graph_row* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.graph_column*, align 8
  %6 = alloca %struct.graph_v2*, align 8
  %7 = alloca %struct.graph_row*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.graph_column*, align 8
  store %struct.graph_v2* %0, %struct.graph_v2** %6, align 8
  store %struct.graph_row* %1, %struct.graph_row** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %12 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %11, i32 0, i32 1
  %13 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %14 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @realloc_graph_columns(%struct.graph_column** %12, i64 %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.graph_column* null, %struct.graph_column** %5, align 8
  br label %65

19:                                               ; preds = %4
  %20 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %21 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %20, i32 0, i32 1
  %22 = load %struct.graph_column*, %struct.graph_column** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %22, i64 %23
  store %struct.graph_column* %24, %struct.graph_column** %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %27 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %19
  %31 = load %struct.graph_column*, %struct.graph_column** %10, align 8
  %32 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %31, i64 1
  %33 = load %struct.graph_column*, %struct.graph_column** %10, align 8
  %34 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %35 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %36, %37
  %39 = mul i64 16, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memmove(%struct.graph_column* %32, %struct.graph_column* %33, i32 %40)
  br label %42

42:                                               ; preds = %30, %19
  %43 = load i8*, i8** %9, align 8
  %44 = call i8* @intern_string(i8* %43)
  store i8* %44, i8** %9, align 8
  %45 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %46 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.graph_column*, %struct.graph_column** %10, align 8
  %50 = call i32 @memset(%struct.graph_column* %49, i32 0, i32 16)
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.graph_column*, %struct.graph_column** %10, align 8
  %53 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.graph_v2*, %struct.graph_v2** %6, align 8
  %55 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.graph_column*, %struct.graph_column** %10, align 8
  %62 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.graph_column*, %struct.graph_column** %10, align 8
  store %struct.graph_column* %64, %struct.graph_column** %5, align 8
  br label %65

65:                                               ; preds = %42, %18
  %66 = load %struct.graph_column*, %struct.graph_column** %5, align 8
  ret %struct.graph_column* %66
}

declare dso_local i32 @realloc_graph_columns(%struct.graph_column**, i64, i32) #1

declare dso_local i32 @memmove(%struct.graph_column*, %struct.graph_column*, i32) #1

declare dso_local i8* @intern_string(i8*) #1

declare dso_local i32 @memset(%struct.graph_column*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
