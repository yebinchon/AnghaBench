; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_vod.c_SDPGenerateVoD.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_vod.c_SDPGenerateVoD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_storage = type { i32, i32 }
%struct.vlc_memstream = type { i8* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sout-rtp-\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" npt=0-%lld.%03u\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"RTP/AVP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SDPGenerateVoD(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vlc_memstream, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = icmp sgt i32 %21, 7
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 7
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 91
  br label %29

29:                                               ; preds = %23, %2
  %30 = phi i1 [ false, %2 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i64 4, i64 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @memset(%struct.sockaddr_storage* %7, i32 0, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @AF_INET6, align 4
  br label %45

43:                                               ; preds = %29
  %44 = load i32, i32* @AF_INET, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @VLC_OBJECT(i32 %50)
  %52 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @vlc_sdp_Start(%struct.vlc_memstream* %9, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, %struct.sockaddr* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store i8* null, i8** %3, align 8
  br label %150

57:                                               ; preds = %45
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @MS_FROM_VLC_TICK(i64 %65)
  %67 = call { i64, i32 } @lldiv(i32 %66, i32 1000)
  %68 = bitcast %struct.TYPE_10__* %10 to { i64, i32 }*
  %69 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %68, i32 0, i32 0
  %70 = extractvalue { i64, i32 } %67, 0
  store i64 %70, i64* %69, align 8
  %71 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %68, i32 0, i32 1
  %72 = extractvalue { i64, i32 } %67, 1
  store i32 %72, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 (%struct.vlc_memstream*, i8*, i8*, i8*, ...) @sdp_AddAttribute(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %76, i32 %79)
  br label %81

81:                                               ; preds = %62, %57
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 (%struct.vlc_memstream*, i8*, i8*, i8*, ...) @sdp_AddAttribute(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %138, %81
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %141

90:                                               ; preds = %84
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %93, i64 %95
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %12, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %13, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %106 [
    i32 128, label %103
    i32 130, label %104
    i32 129, label %105
  ]

103:                                              ; preds = %90
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %107

104:                                              ; preds = %90
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %107

105:                                              ; preds = %90
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %107

106:                                              ; preds = %90
  br label %138

107:                                              ; preds = %105, %104, %103
  %108 = load i8*, i8** %14, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @sdp_AddMedia(%struct.vlc_memstream* %9, i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 %111, i32 0, i32 0, i32 %114, i32 %117, i32 %120, i32 %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %5, align 8
  %129 = call i8* @RtspAppendTrackPath(i32 %127, i8* %128)
  store i8* %129, i8** %15, align 8
  %130 = load i8*, i8** %15, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %107
  %133 = load i8*, i8** %15, align 8
  %134 = call i32 (%struct.vlc_memstream*, i8*, i8*, i8*, ...) @sdp_AddAttribute(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %133)
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 @free(i8* %135)
  br label %137

137:                                              ; preds = %132, %107
  br label %138

138:                                              ; preds = %137, %106
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %84

141:                                              ; preds = %84
  %142 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %9)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %148

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %9, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  br label %148

148:                                              ; preds = %145, %144
  %149 = phi i8* [ null, %144 ], [ %147, %145 ]
  store i8* %149, i8** %3, align 8
  br label %150

150:                                              ; preds = %148, %56
  %151 = load i8*, i8** %3, align 8
  ret i8* %151
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @vlc_sdp_Start(%struct.vlc_memstream*, i32, i8*, i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @VLC_OBJECT(i32) #1

declare dso_local { i64, i32 } @lldiv(i32, i32) #1

declare dso_local i32 @MS_FROM_VLC_TICK(i64) #1

declare dso_local i32 @sdp_AddAttribute(%struct.vlc_memstream*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @sdp_AddMedia(%struct.vlc_memstream*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @RtspAppendTrackPath(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
