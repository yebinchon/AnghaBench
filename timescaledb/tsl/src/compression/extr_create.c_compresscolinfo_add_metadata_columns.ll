; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_create.c_compresscolinfo_add_metadata_columns.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_create.c_compresscolinfo_add_metadata_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i8* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@COMPRESSION_COLUMN_METADATA_COUNT_NAME = common dso_local global i32 0, align 4
@INT4OID = common dso_local global i32 0, align 4
@COMPRESSION_COLUMN_METADATA_SEQUENCE_NUM_NAME = common dso_local global i32 0, align 4
@TYPECACHE_LT_OPR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"invalid order by column type: could not identify an less-than operator for type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_14__*)* @compresscolinfo_add_metadata_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compresscolinfo_add_metadata_columns(%struct.TYPE_17__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @COMPRESSION_COLUMN_METADATA_COUNT_NAME, align 4
  %14 = load i32, i32* @INT4OID, align 4
  %15 = call i32 @makeColumnDef(i32 %13, i32 %14, i32 -1, i32 0)
  %16 = call i8* @lappend(i8* %12, i32 %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @COMPRESSION_COLUMN_METADATA_SEQUENCE_NUM_NAME, align 4
  %23 = load i32, i32* @INT4OID, align 4
  %24 = call i32 @makeColumnDef(i32 %22, i32 %23, i32 -1, i32 0)
  %25 = call i8* @lappend(i8* %21, i32 %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %121, %2
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %124

34:                                               ; preds = %28
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %120

44:                                               ; preds = %34
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i64 %49
  %51 = bitcast %struct.TYPE_16__* %6 to i8*
  %52 = bitcast %struct.TYPE_16__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @NameStr(i32 %57)
  %59 = call i32 @get_attnum(i32 %55, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = call i32 @RelationGetDescr(%struct.TYPE_14__* %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @AttrNumberGetAttrOffset(i32 %62)
  %64 = call %struct.TYPE_15__* @TupleDescAttr(i32 %61, i32 %63)
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %8, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TYPECACHE_LT_OPR, align 4
  %69 = call %struct.TYPE_13__* @lookup_type_cache(i32 %67, i32 %68)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %9, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @OidIsValid(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %44
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @format_type_be(i32 %81)
  %83 = call i32 @errmsg(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = call i32 @ereport(i32 %76, i32 %83)
  br label %85

85:                                               ; preds = %75, %44
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %93
  %95 = call i32 @compression_column_segment_min_name(%struct.TYPE_16__* %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @makeColumnDef(i32 %95, i32 %98, i32 -1, i32 0)
  %100 = call i8* @lappend(i8* %88, i32 %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i64 %110
  %112 = call i32 @compression_column_segment_max_name(%struct.TYPE_16__* %111)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @makeColumnDef(i32 %112, i32 %115, i32 -1, i32 0)
  %117 = call i8* @lappend(i8* %105, i32 %116)
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %85, %34
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %28

124:                                              ; preds = %28
  ret void
}

declare dso_local i8* @lappend(i8*, i32) #1

declare dso_local i32 @makeColumnDef(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_attnum(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local %struct.TYPE_15__* @TupleDescAttr(i32, i32) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_14__*) #1

declare dso_local i32 @AttrNumberGetAttrOffset(i32) #1

declare dso_local %struct.TYPE_13__* @lookup_type_cache(i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @compression_column_segment_min_name(%struct.TYPE_16__*) #1

declare dso_local i32 @compression_column_segment_max_name(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
