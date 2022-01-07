; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_create.c_cagg_add_trigger_hypertable.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_create.c_cagg_add_trigger_hypertable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIGGER_TYPE_INSERT = common dso_local global i32 0, align 4
@TRIGGER_TYPE_UPDATE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_DELETE = common dso_local global i32 0, align 4
@INTERNAL_SCHEMA_NAME = common dso_local global i8* null, align 8
@CAGG_INVALIDATION_TRIGGER = common dso_local global i8* null, align 8
@CAGGINVAL_TRIGGER_NAME = common dso_local global i32 0, align 4
@TRIGGER_TYPE_AFTER = common dso_local global i32 0, align 4
@T_CreateTrigStmt = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"could not create continuous aggregate trigger\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @cagg_add_trigger_hypertable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cagg_add_trigger_hypertable(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i8* @get_rel_name(i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @get_rel_namespace(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @get_namespace_name(i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %21 = load i32, i32* @TRIGGER_TYPE_INSERT, align 4
  %22 = load i32, i32* @TRIGGER_TYPE_UPDATE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @TRIGGER_TYPE_DELETE, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %20, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @makeString(i8* %27)
  %29 = call i32 @list_make1(i32 %28)
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %31 = load i8*, i8** @INTERNAL_SCHEMA_NAME, align 8
  %32 = call i32 @makeString(i8* %31)
  %33 = load i8*, i8** @CAGG_INVALIDATION_TRIGGER, align 8
  %34 = call i32 @makeString(i8* %33)
  %35 = call i32 @list_make2(i32 %32, i32 %34)
  store i32 %35, i32* %30, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @makeRangeVar(i8* %37, i8* %38, i32 -1)
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  %41 = load i32, i32* @CAGGINVAL_TRIGGER_NAME, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  %43 = load i32, i32* @TRIGGER_TYPE_AFTER, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 7
  %45 = load i32, i32* @T_CreateTrigStmt, align 4
  store i32 %45, i32* %44, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @CAGGINVAL_TRIGGER_NAME, align 4
  %48 = call i64 @check_trigger_exists_hypertable(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  br label %74

51:                                               ; preds = %2
  %52 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32* @ts_hypertable_cache_get_entry(i32* %53, i32 %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @ts_hypertable_create_trigger(i32* %56, %struct.TYPE_6__* %11, i32* null)
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = bitcast %struct.TYPE_5__* %5 to i8*
  %60 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @OidIsValid(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %51
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 @ereport(i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %51
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @ts_cache_release(i32* %72)
  br label %74

74:                                               ; preds = %71, %50
  ret void
}

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @get_rel_namespace(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @list_make1(i32) #1

declare dso_local i32 @makeString(i8*) #1

declare dso_local i32 @list_make2(i32, i32) #1

declare dso_local i32 @makeRangeVar(i8*, i8*, i32) #1

declare dso_local i64 @check_trigger_exists_hypertable(i32, i32) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local i32* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @ts_hypertable_create_trigger(i32*, %struct.TYPE_6__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
