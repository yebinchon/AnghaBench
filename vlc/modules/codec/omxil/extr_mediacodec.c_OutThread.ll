; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec.c_OutThread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec.c_OutThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_11__*, %struct.mc_api_out*, i32**, i32**)*, i32, i32, i32, i32, %struct.TYPE_13__, i32, i32 }
%struct.mc_api_out = type { i64 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32, %struct.mc_api_out*)*, i32 (%struct.TYPE_13__*, i32, i32)* }

@MC_API_INFO_OUTPUT_FORMAT_CHANGED = common dso_local global i32 0, align 4
@MC_API_INFO_OUTPUT_BUFFERS_CHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pf_process_output failed\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"EOS received\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"get_out failed\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"OutThread stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @OutThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @OutThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mc_api_out, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %3, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %4, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = call i32 @vlc_mutex_lock(i32* %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = call i32 @mutex_cleanup_push(i32* %20)
  br label %22

22:                                               ; preds = %175, %92, %47, %1
  br label %23

23:                                               ; preds = %36, %22
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ false, %23 ], [ %33, %28 ]
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = call i32 @vlc_cond_wait(i32* %38, i32* %40)
  br label %23

42:                                               ; preds = %34
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 5
  %52 = call i32 @vlc_cond_broadcast(i32* %51)
  br label %22

53:                                               ; preds = %42
  %54 = call i32 (...) @vlc_savecancel()
  store i32 %54, i32* %6, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = call i32 @vlc_mutex_unlock(i32* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 6
  %64 = call i32 %61(%struct.TYPE_13__* %63, i32 -1)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = call i32 @vlc_mutex_lock(i32* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %53
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32 (%struct.TYPE_13__*, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32)** %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 6
  %82 = load i32, i32* %5, align 4
  %83 = call i32 %79(%struct.TYPE_13__* %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %75, %72
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @MC_API_INFO_OUTPUT_FORMAT_CHANGED, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @MC_API_INFO_OUTPUT_BUFFERS_CHANGED, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @vlc_restorecancel(i32 %93)
  br label %22

95:                                               ; preds = %88, %84
  br label %96

96:                                               ; preds = %95, %53
  %97 = load i32, i32* %5, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @MC_API_INFO_OUTPUT_FORMAT_CHANGED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @MC_API_INFO_OUTPUT_BUFFERS_CHANGED, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %172

107:                                              ; preds = %103, %99, %96
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32 (%struct.TYPE_13__*, i32, %struct.mc_api_out*)*, i32 (%struct.TYPE_13__*, i32, %struct.mc_api_out*)** %110, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 6
  %114 = load i32, i32* %5, align 4
  %115 = call i32 %111(%struct.TYPE_13__* %113, i32 %114, %struct.mc_api_out* %7)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %162

118:                                              ; preds = %107
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32 (%struct.TYPE_11__*, %struct.mc_api_out*, i32**, i32**)*, i32 (%struct.TYPE_11__*, %struct.mc_api_out*, i32**, i32**)** %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = call i32 %121(%struct.TYPE_11__* %122, %struct.mc_api_out* %7, i32** %9, i32** %10)
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.mc_api_out, %struct.mc_api_out* %7, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = call i32 @msg_Err(%struct.TYPE_11__* %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @vlc_restorecancel(i32 %132)
  br label %178

134:                                              ; preds = %125, %118
  %135 = load i32*, i32** %9, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @decoder_QueueVideo(%struct.TYPE_11__* %138, i32* %139)
  br label %149

141:                                              ; preds = %134
  %142 = load i32*, i32** %10, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @decoder_QueueAudio(%struct.TYPE_11__* %145, i32* %146)
  br label %148

148:                                              ; preds = %144, %141
  br label %149

149:                                              ; preds = %148, %137
  %150 = getelementptr inbounds %struct.mc_api_out, %struct.mc_api_out* %7, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = call i32 @msg_Warn(%struct.TYPE_11__* %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 5
  %160 = call i32 @vlc_cond_signal(i32* %159)
  br label %161

161:                                              ; preds = %153, %149
  br label %171

162:                                              ; preds = %107
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = call i32 @msg_Err(%struct.TYPE_11__* %166, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @vlc_restorecancel(i32 %168)
  br label %178

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %161
  br label %175

172:                                              ; preds = %103
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @vlc_restorecancel(i32 %173)
  br label %178

175:                                              ; preds = %171
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @vlc_restorecancel(i32 %176)
  br label %22

178:                                              ; preds = %172, %165, %129
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %180 = call i32 @msg_Warn(%struct.TYPE_11__* %179, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 3
  store i32 1, i32* %182, align 4
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 5
  %185 = call i32 @vlc_cond_signal(i32* %184)
  %186 = call i32 (...) @vlc_cleanup_pop()
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 4
  %189 = call i32 @vlc_mutex_unlock(i32* %188)
  ret i8* null
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @mutex_cleanup_push(i32*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_cond_broadcast(i32*) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @decoder_QueueAudio(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
