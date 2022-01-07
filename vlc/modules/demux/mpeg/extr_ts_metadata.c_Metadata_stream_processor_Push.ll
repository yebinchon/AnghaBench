; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_metadata.c_Metadata_stream_processor_Push.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_metadata.c_Metadata_stream_processor_Push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@ID3TAG_Parse_Handler = common dso_local global i32 0, align 4
@ES_OUT_SET_GROUP_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_15__*, i32, %struct.TYPE_17__*)* @Metadata_stream_processor_Push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @Metadata_stream_processor_Push(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %8, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 189
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = call i32 @block_Release(%struct.TYPE_17__* %23)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %62

25:                                               ; preds = %3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @VLC_FOURCC(i8 signext 73, i8 signext 68, i8 signext 51, i8 signext 32)
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %25
  %33 = call i32* (...) @vlc_meta_New()
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ID3TAG_Parse_Handler, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @ID3TAG_Parse(i32 %39, i32 %42, i32 %43, i32* %44)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ES_OUT_SET_GROUP_META, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @es_out_Control(i32 %48, i32 %49, i32 %54, i32* %55)
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @vlc_meta_Delete(i32* %57)
  br label %59

59:                                               ; preds = %36, %32
  br label %60

60:                                               ; preds = %59, %25
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %4, align 8
  br label %62

62:                                               ; preds = %60, %22
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %63
}

declare dso_local i32 @block_Release(%struct.TYPE_17__*) #1

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32* @vlc_meta_New(...) #1

declare dso_local i32 @ID3TAG_Parse(i32, i32, i32, i32*) #1

declare dso_local i32 @es_out_Control(i32, i32, i32, i32*) #1

declare dso_local i32 @vlc_meta_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
