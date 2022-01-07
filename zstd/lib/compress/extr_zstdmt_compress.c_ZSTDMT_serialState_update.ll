; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_serialState_update.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_serialState_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32, i32, i32, i32, i32, %struct.TYPE_17__, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_18__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i32* }
%struct.TYPE_16__ = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"wait for serialState->cond\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i64, i32, i32)* @ZSTDMT_serialState_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTDMT_serialState_update(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = bitcast %struct.TYPE_16__* %7 to { i64, i32 }*
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  store i64 %3, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  store i32 %4, i32* %15, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %5, i32* %10, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = call i32 @ZSTD_PTHREAD_MUTEX_LOCK(i32* %17)
  br label %19

19:                                               ; preds = %25, %6
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = call i32 @ZSTD_pthread_cond_wait(i32* %28, i32* %30)
  br label %19

32:                                               ; preds = %19
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %134

38:                                               ; preds = %32
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %114

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br label %61

61:                                               ; preds = %57, %53, %49, %45
  %62 = phi i1 [ false, %53 ], [ false, %49 ], [ false, %45 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %66, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ZSTD_window_update(i32* %76, i32 %78, i64 %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 7
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @ZSTD_ldm_generateSequences(%struct.TYPE_17__* %83, %struct.TYPE_15__* %2, %struct.TYPE_18__* %86, i32 %88, i64 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @ZSTD_isError(i64 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 5
  %101 = call i32 @ZSTD_PTHREAD_MUTEX_LOCK(i32* %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 6
  %110 = call i32 @ZSTD_pthread_cond_signal(i32* %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 5
  %113 = call i32 @ZSTD_pthread_mutex_unlock(i32* %112)
  br label %114

114:                                              ; preds = %61, %38
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @XXH64_update(i32* %127, i32 %129, i64 %131)
  br label %133

133:                                              ; preds = %125, %121, %114
  br label %134

134:                                              ; preds = %133, %32
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 3
  %141 = call i32 @ZSTD_pthread_cond_broadcast(i32* %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = call i32 @ZSTD_pthread_mutex_unlock(i32* %143)
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %134
  %149 = load i32*, i32** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @ZSTD_referenceExternalSequences(i32* %149, i32* %151, i64 %153)
  store i64 %154, i64* %12, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @assert(i32 %159)
  %161 = load i64, i64* %12, align 8
  %162 = call i32 @ZSTD_isError(i64 %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i64, i64* %12, align 8
  br label %168

168:                                              ; preds = %148, %134
  ret void
}

declare dso_local i32 @ZSTD_PTHREAD_MUTEX_LOCK(i32*) #1

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i32 @ZSTD_pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_window_update(i32*, i32, i64) #1

declare dso_local i64 @ZSTD_ldm_generateSequences(%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_pthread_cond_signal(i32*) #1

declare dso_local i32 @ZSTD_pthread_mutex_unlock(i32*) #1

declare dso_local i32 @XXH64_update(i32*, i32, i64) #1

declare dso_local i32 @ZSTD_pthread_cond_broadcast(i32*) #1

declare dso_local i64 @ZSTD_referenceExternalSequences(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
