; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_compress_chunk_populate_sort_info_for_column.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_compress_chunk_populate_sort_info_for_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"table %d does not have column \22%s\22\00", align 1
@TYPECACHE_LT_OPR = common dso_local global i32 0, align 4
@TYPECACHE_GT_OPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"no valid sort operator for column \22%s\22 of type \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, i32*, i32*, i32*, i32*)* @compress_chunk_populate_sort_info_for_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress_chunk_populate_sort_info_for_column(i32 %0, %struct.TYPE_9__* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @NameStr(i32 %19)
  %21 = call i32 @SearchSysCacheAttName(i32 %16, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @HeapTupleIsValid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @NameStr(i32 %30)
  %32 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %25, %6
  %34 = load i32, i32* %13, align 4
  %35 = call i64 @GETSTRUCT(i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %14, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = call i64 @COMPRESSIONCOL_IS_SEGMENT_BY(%struct.TYPE_9__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %33
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %33
  %54 = phi i1 [ false, %33 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TYPECACHE_LT_OPR, align 4
  %61 = load i32, i32* @TYPECACHE_GT_OPR, align 4
  %62 = or i32 %60, %61
  %63 = call %struct.TYPE_7__* @lookup_type_cache(i32 %59, i32 %62)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %15, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = call i64 @COMPRESSIONCOL_IS_SEGMENT_BY(%struct.TYPE_9__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %53
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %53
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  br label %82

77:                                               ; preds = %67
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @OidIsValid(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @ERROR, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @NameStr(i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @format_type_be(i32 %95)
  %97 = call i32 @elog(i32 %88, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %87, %82
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @ReleaseSysCache(i32 %99)
  ret void
}

declare dso_local i32 @SearchSysCacheAttName(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @COMPRESSIONCOL_IS_SEGMENT_BY(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_7__* @lookup_type_cache(i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
