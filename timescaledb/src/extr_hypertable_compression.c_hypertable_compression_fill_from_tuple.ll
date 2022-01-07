; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable_compression.c_hypertable_compression_fill_from_tuple.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable_compression.c_hypertable_compression_fill_from_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@Natts_hypertable_compression = common dso_local global i32 0, align 4
@Anum_hypertable_compression_hypertable_id = common dso_local global i32 0, align 4
@Anum_hypertable_compression_attname = common dso_local global i32 0, align 4
@Anum_hypertable_compression_algo_id = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@Anum_hypertable_compression_segmentby_column_index = common dso_local global i32 0, align 4
@Anum_hypertable_compression_orderby_column_index = common dso_local global i32 0, align 4
@Anum_hypertable_compression_orderby_asc = common dso_local global i32 0, align 4
@Anum_hypertable_compression_orderby_nullsfirst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @hypertable_compression_fill_from_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hypertable_compression_fill_from_tuple(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load i32, i32* @Natts_hypertable_compression, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @Natts_hypertable_compression, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @heap_deform_tuple(i32 %17, i32 %20, i32* %11, i32* %14)
  %22 = load i32, i32* @Anum_hypertable_compression_hypertable_id, align 4
  %23 = call i64 @AttrNumberGetAttrOffset(i32 %22)
  %24 = getelementptr inbounds i32, i32* %14, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32, i32* @Anum_hypertable_compression_attname, align 4
  %31 = call i64 @AttrNumberGetAttrOffset(i32 %30)
  %32 = getelementptr inbounds i32, i32* %14, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load i32, i32* @Anum_hypertable_compression_algo_id, align 4
  %39 = call i64 @AttrNumberGetAttrOffset(i32 %38)
  %40 = getelementptr inbounds i32, i32* %14, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load i32, i32* @Anum_hypertable_compression_hypertable_id, align 4
  %47 = call i64 @AttrNumberGetAttrOffset(i32 %46)
  %48 = getelementptr inbounds i32, i32* %11, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DatumGetInt32(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = load i32, i32* @Anum_hypertable_compression_attname, align 4
  %56 = call i64 @AttrNumberGetAttrOffset(i32 %55)
  %57 = getelementptr inbounds i32, i32* %11, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DatumGetName(i32 %58)
  %60 = load i32, i32* @NAMEDATALEN, align 4
  %61 = call i32 @memcpy(i32* %54, i32 %59, i32 %60)
  %62 = load i32, i32* @Anum_hypertable_compression_algo_id, align 4
  %63 = call i64 @AttrNumberGetAttrOffset(i32 %62)
  %64 = getelementptr inbounds i32, i32* %11, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @DatumGetInt16(i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @Anum_hypertable_compression_segmentby_column_index, align 4
  %70 = call i64 @AttrNumberGetAttrOffset(i32 %69)
  %71 = getelementptr inbounds i32, i32* %14, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i8* null, i8** %76, align 8
  br label %85

77:                                               ; preds = %2
  %78 = load i32, i32* @Anum_hypertable_compression_segmentby_column_index, align 4
  %79 = call i64 @AttrNumberGetAttrOffset(i32 %78)
  %80 = getelementptr inbounds i32, i32* %11, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @DatumGetInt16(i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %77, %74
  %86 = load i32, i32* @Anum_hypertable_compression_orderby_column_index, align 4
  %87 = call i64 @AttrNumberGetAttrOffset(i32 %86)
  %88 = getelementptr inbounds i32, i32* %14, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i8* null, i8** %93, align 8
  br label %132

94:                                               ; preds = %85
  %95 = load i32, i32* @Anum_hypertable_compression_orderby_asc, align 4
  %96 = call i64 @AttrNumberGetAttrOffset(i32 %95)
  %97 = getelementptr inbounds i32, i32* %14, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  %103 = load i32, i32* @Anum_hypertable_compression_orderby_nullsfirst, align 4
  %104 = call i64 @AttrNumberGetAttrOffset(i32 %103)
  %105 = getelementptr inbounds i32, i32* %14, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @Assert(i32 %109)
  %111 = load i32, i32* @Anum_hypertable_compression_orderby_column_index, align 4
  %112 = call i64 @AttrNumberGetAttrOffset(i32 %111)
  %113 = getelementptr inbounds i32, i32* %11, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @DatumGetInt16(i32 %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @Anum_hypertable_compression_orderby_asc, align 4
  %119 = call i64 @AttrNumberGetAttrOffset(i32 %118)
  %120 = getelementptr inbounds i32, i32* %11, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @BoolGetDatum(i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @Anum_hypertable_compression_orderby_nullsfirst, align 4
  %126 = call i64 @AttrNumberGetAttrOffset(i32 %125)
  %127 = getelementptr inbounds i32, i32* %11, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @BoolGetDatum(i32 %128)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %94, %91
  %133 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %133)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @heap_deform_tuple(i32, i32, i32*, i32*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #2

declare dso_local i32 @DatumGetInt32(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @DatumGetName(i32) #2

declare dso_local i8* @DatumGetInt16(i32) #2

declare dso_local i8* @BoolGetDatum(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
