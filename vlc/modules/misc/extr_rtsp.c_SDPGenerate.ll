; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_rtsp.c_SDPGenerate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_rtsp.c_SDPGenerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i64, i32, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.vlc_memstream = type { i8* }
%struct.sockaddr_storage = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.sockaddr = type { i32 }

@NI_MAXNUMERICHOST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sout-rtp-\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"npt=0-%lld.%03u\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"RTP/AVP\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i32*)* @SDPGenerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @SDPGenerate(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlc_memstream, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load i32, i32* @NI_MAXNUMERICHOST, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @httpd_ServerIP(i32* %23, i8* %22, i32* %10)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %150

27:                                               ; preds = %2
  %28 = call i32* @strchr(i8* %22, i8 signext 58)
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i8* [ %36, %33 ], [ %40, %37 ]
  store i8* %42, i8** %9, align 8
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i64 4, i64 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @memset(%struct.sockaddr_storage* %13, i32 0, i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @AF_INET6, align 4
  br label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @AF_INET, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @VLC_OBJECT(i32 %61)
  %63 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr*
  %64 = load i32, i32* %14, align 4
  %65 = call i64 @vlc_sdp_Start(%struct.vlc_memstream* %6, i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, %struct.sockaddr* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i8* null, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %150

68:                                               ; preds = %56
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @MS_FROM_VLC_TICK(i64 %76)
  %78 = call i32 @VLC_TICK_FROM_MS(i32 1)
  %79 = call { i64, i32 } @lldiv(i32 %77, i32 %78)
  %80 = bitcast %struct.TYPE_10__* %15 to { i64, i32 }*
  %81 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %80, i32 0, i32 0
  %82 = extractvalue { i64, i32 } %79, 0
  store i64 %82, i64* %81, align 8
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %80, i32 0, i32 1
  %84 = extractvalue { i64, i32 } %79, 1
  store i32 %84, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 (%struct.vlc_memstream*, i8*, i8*, i8*, i32, ...) @sdp_AddAttribute(%struct.vlc_memstream* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %88, i32 %91)
  br label %93

93:                                               ; preds = %73, %68
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %138, %93
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %141

100:                                              ; preds = %94
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %102, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %103, i64 %105
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  store %struct.TYPE_9__* %107, %struct.TYPE_9__** %17, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %115 [
    i32 128, label %112
    i32 130, label %113
    i32 129, label %114
  ]

112:                                              ; preds = %100
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %116

113:                                              ; preds = %100
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %116

114:                                              ; preds = %100
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  br label %116

115:                                              ; preds = %100
  br label %138

116:                                              ; preds = %114, %113, %112
  %117 = load i8*, i8** %18, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @sdp_AddMedia(%struct.vlc_memstream* %6, i8* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %120, i32 0, i32 0, i32 %123, i32 %126, i32 %129, i32 %132)
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i32 (%struct.vlc_memstream*, i8*, i8*, i8*, i32, ...) @sdp_AddAttribute(%struct.vlc_memstream* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %134, i8* %22, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %116, %115
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %16, align 4
  br label %94

141:                                              ; preds = %94
  %142 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %6)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %148

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %6, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  br label %148

148:                                              ; preds = %145, %144
  %149 = phi i8* [ null, %144 ], [ %147, %145 ]
  store i8* %149, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %150

150:                                              ; preds = %148, %67, %26
  %151 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i8*, i8** %3, align 8
  ret i8* %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @httpd_ServerIP(i32*, i8*, i32*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #2

declare dso_local i64 @vlc_sdp_Start(%struct.vlc_memstream*, i32, i8*, i32*, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @VLC_OBJECT(i32) #2

declare dso_local { i64, i32 } @lldiv(i32, i32) #2

declare dso_local i32 @MS_FROM_VLC_TICK(i64) #2

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #2

declare dso_local i32 @sdp_AddAttribute(%struct.vlc_memstream*, i8*, i8*, i8*, i32, ...) #2

declare dso_local i32 @sdp_AddMedia(%struct.vlc_memstream*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
