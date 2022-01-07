; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_ts_hypertable_create_compressed.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_ts_hypertable_create_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@AccessExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TS_HYPERTABLE_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"table \22%s\22 is already a hypertable\00", align 1
@INTERNAL_SCHEMA_NAME = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_hypertable_create_compressed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = call i32 (...) @GetUserId()
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @get_rel_tablespace(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @AccessExclusiveLock, align 4
  %18 = call i32 @heap_open(i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ts_hypertable_permissions_check(i32 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @ts_is_hypertable(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_TS_HYPERTABLE_EXISTS, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @get_rel_name(i32 %29)
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @ereport(i32 %26, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @AccessExclusiveLock, align 4
  %35 = call i32 @heap_close(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %25, %2
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @get_rel_namespace(i32 %37)
  %39 = call i32 @get_namespace_name(i32 %38)
  %40 = call i32 @namestrcpy(i32* %7, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @get_rel_name(i32 %41)
  %43 = call i32 @namestrcpy(i32* %8, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call %struct.TYPE_4__* @ts_chunk_sizing_info_get_default_disabled(i32 %44)
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %10, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = call i32 @ts_chunk_sizing_func_validate(i32 %48, %struct.TYPE_4__* %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @get_rel_namespace(i32 %51)
  %53 = call i32 @get_namespace_name(i32 %52)
  %54 = call i32 @namestrcpy(i32* %7, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @get_rel_name(i32 %55)
  %57 = call i32 @namestrcpy(i32* %8, i32 %56)
  %58 = load i32, i32* @INTERNAL_SCHEMA_NAME, align 4
  %59 = call i32 @namestrcpy(i32* %9, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hypertable_insert(i32 %60, i32* %7, i32* %8, i32* %9, i32* null, i32* %62, i32* %64, i32 %67, i32 0, i32 1)
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @OidIsValid(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %36
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @get_tablespace_name(i32 %73)
  %75 = call i32 @namestrcpy(i32* %12, i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @ts_tablespace_attach_internal(i32* %12, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %72, %36
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @insert_blocker_trigger_add(i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @NoLock, align 4
  %83 = call i32 @heap_close(i32 %81, i32 %82)
  ret i32 1
}

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @get_rel_tablespace(i32) #1

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @ts_hypertable_permissions_check(i32, i32) #1

declare dso_local i64 @ts_is_hypertable(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

declare dso_local i32 @namestrcpy(i32*, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @get_rel_namespace(i32) #1

declare dso_local %struct.TYPE_4__* @ts_chunk_sizing_info_get_default_disabled(i32) #1

declare dso_local i32 @ts_chunk_sizing_func_validate(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @hypertable_insert(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @get_tablespace_name(i32) #1

declare dso_local i32 @ts_tablespace_attach_internal(i32*, i32, i32) #1

declare dso_local i32 @insert_blocker_trigger_add(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
