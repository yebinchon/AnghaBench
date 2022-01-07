; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_interval.c_ts_interval_from_tuple.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_interval.c_ts_interval_from_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@Natts_ts_interval = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@Anum_is_time_interval = common dso_local global i32 0, align 4
@Anum_time_interval = common dso_local global i32 0, align 4
@Anum_integer_interval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ts_interval_from_tuple(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %12 = load i32, i32* @Natts_ts_interval, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @Natts_ts_interval, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @DatumGetHeapTupleHeader(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @HeapTupleHeaderGetTypeId(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @HeapTupleHeaderGetTypMod(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @lookup_rowtype_tupdesc(i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @HeapTupleHeaderGetDatumLength(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %32 = call i32 @ItemPointerSetInvalid(i32* %31)
  %33 = load i32, i32* @InvalidOid, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @heap_deform_tuple(%struct.TYPE_6__* %7, i32 %37, i64* %18, i32* %15)
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @DecrTupleDescRefCount(i32 %39)
  %41 = call %struct.TYPE_7__* @palloc0(i32 16)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %8, align 8
  %42 = load i32, i32* @Anum_is_time_interval, align 4
  %43 = call i64 @AttrNumberGetAttrOffset(i32 %42)
  %44 = getelementptr inbounds i32, i32* %15, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load i32, i32* @Anum_is_time_interval, align 4
  %51 = call i64 @AttrNumberGetAttrOffset(i32 %50)
  %52 = getelementptr inbounds i64, i64* %18, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %1
  %61 = load i32, i32* @Anum_time_interval, align 4
  %62 = call i64 @AttrNumberGetAttrOffset(i32 %61)
  %63 = getelementptr inbounds i32, i32* %15, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = load i32, i32* @Anum_integer_interval, align 4
  %70 = call i64 @AttrNumberGetAttrOffset(i32 %69)
  %71 = getelementptr inbounds i32, i32* %15, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Assert(i32 %72)
  %74 = load i32, i32* @Anum_time_interval, align 4
  %75 = call i64 @AttrNumberGetAttrOffset(i32 %74)
  %76 = getelementptr inbounds i64, i64* %18, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i32* @DatumGetIntervalP(i64 %77)
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %103

82:                                               ; preds = %1
  %83 = load i32, i32* @Anum_time_interval, align 4
  %84 = call i64 @AttrNumberGetAttrOffset(i32 %83)
  %85 = getelementptr inbounds i32, i32* %15, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @Assert(i32 %86)
  %88 = load i32, i32* @Anum_integer_interval, align 4
  %89 = call i64 @AttrNumberGetAttrOffset(i32 %88)
  %90 = getelementptr inbounds i32, i32* %15, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @Assert(i32 %94)
  %96 = load i32, i32* @Anum_integer_interval, align 4
  %97 = call i64 @AttrNumberGetAttrOffset(i32 %96)
  %98 = getelementptr inbounds i64, i64* %18, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @DatumGetInt64(i64 %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %82, %60
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %105)
  ret %struct.TYPE_7__* %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DatumGetHeapTupleHeader(i64) #2

declare dso_local i32 @HeapTupleHeaderGetTypeId(i32) #2

declare dso_local i32 @HeapTupleHeaderGetTypMod(i32) #2

declare dso_local i32 @lookup_rowtype_tupdesc(i32, i32) #2

declare dso_local i32 @HeapTupleHeaderGetDatumLength(i32) #2

declare dso_local i32 @ItemPointerSetInvalid(i32*) #2

declare dso_local i32 @heap_deform_tuple(%struct.TYPE_6__*, i32, i64*, i32*) #2

declare dso_local i32 @DecrTupleDescRefCount(i32) #2

declare dso_local %struct.TYPE_7__* @palloc0(i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #2

declare dso_local i32* @DatumGetIntervalP(i64) #2

declare dso_local i32 @DatumGetInt64(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
