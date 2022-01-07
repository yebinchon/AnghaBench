; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_interpolate.c_gapfill_fetch_sample.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_interpolate.c_gapfill_fetch_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"interpolate RECORD arguments must have 2 elements\00", align 1
@RECORDOID = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"first argument of interpolate returned record must match used timestamp datatype\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"second argument of interpolate returned record must match used interpolate datatype\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32*)* @gapfill_fetch_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gapfill_fetch_sample(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @gapfill_exec_expr(%struct.TYPE_17__* %15, i32* %16, i32* %13)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %135

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @DatumGetHeapTupleHeader(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @HeapTupleHeaderGetNatts(i32 %26)
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i64, i64* @RECORDOID, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @HeapTupleHeaderGetTypeId(i32 %37)
  %39 = icmp eq i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @Assert(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @HeapTupleHeaderGetTypeId(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @HeapTupleHeaderGetTypMod(i32 %44)
  %46 = call i32 @lookup_rowtype_tupdesc(i64 %43, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @HeapTupleHeaderGetDatumLength(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %51 = call i32 @ItemPointerSetInvalid(i32* %50)
  %52 = load i32, i32* @InvalidOid, align 4
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.TYPE_13__* @TupleDescAttr(i32 %56, i32 0)
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %62, i64 %65
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %59, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %35
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = call i32 @errmsg(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @ereport(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %35
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.TYPE_13__* @TupleDescAttr(i32 %78, i32 1)
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %81, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %92 = call i32 @ereport(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %77
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = call i32 @heap_getattr(%struct.TYPE_16__* %10, i32 1, i32 %94, i32* %96)
  store i32 %97, i32* %12, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %132, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @gapfill_datum_get_internal(i32 %103, i32 %106)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = call i32 @heap_getattr(%struct.TYPE_16__* %10, i32 2, i32 %110, i32* %112)
  store i32 %113, i32* %12, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %102
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @datumCopy(i32 %119, i32 %123, i32 %127)
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %118, %102
  br label %132

132:                                              ; preds = %131, %93
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @DecrTupleDescRefCount(i32 %133)
  br label %135

135:                                              ; preds = %132, %20
  ret void
}

declare dso_local i32 @gapfill_exec_expr(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @DatumGetHeapTupleHeader(i32) #1

declare dso_local i32 @HeapTupleHeaderGetNatts(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @HeapTupleHeaderGetTypeId(i32) #1

declare dso_local i32 @lookup_rowtype_tupdesc(i64, i32) #1

declare dso_local i32 @HeapTupleHeaderGetTypMod(i32) #1

declare dso_local i32 @HeapTupleHeaderGetDatumLength(i32) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local %struct.TYPE_13__* @TupleDescAttr(i32, i32) #1

declare dso_local i32 @heap_getattr(%struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i32 @gapfill_datum_get_internal(i32, i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @DecrTupleDescRefCount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
