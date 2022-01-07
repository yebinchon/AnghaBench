; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_reorder_api.c_check_valid_index.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_reorder_api.c_check_valid_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@INDEXRELID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"could not add reorder policy because the provided index is not a valid relation\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"could not add reorder policy because the provided index is not a valid index on the hypertable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @check_valid_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_valid_index(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @NameStr(i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @NameStr(i32 %14)
  %16 = call i32 @get_namespace_oid(i32 %15, i32 0)
  %17 = call i32 @get_relname_relid(i32 %10, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @INDEXRELID, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  %21 = call i32 @SearchSysCache1(i32 %18, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @HeapTupleIsValid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %2
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @GETSTRUCT(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %7, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @ERROR, align 4
  %44 = call i32 @elog(i32 %43, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %31
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ReleaseSysCache(i32 %46)
  ret void
}

declare dso_local i32 @get_relname_relid(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @get_namespace_oid(i32, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
