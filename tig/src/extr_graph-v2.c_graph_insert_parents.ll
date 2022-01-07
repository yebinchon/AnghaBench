; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_insert_parents.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_insert_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_v2 = type { %struct.graph_row, %struct.graph_row, %struct.graph_row, %struct.graph_row }
%struct.graph_row = type { i32, %struct.graph_column* }
%struct.graph_column = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.graph_v2*)* @graph_insert_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_insert_parents(%struct.graph_v2* %0) #0 {
  %2 = alloca %struct.graph_v2*, align 8
  %3 = alloca %struct.graph_row*, align 8
  %4 = alloca %struct.graph_row*, align 8
  %5 = alloca %struct.graph_row*, align 8
  %6 = alloca %struct.graph_row*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.graph_column*, align 8
  %9 = alloca i64, align 8
  store %struct.graph_v2* %0, %struct.graph_v2** %2, align 8
  %10 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %11 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %10, i32 0, i32 3
  store %struct.graph_row* %11, %struct.graph_row** %3, align 8
  %12 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %13 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %12, i32 0, i32 2
  store %struct.graph_row* %13, %struct.graph_row** %4, align 8
  %14 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %15 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %14, i32 0, i32 1
  store %struct.graph_row* %15, %struct.graph_row** %5, align 8
  %16 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %17 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %16, i32 0, i32 0
  store %struct.graph_row* %17, %struct.graph_row** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %88, %1
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %21 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %18
  %25 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %26 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %25, i32 0, i32 1
  %27 = load %struct.graph_column*, %struct.graph_column** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %27, i64 %29
  store %struct.graph_column* %30, %struct.graph_column** %8, align 8
  %31 = load %struct.graph_column*, %struct.graph_column** %8, align 8
  %32 = call i64 @graph_column_has_commit(%struct.graph_column* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %87

34:                                               ; preds = %24
  %35 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %36 = call i64 @graph_find_free_column(%struct.graph_row* %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %39 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %34
  %44 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %45 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %44, i32 0, i32 1
  %46 = load %struct.graph_column*, %struct.graph_column** %45, align 8
  %47 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %48 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %46, i64 %51
  %53 = call i64 @graph_column_has_commit(%struct.graph_column* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %43
  %56 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %57 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %58 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %59 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.graph_column*, %struct.graph_column** %8, align 8
  %62 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @graph_insert_column(%struct.graph_v2* %56, %struct.graph_row* %57, i32 %60, i32* %63)
  %65 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %66 = load %struct.graph_row*, %struct.graph_row** %4, align 8
  %67 = load %struct.graph_row*, %struct.graph_row** %4, align 8
  %68 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @graph_insert_column(%struct.graph_v2* %65, %struct.graph_row* %66, i32 %69, i32* null)
  %71 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %72 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %73 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %74 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @graph_insert_column(%struct.graph_v2* %71, %struct.graph_row* %72, i32 %75, i32* null)
  br label %86

77:                                               ; preds = %43, %34
  %78 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %79 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %78, i32 0, i32 1
  %80 = load %struct.graph_column*, %struct.graph_column** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %80, i64 %81
  %83 = load %struct.graph_column*, %struct.graph_column** %8, align 8
  %84 = bitcast %struct.graph_column* %82 to i8*
  %85 = bitcast %struct.graph_column* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 8, i1 false)
  br label %86

86:                                               ; preds = %77, %55
  br label %87

87:                                               ; preds = %86, %24
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %18

91:                                               ; preds = %18
  ret void
}

declare dso_local i64 @graph_column_has_commit(%struct.graph_column*) #1

declare dso_local i64 @graph_find_free_column(%struct.graph_row*) #1

declare dso_local i32 @graph_insert_column(%struct.graph_v2*, %struct.graph_row*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
