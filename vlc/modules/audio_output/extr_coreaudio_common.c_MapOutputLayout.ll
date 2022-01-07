; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_MapOutputLayout.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_MapOutputLayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"not output layout, default to Stereo\00", align 1
@AOUT_CHANS_STEREO = common dso_local global i8* null, align 8
@kAudioChannelLayoutTag_UseChannelDescriptions = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"output layout of AUHAL has 1 channel\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"output layout of AUHAL is Stereo\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"output layout of AUHAL has %i channels\00", align 1
@MapOutputLayout.i_auhal_channel_mapping = internal constant [137 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 138, i32 137, i32 141, i32 142, i32 139, i32 144, i32 143, i32 140, i32 145], align 16
@MapOutputLayout.i_auhal_size = internal constant i64 137, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"this is channel: %d\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"found nonrecognized channel %d at index %d\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"selected %d physical channels for device output\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"VLC will output: %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*)* @MapOutputLayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MapOutputLayout(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = icmp eq %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** @AOUT_CHANS_STEREO, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %145

28:                                               ; preds = %4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @kAudioChannelLayoutTag_UseChannelDescriptions, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = call %struct.TYPE_14__* @GetLayoutDescription(i32* %35, %struct.TYPE_14__* %36)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %11, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %39 = icmp eq %struct.TYPE_14__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %5, align 4
  br label %159

42:                                               ; preds = %34
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %8, align 8
  br label %44

44:                                               ; preds = %42, %28
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 145
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %44
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i32 145, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %144

57:                                               ; preds = %47
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 153
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %72

65:                                               ; preds = %60, %57
  %66 = load i8*, i8** @AOUT_CHANS_STEREO, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %143

72:                                               ; preds = %60
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %124, %72
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %84
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %13, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* %13, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i64, i64* %13, align 8
  %104 = icmp ult i64 %103, 137
  br i1 %104, label %105, label %118

105:                                              ; preds = %90
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds [137 x i32], [137 x i32]* @MapOutputLayout.i_auhal_channel_mapping, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ugt i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds [137 x i32], [137 x i32]* @MapOutputLayout.i_auhal_channel_mapping, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %123

118:                                              ; preds = %105, %90
  %119 = load i32*, i32** %6, align 8
  %120 = load i64, i64* %13, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %110
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %12, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %84

127:                                              ; preds = %84
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load i8*, i8** @AOUT_CHANS_STEREO, align 8
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32*, i32** %9, align 8
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %139, %132
  br label %142

142:                                              ; preds = %141, %127
  br label %143

143:                                              ; preds = %142, %65
  br label %144

144:                                              ; preds = %143, %52
  br label %145

145:                                              ; preds = %144, %21
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %147 = call i32 @free(%struct.TYPE_14__* %146)
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %149 = call i32 @aout_FormatPrepare(%struct.TYPE_13__* %148)
  %150 = load i32*, i32** %6, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %152 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %151)
  %153 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %150, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %6, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %156 = call i32 @aout_FormatPrintChannels(%struct.TYPE_13__* %155)
  %157 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %145, %40
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @GetLayoutDescription(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_13__*) #1

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_13__*) #1

declare dso_local i32 @aout_FormatPrintChannels(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
