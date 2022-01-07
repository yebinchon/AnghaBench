; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_minmax_indexscan.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_minmax_indexscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.minmax_indexscan.nulls = private unnamed_addr constant [2 x i32] [i32 1, i32 1], align 4
@BackwardScanDirection = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@MINMAX_NO_TUPLES = common dso_local global i32 0, align 4
@MINMAX_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @minmax_indexscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minmax_indexscan(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (...) @GetTransactionSnapshot()
  %17 = call i32 @index_beginscan(i32 %14, i32 %15, i32 %16, i32 0, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([2 x i32]* @__const.minmax_indexscan.nulls to i8*), i64 8, i1 false)
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @BackwardScanDirection, align 4
  %21 = call i32 @index_getnext(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @HeapTupleIsValid(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @RelationGetDescr(i32 %28)
  %30 = call i32 @heap_getattr(i32 %26, i32 %27, i32 %29, i32* %11)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %13, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %37
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %25, %4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @index_rescan(i32 %40, i32* null, i32 0, i32* null, i32 0)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ForwardScanDirection, align 4
  %44 = call i32 @index_getnext(i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @HeapTupleIsValid(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @RelationGetDescr(i32 %51)
  %53 = call i32 @heap_getattr(i32 %49, i32 %50, i32 %52, i32* %11)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %60
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %48, %39
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @index_endscan(i32 %63)
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %62
  %73 = load i32, i32* @MINMAX_NO_TUPLES, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @MINMAX_FOUND, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  ret i32 %77
}

declare dso_local i32 @index_beginscan(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @index_getnext(i32, i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @index_rescan(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @index_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
