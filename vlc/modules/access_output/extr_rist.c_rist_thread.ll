; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_rist_thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_rist_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@RTP_PKT_SIZE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@RTCP_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Rist RTCP messsage is too big (%zd bytes) and was probably cut, please keep it under %d bytes\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"socket %d error: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"mcast socket %d error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rist_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rist_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x %struct.pollfd], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %3, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %4, align 8
  %18 = load i32, i32* @RTP_PKT_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i32 1, i32* %11, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 16
  %29 = load i32, i32* @POLLIN, align 4
  %30 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %43 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @POLLIN, align 4
  %45 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %46 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %36, %1
  br label %50

50:                                               ; preds = %175, %49
  %51 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @RTCP_INTERVAL, align 4
  %54 = ashr i32 %53, 1
  %55 = call i32 @poll(%struct.pollfd* %51, i32 %52, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = call i32 (...) @vlc_savecancel()
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %159

59:                                               ; preds = %50
  %60 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %61 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @POLLIN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %59
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RTP_PKT_SIZE, align 4
  %73 = call i32 @rist_Read(i32 %71, i32* %21, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @RTP_PKT_SIZE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @RTP_PKT_SIZE, align 4
  %81 = call i32 @msg_Err(%struct.TYPE_7__* %78, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %66
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, -1
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 @gai_strerror(i32 %95)
  %97 = call i32 @msg_Err(%struct.TYPE_7__* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %96)
  br label %105

98:                                               ; preds = %82
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @rist_rtcp_recv(%struct.TYPE_7__* %99, %struct.TYPE_9__* %102, i32* %21, i32 %103)
  br label %105

105:                                              ; preds = %98, %88
  br label %106

106:                                              ; preds = %105, %59
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %158

111:                                              ; preds = %106
  %112 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %113 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @POLLIN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %158

118:                                              ; preds = %111
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @RTP_PKT_SIZE, align 4
  %125 = call i32 @rist_Read(i32 %123, i32* %21, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @RTP_PKT_SIZE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %118
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @RTP_PKT_SIZE, align 4
  %133 = call i32 @msg_Err(%struct.TYPE_7__* %130, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %118
  %135 = load i32, i32* %10, align 4
  %136 = icmp eq i32 %135, -1
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @errno, align 4
  %148 = call i32 @gai_strerror(i32 %147)
  %149 = call i32 @msg_Err(%struct.TYPE_7__* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %148)
  br label %157

150:                                              ; preds = %134
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @rist_rtcp_recv(%struct.TYPE_7__* %151, %struct.TYPE_9__* %154, i32* %21, i32 %155)
  br label %157

157:                                              ; preds = %150, %140
  br label %158

158:                                              ; preds = %157, %111, %106
  br label %159

159:                                              ; preds = %158, %50
  %160 = call i64 (...) @vlc_tick_now()
  store i64 %160, i64* %5, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %161, %164
  %166 = load i32, i32* @RTCP_INTERVAL, align 4
  %167 = call i64 @VLC_TICK_FROM_MS(i32 %166)
  %168 = icmp sgt i64 %165, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %159
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = call i32 @rist_rtcp_send(%struct.TYPE_7__* %170)
  %172 = load i64, i64* %5, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %169, %159
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @vlc_restorecancel(i32 %176)
  br label %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #2

declare dso_local i32 @vlc_savecancel(...) #2

declare dso_local i32 @rist_Read(i32, i32*, i32) #2

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @rist_rtcp_recv(%struct.TYPE_7__*, %struct.TYPE_9__*, i32*, i32) #2

declare dso_local i64 @vlc_tick_now(...) #2

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #2

declare dso_local i32 @rist_rtcp_send(%struct.TYPE_7__*) #2

declare dso_local i32 @vlc_restorecancel(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
