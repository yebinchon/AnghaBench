; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_SDPHandleUrl.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_SDPHandleUrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32*, i32*, i64 }
%struct.TYPE_18__ = type { i64, i64*, i64*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"you can use sdp=http:// only once\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot export SDP as HTTP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rtsp\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"you can use sdp=rtsp:// only once\00", align 1
@.str.5 = private unnamed_addr constant [88 x i8] c"\22%s\22 RTSP host might be ignored in multiple-host configurations, use at your own risks.\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Consider passing --rtsp-host=IP on the command line instead.\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"rtsp-host\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"rtsp-port\00", align 1
@VLC_VAR_INTEGER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"cannot export SDP as RTSP\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"sap\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"you can use sdp=file:// only once\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"unknown protocol for SDP (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i8*)* @SDPHandleUrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SDPHandleUrl(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @vlc_UrlParse(%struct.TYPE_18__* %6, i8* %10)
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 @strcasecmp(i64* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = call i32 @msg_Err(%struct.TYPE_19__* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %166

28:                                               ; preds = %20
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = call i64 @HttpSetup(%struct.TYPE_19__* %29, %struct.TYPE_18__* %6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = call i32 @msg_Err(%struct.TYPE_19__* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %28
  br label %165

36:                                               ; preds = %15, %2
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %104

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @strcasecmp(i64* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %104, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = call i32 @msg_Err(%struct.TYPE_19__* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %166

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = call i32 @msg_Warn(%struct.TYPE_19__* %63, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i64 0, i64 0), i64* %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %68 = call i32 @msg_Info(%struct.TYPE_19__* %67, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = load i32, i32* @VLC_VAR_STRING, align 4
  %71 = call i32 @var_Create(%struct.TYPE_19__* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = call i32 @var_SetString(%struct.TYPE_19__* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64* %74)
  br label %76

76:                                               ; preds = %62, %57, %53
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %82 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %83 = call i32 @var_Create(%struct.TYPE_19__* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @var_SetInteger(%struct.TYPE_19__* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %80, %76
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = call i32 @VLC_OBJECT(%struct.TYPE_19__* %89)
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32* @RtspSetup(i32 %90, i32* null, i32 %92)
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 2
  store i32* %93, i32** %95, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %102 = call i32 @msg_Err(%struct.TYPE_19__* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %88
  br label %164

104:                                              ; preds = %40, %36
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = call i32 @strcasecmp(i64* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108, %104
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %115 = load i64*, i64** %114, align 8
  %116 = icmp ne i64* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %119 = load i64*, i64** %118, align 8
  %120 = call i32 @strcasecmp(i64* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117, %108
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %126 = call i32 @SapSetup(%struct.TYPE_19__* %125)
  br label %163

127:                                              ; preds = %117, %113
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %157

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = call i32 @strcasecmp(i64* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %157, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %143 = call i32 @msg_Err(%struct.TYPE_19__* %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %166

144:                                              ; preds = %136
  %145 = load i8*, i8** %4, align 8
  %146 = call i32* @vlc_uri2path(i8* %145)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  store i32* %146, i32** %148, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %166

154:                                              ; preds = %144
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %156 = call i32 @FileSetup(%struct.TYPE_19__* %155)
  br label %162

157:                                              ; preds = %131, %127
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = call i32 @msg_Warn(%struct.TYPE_19__* %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i64* %160)
  br label %162

162:                                              ; preds = %157, %154
  br label %163

163:                                              ; preds = %162, %122
  br label %164

164:                                              ; preds = %163, %103
  br label %165

165:                                              ; preds = %164, %35
  br label %166

166:                                              ; preds = %165, %153, %141, %50, %25
  %167 = call i32 @vlc_UrlClean(%struct.TYPE_18__* %6)
  ret void
}

declare dso_local i32 @vlc_UrlParse(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @strcasecmp(i64*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_19__*, i8*) #1

declare dso_local i64 @HttpSetup(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_19__*, i8*, i64*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @var_Create(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @var_SetString(%struct.TYPE_19__*, i8*, i64*) #1

declare dso_local i32 @var_SetInteger(%struct.TYPE_19__*, i8*, i64) #1

declare dso_local i32* @RtspSetup(i32, i32*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_19__*) #1

declare dso_local i32 @SapSetup(%struct.TYPE_19__*) #1

declare dso_local i32* @vlc_uri2path(i8*) #1

declare dso_local i32 @FileSetup(%struct.TYPE_19__*) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
