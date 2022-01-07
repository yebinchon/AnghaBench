; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_ts_chunk_sizing_func_validate.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_ts_chunk_sizing_func_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid chunk sizing function\00", align 1
@PROCOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@CHUNK_SIZING_FUNC_NARGS = common dso_local global i64 0, align 8
@INT4OID = common dso_local global i64 0, align 8
@INT8OID = common dso_local global i64 0, align 8
@ERRCODE_INVALID_FUNCTION_DEFINITION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid function signature\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"A chunk sizing function's signature should be (int, bigint, bigint) -> bigint\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_chunk_sizing_func_validate(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @OidIsValid(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ERROR, align 4
  %13 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %14 = call i32 @errcode(i32 %13)
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @ereport(i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @PROCOID, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  %21 = call i32 @SearchSysCache1(i32 %18, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @HeapTupleIsValid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @GETSTRUCT(i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %6, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %7, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHUNK_SIZING_FUNC_NARGS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %66, label %42

42:                                               ; preds = %29
  %43 = load i64*, i64** %7, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @INT4OID, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %66, label %48

48:                                               ; preds = %42
  %49 = load i64*, i64** %7, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @INT8OID, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INT8OID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @INT8OID, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60, %54, %48, %42, %29
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ReleaseSysCache(i32 %67)
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 @errhint(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32 @ereport(i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %66, %60
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = icmp ne %struct.TYPE_7__* null, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @get_namespace_name(i32 %86)
  %88 = call i32 @namestrcpy(i32* %83, i32 %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @NameStr(i32 %93)
  %95 = call i32 @namestrcpy(i32* %90, i32 %94)
  br label %96

96:                                               ; preds = %78, %75
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @ReleaseSysCache(i32 %97)
  ret void
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @namestrcpy(i32*, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @NameStr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
