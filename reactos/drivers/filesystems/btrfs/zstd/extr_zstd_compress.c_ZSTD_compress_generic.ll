; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_compress_generic.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_compress_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64, i64, i64, i32*, i64, %struct.TYPE_26__, %struct.TYPE_22__, i32*, i32, %struct.TYPE_23__ }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32* }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_25__ = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"ZSTD_compress_generic, endOp=%u \00", align 1
@GENERIC = common dso_local global i32 0, align 4
@zcss_init = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"ZSTD_compress_generic : transparent init stage\00", align 1
@ZSTD_e_end = common dso_local global i64 0, align 8
@zcss_load = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"completed ZSTD_compress_generic\00", align 1
@ZSTDMT_JOBSIZE_MIN = common dso_local global i64 0, align 8
@ZSTD_dct_rawContent = common dso_local global i32 0, align 4
@memory_allocation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_compress_generic(%struct.TYPE_27__* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_26__, align 8
  %11 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @GENERIC, align 4
  %24 = call i64 @ERROR(i32 %23)
  store i64 %24, i64* %5, align 8
  br label %135

25:                                               ; preds = %4
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @GENERIC, align 4
  %35 = call i64 @ERROR(i32 %34)
  store i64 %35, i64* %5, align 8
  br label %135

36:                                               ; preds = %25
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %38 = icmp ne %struct.TYPE_27__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @zcss_init, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %120

46:                                               ; preds = %36
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 6
  %49 = bitcast %struct.TYPE_26__* %10 to i8*
  %50 = bitcast %struct.TYPE_26__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 10
  %53 = bitcast %struct.TYPE_23__* %11 to i8*
  %54 = bitcast %struct.TYPE_23__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 10
  %57 = call i32 @memset(%struct.TYPE_23__* %56, i32 0, i32 16)
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %46
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br label %66

66:                                               ; preds = %61, %46
  %67 = phi i1 [ true, %46 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @ZSTD_e_end, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %74, %66
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, 1
  %88 = call i32 @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_26__* %83, i64 %87, i32 0)
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  store i32 %88, i32* %89, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 8
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, 1
  %104 = call i32 @ZSTD_resetCStream_internal(%struct.TYPE_27__* %90, i32* %92, i32 %94, i32 %96, i32* %99, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8 %10, i64 %103)
  %105 = call i32 @CHECK_F(i32 %104)
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @zcss_load, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  br label %120

120:                                              ; preds = %81, %36
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @ZSTD_compressStream_generic(%struct.TYPE_27__* %121, %struct.TYPE_24__* %122, %struct.TYPE_25__* %123, i64 %124)
  %126 = call i32 @CHECK_F(i32 %125)
  %127 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = sub i64 %130, %133
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %120, %33, %22
  %136 = load i64, i64* %5, align 8
  ret i64 %136
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ZSTD_getCParamsFromCCtxParams(%struct.TYPE_26__*, i64, i32) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @ZSTD_resetCStream_internal(%struct.TYPE_27__*, i32*, i32, i32, i32*, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8, i64) #1

declare dso_local i32 @ZSTD_compressStream_generic(%struct.TYPE_27__*, %struct.TYPE_24__*, %struct.TYPE_25__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
