; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_PlayByteBuffer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_PlayByteBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__**)*, i64 (%struct.TYPE_22__**)*, i64 (%struct.TYPE_22__**, i32, i32)*, i32 (%struct.TYPE_22__**, i64)* }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }

@jfields = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@writeBufferV21 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__**, %struct.TYPE_20__*, i64, i64)* @AudioTrack_PlayByteBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AudioTrack_PlayByteBuffer(%struct.TYPE_22__** %0, %struct.TYPE_20__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__**, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__** %0, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %84

16:                                               ; preds = %4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 3
  %28 = load i32 (%struct.TYPE_22__**, i64)*, i32 (%struct.TYPE_22__**, i64)** %27, align 8
  %29 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 %28(%struct.TYPE_22__** %29, i64 %35)
  br label %37

37:                                               ; preds = %24, %16
  %38 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = load i64 (%struct.TYPE_22__**, i32, i32)*, i64 (%struct.TYPE_22__**, i32, i32)** %40, align 8
  %42 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 %41(%struct.TYPE_22__** %42, i32 %48, i32 %52)
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i64 %53, i64* %58, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %37
  %67 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = load i64 (%struct.TYPE_22__**)*, i64 (%struct.TYPE_22__**)** %69, align 8
  %71 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %72 = call i64 %70(%struct.TYPE_22__** %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_22__**)*, i32 (%struct.TYPE_22__**)** %77, align 8
  %79 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %80 = call i32 %78(%struct.TYPE_22__** %79)
  br label %81

81:                                               ; preds = %74, %66
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @jfields, i32 0, i32 0, i32 0), align 4
  store i32 %82, i32* %5, align 4
  br label %95

83:                                               ; preds = %37
  br label %84

84:                                               ; preds = %83, %4
  %85 = load i32, i32* @writeBufferV21, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @jfields, i32 0, i32 0, i32 1), align 4
  %94 = call i32 @JNI_AT_CALL_INT(i32 %85, i64 %91, i64 %92, i32 %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %84, %81
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @JNI_AT_CALL_INT(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
