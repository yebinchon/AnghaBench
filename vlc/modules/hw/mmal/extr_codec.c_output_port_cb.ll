; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_codec.c_output_port_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_codec.c_output_port_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i64, i64, i32*, i64, i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_23__*, i64, i32, i32, i64, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }

@MMAL_EVENT_FORMAT_CHANGED = common dso_local global i64 0, align 8
@MMAL_ENCODING_OPAQUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_24__*)* @output_port_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_port_cb(%struct.TYPE_21__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %5, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %6, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %2
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %7, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %21
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = call i32 @decoder_QueueVideo(%struct.TYPE_19__* %46, %struct.TYPE_18__* %47)
  br label %66

49:                                               ; preds = %21
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = call i32 @picture_Release(%struct.TYPE_18__* %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 4
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %64 = call i32 @mmal_buffer_header_release(%struct.TYPE_24__* %63)
  br label %65

65:                                               ; preds = %56, %49
  br label %66

66:                                               ; preds = %65, %30
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = call i32 @atomic_fetch_sub(i32* %68, i32 1)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = call i32 @vlc_sem_post(i32* %71)
  br label %106

73:                                               ; preds = %2
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MMAL_EVENT_FORMAT_CHANGED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %73
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %81 = call %struct.TYPE_22__* @mmal_event_format_changed_get(%struct.TYPE_24__* %80)
  store %struct.TYPE_22__* %81, %struct.TYPE_22__** %8, align 8
  %82 = call %struct.TYPE_23__* (...) @mmal_format_alloc()
  store %struct.TYPE_23__* %82, %struct.TYPE_23__** %9, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mmal_format_full_copy(%struct.TYPE_23__* %83, i32 %86)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %79
  %93 = load i32, i32* @MMAL_ENCODING_OPAQUE, align 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %79
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  store %struct.TYPE_23__* %97, %struct.TYPE_23__** %99, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %101 = call i32 @mmal_buffer_header_release(%struct.TYPE_24__* %100)
  br label %105

102:                                              ; preds = %73
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %104 = call i32 @mmal_buffer_header_release(%struct.TYPE_24__* %103)
  br label %105

105:                                              ; preds = %102, %96
  br label %106

106:                                              ; preds = %105, %66
  ret void
}

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_18__*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_24__*) #1

declare dso_local i32 @atomic_fetch_sub(i32*, i32) #1

declare dso_local i32 @vlc_sem_post(i32*) #1

declare dso_local %struct.TYPE_22__* @mmal_event_format_changed_get(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @mmal_format_alloc(...) #1

declare dso_local i32 @mmal_format_full_copy(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
