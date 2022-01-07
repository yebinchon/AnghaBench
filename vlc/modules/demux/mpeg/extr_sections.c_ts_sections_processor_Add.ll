; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_sections.c_ts_sections_processor_Add.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_sections.c_ts_sections_processor_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_8__*, %struct.TYPE_9__*, i8* }
%struct.TYPE_9__ = type { i32* }

@dvbpsi_messages = common dso_local global i32 0, align 4
@DVBPSI_MSG_DEBUG = common dso_local global i32 0, align 4
@ts_subdecoder_rawsection_Callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_sections_processor_Add(i32* %0, %struct.TYPE_8__** %1, i64 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %13, align 8
  br label %16

16:                                               ; preds = %39, %6
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %86

38:                                               ; preds = %31, %25, %19
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %13, align 8
  br label %16

43:                                               ; preds = %16
  %44 = call %struct.TYPE_8__* @malloc(i32 48)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %13, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %86

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @DVBPSI_MSG_DEBUG, align 4
  %58 = call %struct.TYPE_9__* @dvbpsi_new(i32* @dvbpsi_messages, i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %60, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32* %61, i32** %65, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i32, i32* @ts_subdecoder_rawsection_Callback, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = call i32 @ts_dvbpsi_AttachRawDecoder(%struct.TYPE_9__* %71, i32 %72, %struct.TYPE_8__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %47
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %78 = call i32 @ts_sections_processor_ChainDelete(%struct.TYPE_8__* %77)
  br label %86

79:                                               ; preds = %47
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %85 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %85, align 8
  br label %86

86:                                               ; preds = %37, %76, %79, %43
  ret void
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local %struct.TYPE_9__* @dvbpsi_new(i32*, i32) #1

declare dso_local i32 @ts_dvbpsi_AttachRawDecoder(%struct.TYPE_9__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ts_sections_processor_ChainDelete(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
