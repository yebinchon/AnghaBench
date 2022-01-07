; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_es_out_timeshift.c_TsStoragePushCmd.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_es_out_timeshift.c_TsStoragePushCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__* }

@C_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)* @TsStoragePushCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TsStoragePushCmd(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = bitcast %struct.TYPE_15__* %7 to i8*
  %11 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = call i32 @TsStorageIsFull(%struct.TYPE_14__* %12, %struct.TYPE_15__* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @C_SEND, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %92

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ftell(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @fwrite(%struct.TYPE_16__* %38, i32 16, i32 1, i32 %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %23
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = call i32 @block_Release(%struct.TYPE_16__* %45)
  br label %104

47:                                               ; preds = %23
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 16
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %47
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @fwrite(%struct.TYPE_16__* %61, i32 %64, i32 1, i32 %67)
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = call i32 @block_Release(%struct.TYPE_16__* %71)
  br label %104

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %47
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = call i32 @block_Release(%struct.TYPE_16__* %82)
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @fflush(i32 %89)
  br label %91

91:                                               ; preds = %86, %74
  br label %92

92:                                               ; preds = %91, %3
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i64 %100
  %102 = bitcast %struct.TYPE_15__* %101 to i8*
  %103 = bitcast %struct.TYPE_15__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 24, i1 false)
  br label %104

104:                                              ; preds = %92, %70, %44
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @TsStorageIsFull(%struct.TYPE_14__*, %struct.TYPE_15__*) #2

declare dso_local i32 @ftell(i32) #2

declare dso_local i32 @fwrite(%struct.TYPE_16__*, i32, i32, i32) #2

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #2

declare dso_local i32 @fflush(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
