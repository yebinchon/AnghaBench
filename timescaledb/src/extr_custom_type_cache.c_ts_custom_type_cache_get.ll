; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_custom_type_cache.c_ts_custom_type_cache_get.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_custom_type_cache.c_ts_custom_type_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@_CUSTOM_TYPE_MAX_INDEX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid timescaledb type %d\00", align 1
@typeinfo = common dso_local global %struct.TYPE_4__* null, align 8
@InvalidOid = common dso_local global i64 0, align 8
@TYPENAMENSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown timescaledb type %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ts_custom_type_cache_get(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @_CUSTOM_TYPE_MAX_INDEX, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @ERROR, align 4
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @elog(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @typeinfo, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @InvalidOid, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %13
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @LookupExplicitNamespace(i32 %25, i32 0)
  store i64 %26, i64* %4, align 8
  %27 = load i32, i32* @TYPENAMENSP, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @CStringGetDatum(i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ObjectIdGetDatum(i64 %32)
  %34 = call i64 @GetSysCacheOid2(i32 %27, i32 %31, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @OidIsValid(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %22
  %39 = load i32, i32* @ERROR, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @elog(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %38, %22
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %13
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %49
}

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @LookupExplicitNamespace(i32, i32) #1

declare dso_local i64 @GetSysCacheOid2(i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i64) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @OidIsValid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
