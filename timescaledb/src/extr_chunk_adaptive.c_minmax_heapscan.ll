; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_minmax_heapscan.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_minmax_heapscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@__const.minmax_heapscan.nulls = private unnamed_addr constant [2 x i32] [i32 1, i32 1], align 4
@TYPECACHE_CMP_PROC = common dso_local global i32 0, align 4
@TYPECACHE_CMP_PROC_FINFO = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"no comparison function for type %u\00", align 1
@ForwardScanDirection = common dso_local global i32 0, align 4
@MINMAX_NO_TUPLES = common dso_local global i32 0, align 4
@MINMAX_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @minmax_heapscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minmax_heapscan(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([2 x i32]* @__const.minmax_heapscan.nulls to i8*), i64 8, i1 false)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TYPECACHE_CMP_PROC, align 4
  %18 = load i32, i32* @TYPECACHE_CMP_PROC_FINFO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.TYPE_3__* @lookup_type_cache(i32 %16, i32 %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %11, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %22 = icmp eq %struct.TYPE_3__* null, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OidIsValid(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23, %4
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @elog(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (...) @GetTransactionSnapshot()
  %36 = call i32 @heap_beginscan(i32 %34, i32 %35, i32 0, i32* null)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %89, %50, %33
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ForwardScanDirection, align 4
  %40 = call i32* @heap_getnext(i32 %38, i32 %39)
  store i32* %40, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %90

42:                                               ; preds = %37
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @RelationGetDescr(i32 %45)
  %47 = call i32 @heap_getattr(i32* %43, i32 %44, i32 %46, i32* %13)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %37

51:                                               ; preds = %42
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FunctionCall2(i32* %57, i32 %58, i32 %61)
  %63 = call i64 @DatumGetInt32(i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55, %51
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %55
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @FunctionCall2(i32* %76, i32 %77, i32 %80)
  %82 = call i64 @DatumGetInt32(i32 %81)
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74, %70
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %74
  br label %37

90:                                               ; preds = %37
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @heap_endscan(i32 %91)
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %90
  %101 = load i32, i32* @MINMAX_NO_TUPLES, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @MINMAX_FOUND, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_3__* @lookup_type_cache(i32, i32) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local i32 @heap_beginscan(i32, i32, i32, i32*) #2

declare dso_local i32 @GetTransactionSnapshot(...) #2

declare dso_local i32* @heap_getnext(i32, i32) #2

declare dso_local i32 @heap_getattr(i32*, i32, i32, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i64 @DatumGetInt32(i32) #2

declare dso_local i32 @FunctionCall2(i32*, i32, i32) #2

declare dso_local i32 @heap_endscan(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
