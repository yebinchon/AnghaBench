; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_create_table.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_create_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64 }

@T_CreateStmt = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@INTERNAL_SCHEMA_NAME = common dso_local global i32 0, align 4
@SECURITY_LOCAL_USERID_CHANGE = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ts_chunk_create_table(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_reloptions(i32 %19)
  store i32 %20, i32* %16, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 2
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @NameStr(i32 %25)
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @NameStr(i32 %30)
  %32 = call i32 @makeRangeVar(i32 %26, i32 %31, i32 0)
  %33 = call i32 @list_make1(i32 %32)
  store i32 %33, i32* %21, align 4
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 3
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @NameStr(i32 %38)
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NameStr(i32 %43)
  %45 = call i32 @makeRangeVar(i32 %39, i32 %44, i32 0)
  store i32 %45, i32* %34, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 4
  %47 = load i32, i32* @T_CreateStmt, align 4
  store i32 %47, i32* %46, align 4
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AccessShareLock, align 4
  %52 = call %struct.TYPE_22__* @heap_open(i32 %50, i32 %51)
  store %struct.TYPE_22__* %52, %struct.TYPE_22__** %7, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* @INTERNAL_SCHEMA_NAME, align 4
  %57 = call i64 @namestrcmp(i32* %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %3
  %60 = call %struct.TYPE_18__* (...) @ts_catalog_database_info_get()
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  br label %69

63:                                               ; preds = %3
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %63, %59
  %70 = call i32 @GetUserIdAndSecContext(i64* %12, i32* %9)
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SECURITY_LOCAL_USERID_CHANGE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @SetUserIdAndSecContext(i64 %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* @RELKIND_RELATION, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @DefineRelation(%struct.TYPE_25__* %10, i32 %81, i64 %86, i32* null, i32* null)
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = bitcast %struct.TYPE_23__* %8 to i8*
  %90 = bitcast %struct.TYPE_23__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 8, i1 false)
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @create_toast_table(%struct.TYPE_25__* %10, i64 %92)
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %80
  %98 = load i64, i64* %12, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @SetUserIdAndSecContext(i64 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %80
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @set_attoptions(%struct.TYPE_22__* %102, i64 %104)
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %107 = load i32, i32* @AccessShareLock, align 4
  %108 = call i32 @heap_close(%struct.TYPE_22__* %106, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  ret i64 %110
}

declare dso_local i32 @get_reloptions(i32) #1

declare dso_local i32 @list_make1(i32) #1

declare dso_local i32 @makeRangeVar(i32, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local %struct.TYPE_22__* @heap_open(i32, i32) #1

declare dso_local i64 @namestrcmp(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @ts_catalog_database_info_get(...) #1

declare dso_local i32 @GetUserIdAndSecContext(i64*, i32*) #1

declare dso_local i32 @SetUserIdAndSecContext(i64, i32) #1

declare dso_local i64 @DefineRelation(%struct.TYPE_25__*, i32, i64, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @create_toast_table(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @set_attoptions(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @heap_close(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
