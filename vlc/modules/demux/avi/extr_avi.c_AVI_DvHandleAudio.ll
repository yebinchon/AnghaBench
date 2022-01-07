; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_DvHandleAudio.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_DvHandleAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_19__*)* @AVI_DvHandleAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AVI_DvHandleAudio(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  store i64 4323, i64* %7, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add i64 %13, 5
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %97

17:                                               ; preds = %3
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 80
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %97

26:                                               ; preds = %17
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @dv_get_audio_format(%struct.TYPE_17__* %8, i32* %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %26
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @es_out_Del(i32 %49, i32* %52)
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %46, %38, %26
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @es_out_Add(i32 %64, %struct.TYPE_17__* %8)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %61, %56
  %74 = call i32 @es_format_Clean(%struct.TYPE_17__* %8)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = call %struct.TYPE_19__* @dv_extract_audio(%struct.TYPE_19__* %75)
  store %struct.TYPE_19__* %76, %struct.TYPE_19__** %9, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = icmp ne %struct.TYPE_19__* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %92 = call i32 @es_out_Send(i32 %87, i32* %90, %struct.TYPE_19__* %91)
  br label %96

93:                                               ; preds = %79
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %95 = call i32 @block_Release(%struct.TYPE_19__* %94)
  br label %96

96:                                               ; preds = %93, %84
  br label %97

97:                                               ; preds = %16, %25, %96, %73
  ret void
}

declare dso_local i32 @dv_get_audio_format(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @es_out_Del(i32, i32*) #1

declare dso_local i32* @es_out_Add(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_19__* @dv_extract_audio(%struct.TYPE_19__*) #1

declare dso_local i32 @es_out_Send(i32, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
