; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_create.c_set_statistics_on_compressed_table.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_create.c_set_statistics_on_compressed_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@AttributeRelationId = common dso_local global i64 0, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@CUSTOM_TYPE_COMPRESSED_DATA = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"column \22%s\22 of compressed table \22%s\22 does not exist\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @set_statistics_on_compressed_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_statistics_on_compressed_table(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %13 = call i32 @relation_open(i64 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* @AttributeRelationId, align 8
  %15 = load i32, i32* @RowExclusiveLock, align 4
  %16 = call i32 @relation_open(i64 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.TYPE_13__* @RelationGetDescr(i32 %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  %19 = load i32, i32* @CUSTOM_TYPE_COMPRESSED_DATA, align 4
  %20 = call %struct.TYPE_16__* @ts_custom_type_cache_get(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %89, %1
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %92

29:                                               ; preds = %23
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.TYPE_15__* @TupleDescAttr(%struct.TYPE_13__* %30, i32 %31)
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %10, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %89

38:                                               ; preds = %29
  %39 = load i64, i64* %2, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @NameStr(i32 %42)
  %44 = call %struct.TYPE_14__* @SearchSysCacheCopyAttName(i64 %39, i32 %43)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %9, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = call i32 @HeapTupleIsValid(%struct.TYPE_14__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %51 = call i32 @errcode(i32 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @NameStr(i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @RelationGetRelationName(i32 %56)
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %57)
  %59 = call i32 @ereport(i32 %49, i32 %58)
  br label %60

60:                                               ; preds = %48, %38
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = call i64 @GETSTRUCT(%struct.TYPE_14__* %61)
  %63 = inttoptr i64 %62 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %8, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  br label %75

72:                                               ; preds = %60
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  store i32 1000, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = call i32 @CatalogTupleUpdate(i32 %76, i32* %78, %struct.TYPE_14__* %79)
  %81 = load i32, i32* @RelationRelationId, align 4
  %82 = load i64, i64* %2, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @InvokeObjectPostAlterHook(i32 %81, i64 %82, i64 %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %88 = call i32 @heap_freetuple(%struct.TYPE_14__* %87)
  br label %89

89:                                               ; preds = %75, %37
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %23

92:                                               ; preds = %23
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @RelationClose(i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @RelationClose(i32 %95)
  ret void
}

declare dso_local i32 @relation_open(i64, i32) #1

declare dso_local %struct.TYPE_13__* @RelationGetDescr(i32) #1

declare dso_local %struct.TYPE_16__* @ts_custom_type_cache_get(i32) #1

declare dso_local %struct.TYPE_15__* @TupleDescAttr(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_14__* @SearchSysCacheCopyAttName(i64, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_14__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_14__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i64, i64) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_14__*) #1

declare dso_local i32 @RelationClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
