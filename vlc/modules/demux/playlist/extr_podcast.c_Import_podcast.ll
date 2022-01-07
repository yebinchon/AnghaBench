; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_podcast.c_Import_podcast.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_podcast.c_Import_podcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"application/xml\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@XML_READER_STARTELEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"rss\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"application/rss+xml\00", align 1
@ReadDir = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"using podcast reader\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Import_podcast(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32 @CHECK_FILE(%struct.TYPE_9__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @stream_IsMimeType(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @stream_IsMimeType(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %20, %1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @vlc_stream_Peek(i32 %29, i32** %5, i32 2048)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp sle i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %2, align 4
  br label %100

38:                                               ; preds = %26
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call %struct.TYPE_9__* @vlc_stream_MemoryNew(%struct.TYPE_9__* %39, i32* %40, i64 %41, i32 1)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %7, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %50, i32* %2, align 4
  br label %100

51:                                               ; preds = %38
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = call i32* @xml_ReaderCreate(%struct.TYPE_9__* %52, %struct.TYPE_9__* %53)
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = call i32 @vlc_stream_Delete(%struct.TYPE_9__* %58)
  %60 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %60, i32* %2, align 4
  br label %100

61:                                               ; preds = %51
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @xml_ReaderNextNode(i32* %62, i8** %9)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @XML_READER_STARTELEM, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66, %61
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = call i32 @vlc_stream_Delete(%struct.TYPE_9__* %71)
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @xml_ReaderDelete(i32* %73)
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %2, align 4
  br label %100

76:                                               ; preds = %66
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @xml_ReaderDelete(i32* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = call i32 @vlc_stream_Delete(%struct.TYPE_9__* %79)
  br label %90

81:                                               ; preds = %20
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @stream_IsMimeType(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %88, i32* %2, align 4
  br label %100

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32, i32* @ReadDir, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = call i32 @msg_Dbg(%struct.TYPE_9__* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %90, %87, %70, %57, %49, %36
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @CHECK_FILE(%struct.TYPE_9__*) #1

declare dso_local i64 @stream_IsMimeType(i32, i8*) #1

declare dso_local i64 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_9__* @vlc_stream_MemoryNew(%struct.TYPE_9__*, i32*, i64, i32) #1

declare dso_local i32* @xml_ReaderCreate(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @vlc_stream_Delete(%struct.TYPE_9__*) #1

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @xml_ReaderDelete(i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
