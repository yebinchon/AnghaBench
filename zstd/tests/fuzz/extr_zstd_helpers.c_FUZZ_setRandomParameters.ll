; ModuleID = '/home/carl/AnghaBench/zstd/tests/fuzz/extr_zstd_helpers.c_FUZZ_setRandomParameters.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/fuzz/extr_zstd_helpers.c_FUZZ_setRandomParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ZSTD_c_windowLog = common dso_local global i32 0, align 4
@ZSTD_c_hashLog = common dso_local global i32 0, align 4
@ZSTD_c_chainLog = common dso_local global i32 0, align 4
@ZSTD_c_searchLog = common dso_local global i32 0, align 4
@ZSTD_c_minMatch = common dso_local global i32 0, align 4
@ZSTD_c_targetLength = common dso_local global i32 0, align 4
@ZSTD_c_strategy = common dso_local global i32 0, align 4
@ZSTD_c_contentSizeFlag = common dso_local global i32 0, align 4
@ZSTD_c_checksumFlag = common dso_local global i32 0, align 4
@ZSTD_c_dictIDFlag = common dso_local global i32 0, align 4
@ZSTD_c_enableLongDistanceMatching = common dso_local global i32 0, align 4
@ZSTD_c_ldmHashLog = common dso_local global i32 0, align 4
@ZSTD_HASHLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_c_ldmMinMatch = common dso_local global i32 0, align 4
@ZSTD_LDM_MINMATCH_MIN = common dso_local global i32 0, align 4
@ZSTD_LDM_MINMATCH_MAX = common dso_local global i32 0, align 4
@ZSTD_c_ldmBucketSizeLog = common dso_local global i32 0, align 4
@ZSTD_LDM_BUCKETSIZELOG_MAX = common dso_local global i32 0, align 4
@ZSTD_c_ldmHashRateLog = common dso_local global i32 0, align 4
@ZSTD_LDM_HASHRATELOG_MIN = common dso_local global i32 0, align 4
@ZSTD_LDM_HASHRATELOG_MAX = common dso_local global i32 0, align 4
@ZSTD_c_nbWorkers = common dso_local global i32 0, align 4
@ZSTD_c_rsyncable = common dso_local global i32 0, align 4
@ZSTD_c_forceMaxWindow = common dso_local global i32 0, align 4
@ZSTD_c_literalCompressionMode = common dso_local global i32 0, align 4
@ZSTD_c_forceAttachDict = common dso_local global i32 0, align 4
@ZSTD_c_srcSizeHint = common dso_local global i32 0, align 4
@ZSTD_SRCSIZEHINT_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FUZZ_setRandomParameters(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32*, i32** %6, align 8
  call void @FUZZ_randomCParams(%struct.TYPE_3__* sret %7, i64 %8, i32* %9)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @ZSTD_c_windowLog, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set(i32* %10, i32 %11, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @ZSTD_c_hashLog, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @set(i32* %15, i32 %16, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @ZSTD_c_chainLog, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set(i32* %20, i32 %21, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @ZSTD_c_searchLog, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set(i32* %25, i32 %26, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @ZSTD_c_minMatch, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set(i32* %30, i32 %31, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @ZSTD_c_targetLength, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set(i32* %35, i32 %36, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @ZSTD_c_strategy, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @set(i32* %40, i32 %41, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @ZSTD_c_contentSizeFlag, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @setRand(i32* %45, i32 %46, i32 0, i32 1, i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @ZSTD_c_checksumFlag, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @setRand(i32* %49, i32 %50, i32 0, i32 1, i32* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @ZSTD_c_dictIDFlag, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @setRand(i32* %53, i32 %54, i32 0, i32 1, i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @ZSTD_c_enableLongDistanceMatching, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @setRand(i32* %57, i32 %58, i32 0, i32 1, i32* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @ZSTD_c_ldmHashLog, align 4
  %63 = load i32, i32* @ZSTD_HASHLOG_MIN, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @setRand(i32* %61, i32 %62, i32 %63, i32 16, i32* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @ZSTD_c_ldmMinMatch, align 4
  %68 = load i32, i32* @ZSTD_LDM_MINMATCH_MIN, align 4
  %69 = load i32, i32* @ZSTD_LDM_MINMATCH_MAX, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @setRand(i32* %66, i32 %67, i32 %68, i32 %69, i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @ZSTD_c_ldmBucketSizeLog, align 4
  %74 = load i32, i32* @ZSTD_LDM_BUCKETSIZELOG_MAX, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @setRand(i32* %72, i32 %73, i32 0, i32 %74, i32* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* @ZSTD_c_ldmHashRateLog, align 4
  %79 = load i32, i32* @ZSTD_LDM_HASHRATELOG_MIN, align 4
  %80 = load i32, i32* @ZSTD_LDM_HASHRATELOG_MAX, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @setRand(i32* %77, i32 %78, i32 %79, i32 %80, i32* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @ZSTD_c_nbWorkers, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @setRand(i32* %83, i32 %84, i32 0, i32 2, i32* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* @ZSTD_c_rsyncable, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @setRand(i32* %87, i32 %88, i32 0, i32 1, i32* %89)
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* @ZSTD_c_forceMaxWindow, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @setRand(i32* %91, i32 %92, i32 0, i32 1, i32* %93)
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @ZSTD_c_literalCompressionMode, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @setRand(i32* %95, i32 %96, i32 0, i32 2, i32* %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @ZSTD_c_forceAttachDict, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @setRand(i32* %99, i32 %100, i32 0, i32 2, i32* %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i64 @FUZZ_dataProducer_uint32Range(i32* %103, i32 0, i32 1)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %3
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* @ZSTD_c_srcSizeHint, align 4
  %109 = load i32, i32* @ZSTD_SRCSIZEHINT_MIN, align 4
  %110 = load i64, i64* %5, align 8
  %111 = mul i64 2, %110
  %112 = trunc i64 %111 to i32
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @setRand(i32* %107, i32 %108, i32 %109, i32 %112, i32* %113)
  br label %115

115:                                              ; preds = %106, %3
  ret void
}

declare dso_local void @FUZZ_randomCParams(%struct.TYPE_3__* sret, i64, i32*) #1

declare dso_local i32 @set(i32*, i32, i32) #1

declare dso_local i32 @setRand(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @FUZZ_dataProducer_uint32Range(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
