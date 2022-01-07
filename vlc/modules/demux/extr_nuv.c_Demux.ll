; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_nuv.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_nuv.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i8, i64, i8, i32, i64 }
%struct.TYPE_17__ = type { i64, i64, i32 }

@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@VLC_DEMUXER_EGENERIC = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@NUV_FH_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"unsupported compression %c for audio (upload samples)\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"unsupported compression %c for video (upload samples)\00", align 1
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %4, align 8
  br label %10

10:                                               ; preds = %49, %1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = call i64 @FrameHeaderLoad(%struct.TYPE_15__* %11, %struct.TYPE_14__* %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %15, i32* %2, align 4
  br label %242

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 65
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 86
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16
  br label %50

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %29 = load i8, i8* %28, align 8
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 82
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @vlc_stream_Read(i32 %39, i32* null, i64 %41)
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @VLC_DEMUXER_EGENERIC, align 4
  store i32 %47, i32* %2, align 4
  br label %242

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %32, %27
  br label %10

50:                                               ; preds = %26
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.TYPE_17__* @vlc_stream_Block(i32 %53, i64 %55)
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %6, align 8
  %57 = icmp eq %struct.TYPE_17__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %59, i32* %2, align 4
  br label %242

60:                                               ; preds = %50
  %61 = load i64, i64* @VLC_TICK_0, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = mul nsw i32 %64, 1000
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %61, %66
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %71 = load i8, i8* %70, align 8
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 86
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i64, i64* @VLC_TICK_INVALID, align 8
  br label %80

76:                                               ; preds = %60
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi i64 [ %75, %74 ], [ %79, %76 ]
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %107, label %87

87:                                               ; preds = %80
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @VLC_TICK_0, align 8
  %99 = sub nsw i64 %97, %98
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @vlc_stream_Tell(i32 %102)
  %104 = load i64, i64* @NUV_FH_SIZE, align 8
  %105 = sub nsw i64 %103, %104
  %106 = call i32 @demux_IndexAppend(i32* %94, i64 %99, i64 %105)
  br label %107

107:                                              ; preds = %92, %87, %80
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @VLC_TICK_0, align 8
  %120 = sub nsw i64 %118, %119
  %121 = icmp slt i64 %115, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %112, %107
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @VLC_TICK_0, align 8
  %127 = sub nsw i64 %125, %126
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* @VLC_TICK_0, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = call i32 @es_out_SetPCR(i32 %132, i64 %137)
  br label %139

139:                                              ; preds = %122, %112
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %141 = load i8, i8* %140, align 8
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 65
  br i1 %143, label %144, label %171

144:                                              ; preds = %139
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %151 = load i8, i8* %150, align 8
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 51
  br i1 %153, label %154, label %163

154:                                              ; preds = %149
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %162 = call i32 @es_out_Send(i32 %157, i64 %160, %struct.TYPE_17__* %161)
  br label %170

163:                                              ; preds = %149
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %166 = load i8, i8* %165, align 8
  %167 = call i32 @msg_Dbg(%struct.TYPE_15__* %164, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8 signext %166)
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %169 = call i32 @block_Release(%struct.TYPE_17__* %168)
  br label %170

170:                                              ; preds = %163, %154
  br label %240

171:                                              ; preds = %144, %139
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %173 = load i8, i8* %172, align 8
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 86
  br i1 %175, label %176, label %236

176:                                              ; preds = %171
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %236

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %183 = load i8, i8* %182, align 8
  %184 = sext i8 %183 to i32
  %185 = icmp sge i32 %184, 48
  br i1 %185, label %186, label %214

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %188 = load i8, i8* %187, align 8
  %189 = sext i8 %188 to i32
  %190 = icmp sle i32 %189, 51
  br i1 %190, label %191, label %214

191:                                              ; preds = %186
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %193 = load i64, i64* @NUV_FH_SIZE, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call %struct.TYPE_17__* @block_Realloc(%struct.TYPE_17__* %192, i64 %193, i64 %195)
  store %struct.TYPE_17__* %196, %struct.TYPE_17__** %6, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %198 = icmp ne %struct.TYPE_17__* %197, null
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = call i64 @unlikely(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %191
  %204 = load i32, i32* @VLC_DEMUXER_EGENERIC, align 4
  store i32 %204, i32* %2, align 4
  br label %242

205:                                              ; preds = %191
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i64, i64* @NUV_FH_SIZE, align 8
  %213 = call i32 @memcpy(i32 %208, i32 %211, i64 %212)
  br label %214

214:                                              ; preds = %205, %186, %181
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %216 = load i8, i8* %215, align 8
  %217 = sext i8 %216 to i32
  %218 = icmp sge i32 %217, 48
  br i1 %218, label %219, label %228

219:                                              ; preds = %214
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %227 = call i32 @es_out_Send(i32 %222, i64 %225, %struct.TYPE_17__* %226)
  br label %235

228:                                              ; preds = %214
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %231 = load i8, i8* %230, align 8
  %232 = call i32 @msg_Dbg(%struct.TYPE_15__* %229, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8 signext %231)
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %234 = call i32 @block_Release(%struct.TYPE_17__* %233)
  br label %235

235:                                              ; preds = %228, %219
  br label %239

236:                                              ; preds = %176, %171
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %238 = call i32 @block_Release(%struct.TYPE_17__* %237)
  br label %239

239:                                              ; preds = %236, %235
  br label %240

240:                                              ; preds = %239, %170
  %241 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %241, i32* %2, align 4
  br label %242

242:                                              ; preds = %240, %203, %58, %46, %14
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i64 @FrameHeaderLoad(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i64 @vlc_stream_Read(i32, i32*, i64) #1

declare dso_local %struct.TYPE_17__* @vlc_stream_Block(i32, i64) #1

declare dso_local i32 @demux_IndexAppend(i32*, i64, i64) #1

declare dso_local i64 @vlc_stream_Tell(i32) #1

declare dso_local i32 @es_out_SetPCR(i32, i64) #1

declare dso_local i32 @es_out_Send(i32, i64, %struct.TYPE_17__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_15__*, i8*, i8 signext) #1

declare dso_local i32 @block_Release(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @block_Realloc(%struct.TYPE_17__*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
