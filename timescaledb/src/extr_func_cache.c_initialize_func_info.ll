; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_func_cache.c_initialize_func_info.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_func_cache.c_initialize_func_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }

@CacheMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pg_catalog\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"func_cache\00", align 1
@_MAX_CACHE_FUNCTIONS = common dso_local global i32 0, align 4
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@func_hash = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@funcinfo = common dso_local global %struct.TYPE_8__* null, align 8
@PROCNAMEARGSNSP = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"cache lookup failed for function \22%s\22 with %d args\00", align 1
@HASH_ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_func_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_func_info() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 4, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32 16, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %16 = load i32, i32* @CacheMemoryContext, align 4
  store i32 %16, i32* %15, align 4
  %17 = call i8* (...) @ts_extension_schema_name()
  %18 = call i32 @get_namespace_oid(i8* %17, i32 0)
  store i32 %18, i32* %2, align 4
  %19 = call i32 @get_namespace_oid(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @_MAX_CACHE_FUNCTIONS, align 4
  %21 = load i32, i32* @HASH_ELEM, align 4
  %22 = load i32, i32* @HASH_BLOBS, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @hash_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %20, %struct.TYPE_7__* %1, i32 %23)
  store i32 %24, i32* @func_hash, align 4
  %25 = load i32, i32* @ProcedureRelationId, align 4
  %26 = load i32, i32* @AccessShareLock, align 4
  %27 = call i32 @heap_open(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %95, %0
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @_MAX_CACHE_FUNCTIONS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %98

32:                                               ; preds = %28
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @funcinfo, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %2, align 4
  br label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @buildoidvector(i32 %49, i32 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32, i32* @PROCNAMEARGSNSP, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @PointerGetDatum(i32* %57)
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @PointerGetDatum(i32* %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @ObjectIdGetDatum(i32 %61)
  %63 = call i32 @SearchSysCache3(i32 %54, i32 %58, i32 %60, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @HeapTupleIsValid(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %45
  %68 = load i32, i32* @ERROR, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @elog(i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32* %71, i32 %74)
  br label %76

76:                                               ; preds = %67, %45
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @HeapTupleGetOid(i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* @func_hash, align 4
  %80 = load i32, i32* @HASH_ENTER, align 4
  %81 = call %struct.TYPE_9__* @hash_search(i32 %79, i32* %12, i32 %80, i32* %11)
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @Assert(i32 %85)
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %92, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @ReleaseSysCache(i32 %93)
  br label %95

95:                                               ; preds = %76
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %28

98:                                               ; preds = %28
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @AccessShareLock, align 4
  %101 = call i32 @heap_close(i32 %99, i32 %100)
  ret void
}

declare dso_local i32 @get_namespace_oid(i8*, i32) #1

declare dso_local i8* @ts_extension_schema_name(...) #1

declare dso_local i32 @hash_create(i8*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32* @buildoidvector(i32, i32) #1

declare dso_local i32 @SearchSysCache3(i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32*, i32) #1

declare dso_local i32 @HeapTupleGetOid(i32) #1

declare dso_local %struct.TYPE_9__* @hash_search(i32, i32*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
