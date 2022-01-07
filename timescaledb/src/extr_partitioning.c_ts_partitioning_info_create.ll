; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_partitioning.c_ts_partitioning_info_create.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_partitioning.c_ts_partitioning_info_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"partitioning function information cannot be null\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@InvalidAttrNumber = common dso_local global i64 0, align 8
@DIMENSION_TYPE_CLOSED = common dso_local global i32 0, align 4
@TYPECACHE_HASH_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not find hash function for type %s\00", align 1
@COERCE_EXPLICIT_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ts_partitioning_info_create(i8* %0, i8* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %19 = load i64, i64* @InvalidOid, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25, %22, %5
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = call %struct.TYPE_9__* @palloc0(i32 32)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %12, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @NAMEDATALEN, align 4
  %42 = call i32 @StrNCpy(i32 %39, i8* %40, i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @NAMEDATALEN, align 4
  %48 = call i32 @StrNCpy(i32 %45, i8* %46, i32 %47)
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @get_attnum(i64 %49, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @InvalidAttrNumber, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %34
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %136

65:                                               ; preds = %34
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* @NAMEDATALEN, align 4
  %72 = call i32 @StrNCpy(i32 %69, i8* %70, i32 %71)
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @get_atttype(i64 %73, i64 %76)
  store i64 %77, i64* %13, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @DIMENSION_TYPE_CLOSED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %65
  %82 = load i64, i64* %13, align 8
  %83 = load i32, i32* @TYPECACHE_HASH_FLAGS, align 4
  %84 = call %struct.TYPE_8__* @lookup_type_cache(i64 %82, i32 %83)
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %18, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @InvalidOid, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %81
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i64 @ts_partitioning_func_is_closed_default(i8* %91, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @format_type_be(i64 %97)
  %99 = call i32 @elog(i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %90, %81
  br label %101

101:                                              ; preds = %100, %65
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %13, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @partitioning_func_set_func_fmgr(%struct.TYPE_10__* %103, i64 %104, i32 %105)
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @get_typcollation(i64 %107)
  store i64 %108, i64* %14, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %14, align 8
  %114 = call i32* @makeVar(i32 1, i64 %111, i64 %112, i32 -1, i64 %113, i32 0)
  store i32* %114, i32** %16, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %16, align 8
  %125 = call i32 @list_make1(i32* %124)
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i32, i32* @COERCE_EXPLICIT_CALL, align 4
  %129 = call i32* @makeFuncExpr(i32 %119, i32 %123, i32 %125, i64 %126, i64 %127, i32 %128)
  store i32* %129, i32** %17, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = call i32 @fmgr_info_set_expr(i32* %130, %struct.TYPE_11__* %133)
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %6, align 8
  br label %136

136:                                              ; preds = %101, %64
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %137
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local %struct.TYPE_9__* @palloc0(i32) #1

declare dso_local i32 @StrNCpy(i32, i8*, i32) #1

declare dso_local i64 @get_attnum(i64, i32) #1

declare dso_local i64 @get_atttype(i64, i64) #1

declare dso_local %struct.TYPE_8__* @lookup_type_cache(i64, i32) #1

declare dso_local i64 @ts_partitioning_func_is_closed_default(i8*, i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @partitioning_func_set_func_fmgr(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i64 @get_typcollation(i64) #1

declare dso_local i32* @makeVar(i32, i64, i64, i32, i64, i32) #1

declare dso_local i32* @makeFuncExpr(i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @list_make1(i32*) #1

declare dso_local i32 @fmgr_info_set_expr(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
