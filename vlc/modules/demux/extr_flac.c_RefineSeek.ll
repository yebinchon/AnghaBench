; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_flac.c_RefineSeek.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_flac.c_RefineSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@FLAC_FRAME_SIZE_MIN = common dso_local global i32 0, align 4
@STREAM_CAN_FASTSEEK = common dso_local global i32 0, align 4
@FLAC_MAX_PREROLL = common dso_local global i64 0, align 8
@FLAC_MAX_SLOW_PREROLL = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, double, i64, i64)* @RefineSeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RefineSeek(%struct.TYPE_9__* %0, i64 %1, double %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store double %2, double* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @FLAC_FRAME_SIZE_MIN, align 4
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @STREAM_CAN_FASTSEEK, align 4
  %28 = call i32 @vlc_stream_Control(i32 %26, i32 %27, i32* %16)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @vlc_stream_Tell(i32 %31)
  store i64 %32, i64* %17, align 8
  br label %33

33:                                               ; preds = %213, %5
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %214

37:                                               ; preds = %33
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @FlushPacketizer(i32 %40)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %14, align 8
  br label %42

42:                                               ; preds = %70, %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %73

46:                                               ; preds = %42
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %48 = icmp ne %struct.TYPE_11__* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call %struct.TYPE_11__* @vlc_stream_Block(i32 %52, i32 %53)
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %14, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %73

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  br label %70

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32* [ %68, %66 ], [ null, %69 ]
  %72 = call %struct.TYPE_11__* @GetPacketizedBlock(i32 %61, i32* %71, %struct.TYPE_11__** %14)
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %13, align 8
  br label %42

73:                                               ; preds = %56, %42
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %75 = icmp ne %struct.TYPE_11__* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %78 = icmp ne %struct.TYPE_11__* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %81 = call i32 @block_Release(%struct.TYPE_11__* %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %214

83:                                               ; preds = %73
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = icmp ugt i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %134

99:                                               ; preds = %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = sub nsw i64 %102, %103
  store i64 %104, i64* %18, align 8
  %105 = load i64, i64* %18, align 8
  %106 = call i64 @VLC_TICK_FROM_MS(i32 100)
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %132

108:                                              ; preds = %99
  %109 = load i64, i64* %18, align 8
  %110 = sitofp i64 %109 to double
  %111 = load double, double* %8, align 8
  %112 = fdiv double %110, %111
  %113 = load i32, i32* %15, align 4
  %114 = uitofp i32 %113 to double
  %115 = fcmp ogt double %112, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %108
  %117 = load i64, i64* %17, align 8
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %18, align 8
  %119 = sitofp i64 %118 to double
  %120 = load double, double* %8, align 8
  %121 = fdiv double %119, %120
  %122 = load i64, i64* %17, align 8
  %123 = sitofp i64 %122 to double
  %124 = fsub double %123, %121
  %125 = fptosi double %124 to i64
  store i64 %125, i64* %17, align 8
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i32, i32* %15, align 4
  %129 = zext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = call i64 @__MAX(i64 %126, i64 %130)
  store i64 %131, i64* %17, align 8
  br label %133

132:                                              ; preds = %108, %99
  store i32 1, i32* %12, align 4
  br label %133

133:                                              ; preds = %132, %116
  br label %176

134:                                              ; preds = %93
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  store i64 %139, i64* %19, align 8
  %140 = load i64, i64* %19, align 8
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i64, i64* @FLAC_MAX_PREROLL, align 8
  br label %147

145:                                              ; preds = %134
  %146 = load i64, i64* @FLAC_MAX_SLOW_PREROLL, align 8
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i64 [ %144, %143 ], [ %146, %145 ]
  %149 = icmp sge i64 %140, %148
  br i1 %149, label %150, label %174

150:                                              ; preds = %147
  %151 = load i64, i64* %19, align 8
  %152 = sitofp i64 %151 to double
  %153 = load double, double* %8, align 8
  %154 = fdiv double %152, %153
  %155 = load i32, i32* %15, align 4
  %156 = uitofp i32 %155 to double
  %157 = fcmp ogt double %154, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %150
  %159 = load i64, i64* %17, align 8
  store i64 %159, i64* %9, align 8
  %160 = load i64, i64* %19, align 8
  %161 = sitofp i64 %160 to double
  %162 = load double, double* %8, align 8
  %163 = fdiv double %161, %162
  %164 = load i64, i64* %17, align 8
  %165 = sitofp i64 %164 to double
  %166 = fadd double %165, %163
  %167 = fptosi double %166 to i64
  store i64 %167, i64* %17, align 8
  %168 = load i64, i64* %17, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load i32, i32* %15, align 4
  %171 = zext i32 %170 to i64
  %172 = sub nsw i64 %169, %171
  %173 = call i64 @__MIN(i64 %168, i64 %172)
  store i64 %173, i64* %17, align 8
  br label %175

174:                                              ; preds = %150, %147
  store i32 1, i32* %12, align 4
  br label %175

175:                                              ; preds = %174, %158
  br label %176

176:                                              ; preds = %175, %133
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %178 = icmp ne %struct.TYPE_11__* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %181 = call i32 @block_Release(%struct.TYPE_11__* %180)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %184 = icmp ne %struct.TYPE_11__* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %187 = call i32 @block_Release(%struct.TYPE_11__* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %213, label %191

191:                                              ; preds = %188
  %192 = load i64, i64* %10, align 8
  %193 = load i64, i64* %9, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %202, label %195

195:                                              ; preds = %191
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %9, align 8
  %198 = sub nsw i64 %196, %197
  %199 = load i32, i32* %15, align 4
  %200 = zext i32 %199 to i64
  %201 = icmp slt i64 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %195, %191
  br label %214

203:                                              ; preds = %195
  %204 = load i64, i64* @VLC_SUCCESS, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i64, i64* %17, align 8
  %209 = call i64 @vlc_stream_Seek(i32 %207, i64 %208)
  %210 = icmp ne i64 %204, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  br label %214

212:                                              ; preds = %203
  br label %213

213:                                              ; preds = %212, %188
  br label %33

214:                                              ; preds = %211, %202, %82, %33
  %215 = load i32, i32* %12, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i64, i64* @VLC_SUCCESS, align 8
  br label %222

219:                                              ; preds = %214
  %220 = load i32, i32* @VLC_EGENERIC, align 4
  %221 = sext i32 %220 to i64
  br label %222

222:                                              ; preds = %219, %217
  %223 = phi i64 [ %218, %217 ], [ %221, %219 ]
  %224 = trunc i64 %223 to i32
  ret i32 %224
}

declare dso_local i32 @vlc_stream_Control(i32, i32, i32*) #1

declare dso_local i64 @vlc_stream_Tell(i32) #1

declare dso_local i32 @FlushPacketizer(i32) #1

declare dso_local %struct.TYPE_11__* @vlc_stream_Block(i32, i32) #1

declare dso_local %struct.TYPE_11__* @GetPacketizedBlock(i32, i32*, %struct.TYPE_11__**) #1

declare dso_local i32 @block_Release(%struct.TYPE_11__*) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i64 @__MAX(i64, i64) #1

declare dso_local i64 @__MIN(i64, i64) #1

declare dso_local i64 @vlc_stream_Seek(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
