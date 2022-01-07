; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_smf.c_HandleMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_smf.c_HandleMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Text      : %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Copyright : %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Track name: %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Instrument: %s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Marker    : %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Cue point : %s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Patch name: %s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"MIDI port : %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"misplaced end of track\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"tempo: %uus/qn -> %u BPM\00", align 1
@TEMPO_MIN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"tempo too slow -> %u BPM\00", align 1
@TEMPO_MAX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"tempo too fast -> %u BPM\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"SMPTE offset not implemented\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid key signature\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"ignored proprietary SMF Meta Event (%d bytes)\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"unknown SMF Meta Event type 0x%02X (%d bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @HandleMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HandleMeta(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @vlc_stream_Read(i32* %20, i32* %9, i32 1)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %225

24:                                               ; preds = %2
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ReadVarInt(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %225

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32* @malloc(i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @vlc_stream_Read(i32* %37, i32* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36, %30
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @free(i32* %44)
  store i32 -1, i32* %3, align 4
  br label %225

46:                                               ; preds = %36
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  switch i32 %51, label %216 [
    i32 0, label %52
    i32 1, label %53
    i32 2, label %61
    i32 3, label %69
    i32 4, label %77
    i32 5, label %85
    i32 6, label %86
    i32 7, label %94
    i32 8, label %102
    i32 9, label %110
    i32 47, label %118
    i32 81, label %133
    i32 84, label %191
    i32 88, label %199
    i32 89, label %205
    i32 127, label %212
  ]

52:                                               ; preds = %46
  br label %221

53:                                               ; preds = %46
  %54 = load i32*, i32** %8, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = call i32 @EnsureUTF8(i8* %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = call i32 @msg_Info(%struct.TYPE_11__* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %221

61:                                               ; preds = %46
  %62 = load i32*, i32** %8, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = call i32 @EnsureUTF8(i8* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = bitcast i32* %66 to i8*
  %68 = call i32 @msg_Info(%struct.TYPE_11__* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %221

69:                                               ; preds = %46
  %70 = load i32*, i32** %8, align 8
  %71 = bitcast i32* %70 to i8*
  %72 = call i32 @EnsureUTF8(i8* %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = call i32 @msg_Info(%struct.TYPE_11__* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  br label %221

77:                                               ; preds = %46
  %78 = load i32*, i32** %8, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = call i32 @EnsureUTF8(i8* %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 @msg_Info(%struct.TYPE_11__* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %221

85:                                               ; preds = %46
  br label %221

86:                                               ; preds = %46
  %87 = load i32*, i32** %8, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = call i32 @EnsureUTF8(i8* %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = call i32 @msg_Info(%struct.TYPE_11__* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  br label %221

94:                                               ; preds = %46
  %95 = load i32*, i32** %8, align 8
  %96 = bitcast i32* %95 to i8*
  %97 = call i32 @EnsureUTF8(i8* %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = bitcast i32* %99 to i8*
  %101 = call i32 @msg_Info(%struct.TYPE_11__* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  br label %221

102:                                              ; preds = %46
  %103 = load i32*, i32** %8, align 8
  %104 = bitcast i32* %103 to i8*
  %105 = call i32 @EnsureUTF8(i8* %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = bitcast i32* %107 to i8*
  %109 = call i32 @msg_Info(%struct.TYPE_11__* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %108)
  br label %221

110:                                              ; preds = %46
  %111 = load i32*, i32** %8, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = call i32 @EnsureUTF8(i8* %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = bitcast i32* %115 to i8*
  %117 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  br label %221

118:                                              ; preds = %46
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = load i32*, i32** %6, align 8
  %127 = call i64 @vlc_stream_Tell(i32* %126)
  %128 = icmp ne i64 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = call i32 @msg_Err(%struct.TYPE_11__* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %132

132:                                              ; preds = %129, %118
  br label %221

133:                                              ; preds = %46
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %189

136:                                              ; preds = %133
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 16
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 8
  %145 = or i32 %140, %144
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %145, %148
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %136
  %153 = load i32, i32* %12, align 4
  br label %155

154:                                              ; preds = %136
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 1, %154 ]
  %157 = sdiv i32 60000000, %156
  store i32 %157, i32* %13, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %13, align 4
  %161 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @TEMPO_MIN, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %155
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %167 = load i32, i32* @TEMPO_MIN, align 4
  %168 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Warn(%struct.TYPE_11__* %166, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @TEMPO_MIN, align 4
  store i32 %169, i32* %13, align 4
  br label %180

170:                                              ; preds = %155
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* @TEMPO_MAX, align 4
  %173 = icmp ugt i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %176 = load i32, i32* @TEMPO_MAX, align 4
  %177 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Warn(%struct.TYPE_11__* %175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @TEMPO_MAX, align 4
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %174, %170
  br label %180

180:                                              ; preds = %179, %165
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %13, align 4
  %187 = mul i32 %185, %186
  %188 = call i32 @date_Change(i32* %182, i32 %187, i32 60)
  br label %190

189:                                              ; preds = %133
  store i32 -1, i32* %11, align 4
  br label %190

190:                                              ; preds = %189, %180
  br label %221

191:                                              ; preds = %46
  %192 = load i32, i32* %10, align 4
  %193 = icmp eq i32 %192, 5
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %196 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Warn(%struct.TYPE_11__* %195, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %198

197:                                              ; preds = %191
  store i32 -1, i32* %11, align 4
  br label %198

198:                                              ; preds = %197, %194
  br label %221

199:                                              ; preds = %46
  %200 = load i32, i32* %10, align 4
  %201 = icmp eq i32 %200, 4
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %204

203:                                              ; preds = %199
  store i32 -1, i32* %11, align 4
  br label %204

204:                                              ; preds = %203, %202
  br label %221

205:                                              ; preds = %46
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 2
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %210 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Warn(%struct.TYPE_11__* %209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %211

211:                                              ; preds = %208, %205
  br label %221

212:                                              ; preds = %46
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %213, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %214)
  br label %221

216:                                              ; preds = %46
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %10, align 4
  %220 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Warn(%struct.TYPE_11__* %217, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %216, %212, %211, %204, %198, %190, %132, %110, %102, %94, %86, %85, %77, %69, %61, %53, %52
  %222 = load i32*, i32** %8, align 8
  %223 = call i32 @free(i32* %222)
  %224 = load i32, i32* %11, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %221, %43, %29, %23
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @vlc_stream_Read(i32*, i32*, i32) #1

declare dso_local i32 @ReadVarInt(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @EnsureUTF8(i8*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i64 @vlc_stream_Tell(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @date_Change(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
