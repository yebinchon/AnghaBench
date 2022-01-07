; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_materialize.c_update_materializations.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_materialize.c_update_materializations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }

@SPI_OK_CONNECT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not connect to SPI in materializer\00", align 1
@SPI_OK_FINISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_materializations(i32 %0, i32 %1, i32 %2, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* %5, i32** %11, align 8
  %17 = bitcast %struct.TYPE_8__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %18, align 8
  %21 = bitcast %struct.TYPE_8__* %13 to i8*
  %22 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @get_invalidation_range(i32* %23, %struct.TYPE_8__* %12)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %15, align 4
  %26 = call i32 (...) @SPI_connect()
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @SPI_OK_CONNECT, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %6
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @time_bucket_range(%struct.TYPE_8__* %12, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @int64_min(i64 %57, i64 %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @int64_min(i64 %64, i64 %66)
  %68 = ptrtoint i8* %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i64 %68, i64* %69, align 8
  %70 = call i32 @ranges_overlap(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %12, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @int64_min(i64 %75, i64 %77)
  %79 = ptrtoint i8* %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %46, %43
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @internal_time_range_to_time_range(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %13)
  %92 = call i32 @spi_update_materializations(i32 %88, i32 %89, i32 %90, i32 %91)
  br label %104

93:                                               ; preds = %84
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @internal_time_range_to_time_range(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %12)
  %98 = call i32 @spi_update_materializations(i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @internal_time_range_to_time_range(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %103 = call i32 @spi_update_materializations(i32 %99, i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %93, %87
  %105 = call i32 (...) @SPI_finish()
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* @SPI_OK_FINISH, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @Assert(i32 %109)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_invalidation_range(i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @SPI_connect(...) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @time_bucket_range(%struct.TYPE_8__*, i32) #2

declare dso_local i8* @int64_min(i64, i64) #2

declare dso_local i32 @ranges_overlap(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #2

declare dso_local i32 @spi_update_materializations(i32, i32, i32, i32) #2

declare dso_local i32 @internal_time_range_to_time_range(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #2

declare dso_local i32 @SPI_finish(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
