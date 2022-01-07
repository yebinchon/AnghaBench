; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wpl.c_Import_WPL.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wpl.c_Import_WPL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.vlc_logger* }
%struct.vlc_logger = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c".wpl\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".zpl\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to create an XML reader\00", align 1
@XML_READER_STARTELEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"smil\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Invalid WPL playlist. Root element should have been <smil>\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Found valid WPL playlist\00", align 1
@Demux = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Import_WPL(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.vlc_logger*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %4, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = call i32 @CHECK_FILE(%struct.TYPE_21__* %13)
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = call i32 @stream_HasExtension(%struct.TYPE_21__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = call i32 @stream_HasExtension(%struct.TYPE_21__* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %2, align 4
  br label %128

24:                                               ; preds = %18, %1
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = call i64 @vlc_stream_Peek(%struct.TYPE_21__* %27, i32** %5, i32 2048)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp sle i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %35, i32* %2, align 4
  br label %128

36:                                               ; preds = %24
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call %struct.TYPE_21__* @vlc_stream_MemoryNew(%struct.TYPE_21__* %37, i32* %38, i64 %39, i32 1)
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %7, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = icmp ne %struct.TYPE_21__* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %2, align 4
  br label %128

49:                                               ; preds = %36
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = call i8* @xml_ReaderCreate(%struct.TYPE_21__* %50, %struct.TYPE_21__* %51)
  %53 = bitcast i8* %52 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %8, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %55 = icmp eq %struct.TYPE_20__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = call i32 @msg_Err(%struct.TYPE_21__* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %60 = call i32 @vlc_stream_Delete(%struct.TYPE_21__* %59)
  %61 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %61, i32* %2, align 4
  br label %128

62:                                               ; preds = %49
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  store %struct.TYPE_20__* %63, %struct.TYPE_20__** %65, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load %struct.vlc_logger*, %struct.vlc_logger** %68, align 8
  store %struct.vlc_logger* %69, %struct.vlc_logger** %9, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  store %struct.vlc_logger* null, %struct.vlc_logger** %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = call i32 @xml_ReaderNextNode(%struct.TYPE_20__* %73, i8** %10)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.vlc_logger*, %struct.vlc_logger** %9, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  store %struct.vlc_logger* %75, %struct.vlc_logger** %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @XML_READER_STARTELEM, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %62
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @strcasecmp(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82, %62
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = call i32 @msg_Err(%struct.TYPE_21__* %87, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %90 = call i32 @Close_WPL(%struct.TYPE_21__* %89)
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %92 = call i32 @vlc_stream_Delete(%struct.TYPE_21__* %91)
  %93 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %93, i32* %2, align 4
  br label %128

94:                                               ; preds = %82
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = call i32 @xml_ReaderDelete(%struct.TYPE_20__* %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = call i8* @xml_ReaderCreate(%struct.TYPE_21__* %99, %struct.TYPE_21__* %102)
  %104 = bitcast i8* %103 to %struct.TYPE_20__*
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  store %struct.TYPE_20__* %104, %struct.TYPE_20__** %106, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %108 = call i32 @vlc_stream_Delete(%struct.TYPE_21__* %107)
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = icmp eq %struct.TYPE_20__* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %94
  %117 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %117, i32* %2, align 4
  br label %128

118:                                              ; preds = %94
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %120 = call i32 @msg_Dbg(%struct.TYPE_21__* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* @Demux, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %118, %116, %86, %56, %47, %34, %22
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @CHECK_FILE(%struct.TYPE_21__*) #1

declare dso_local i32 @stream_HasExtension(%struct.TYPE_21__*, i8*) #1

declare dso_local i64 @vlc_stream_Peek(%struct.TYPE_21__*, i32**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_21__* @vlc_stream_MemoryNew(%struct.TYPE_21__*, i32*, i64, i32) #1

declare dso_local i8* @xml_ReaderCreate(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @vlc_stream_Delete(%struct.TYPE_21__*) #1

declare dso_local i32 @xml_ReaderNextNode(%struct.TYPE_20__*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @Close_WPL(%struct.TYPE_21__*) #1

declare dso_local i32 @xml_ReaderDelete(%struct.TYPE_20__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
