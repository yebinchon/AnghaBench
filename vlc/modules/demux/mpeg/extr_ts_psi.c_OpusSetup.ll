; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_OpusSetup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_OpusSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_14__ = type { i8*, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32 }

@OpusSetup.map = internal constant [8 x i8] c"\00\01\02\03\04\05\06\07", align 1
@OpusSetup.p_csc = internal constant [8 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3], align 16
@OpusSetup.maps = internal constant [6 x [7 x i32]] [[7 x i32] [i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 4, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0], [7 x i32] [i32 4, i32 1, i32 2, i32 3, i32 5, i32 0, i32 0], [7 x i32] [i32 4, i32 1, i32 2, i32 3, i32 5, i32 6, i32 0], [7 x i32] [i32 6, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7]], align 16
@.str = private unnamed_addr constant [46 x i8] c"Opus channel configuration 0x%.2x is reserved\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Opus channel configuration 0x%.2x not supported yet\00", align 1
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_OPUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Opus descriptor too short\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, %struct.TYPE_12__*)* @OpusSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OpusSetup(i32* %0, i32* %1, i64 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @memcpy(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @OpusSetup.map, i64 0, i64 0), i64 8)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp sle i32 %29, 8
  br i1 %30, label %31, label %64

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = icmp sgt i32 %36, 2
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %10, align 4
  br label %40

39:                                               ; preds = %31
  store i32 255, i32* %10, align 4
  store i32 2, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* @OpusSetup.p_csc, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %63

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %55, 3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [6 x [7 x i32]], [6 x [7 x i32]]* @OpusSetup.maps, i64 0, i64 %57
  %59 = getelementptr inbounds [7 x i32], [7 x i32]* %58, i64 0, i64 0
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 (i8*, ...) @memcpy(i8* %54, i32* %59, i32 %61)
  br label %63

63:                                               ; preds = %51, %40
  br label %179

64:                                               ; preds = %4
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, 129
  br i1 %66, label %67, label %158

67:                                               ; preds = %64
  %68 = load i64, i64* %7, align 8
  %69 = icmp ult i64 %68, 4
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %229

71:                                               ; preds = %67
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %12, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %157

80:                                               ; preds = %71
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load i64, i64* %7, align 8
  %84 = sub i64 %83, 4
  %85 = call i32 @bs_init(%struct.TYPE_13__* %15, i32* %82, i64 %84)
  store i32 1, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %80
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @vlc_ceil_log2(i32 %89)
  store i32 %90, i32* %16, align 4
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %229

96:                                               ; preds = %88
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @bs_read(%struct.TYPE_13__* %15, i32 %97)
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @vlc_ceil_log2(i32 %101)
  store i32 %102, i32* %16, align 4
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %229

108:                                              ; preds = %96
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @bs_read(%struct.TYPE_13__* %15, i32 %109)
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %108, %80
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %112, %113
  %115 = add nsw i32 %114, 1
  %116 = call i32 @vlc_ceil_log2(i32 %115)
  store i32 %116, i32* %17, align 4
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %17, align 4
  %121 = mul nsw i32 %119, %120
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %229

124:                                              ; preds = %111
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %125, %126
  %128 = add nsw i32 %127, 1
  %129 = shl i32 1, %128
  %130 = sub i32 %129, 1
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %18, align 1
  store i32 0, i32* %19, align 4
  br label %132

132:                                              ; preds = %153, %124
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %132
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @bs_read(%struct.TYPE_13__* %15, i32 %137)
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %20, align 1
  %140 = load i8, i8* %20, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8, i8* %18, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  store i8 -1, i8* %20, align 1
  br label %146

146:                                              ; preds = %145, %136
  %147 = load i8, i8* %20, align 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8 %147, i8* %152, align 1
  br label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %19, align 4
  br label %132

156:                                              ; preds = %132
  br label %157

157:                                              ; preds = %156, %71
  br label %178

158:                                              ; preds = %64
  %159 = load i32, i32* %14, align 4
  %160 = icmp sge i32 %159, 128
  br i1 %160, label %161, label %173

161:                                              ; preds = %158
  %162 = load i32, i32* %14, align 4
  %163 = icmp sle i32 %162, 136
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load i32, i32* %14, align 4
  %166 = sub nsw i32 %165, 128
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 1, i32* %10, align 4
  br label %171

170:                                              ; preds = %164
  store i32 255, i32* %10, align 4
  store i32 2, i32* %12, align 4
  br label %171

171:                                              ; preds = %170, %169
  store i32 0, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %13, align 4
  br label %177

173:                                              ; preds = %161, %158
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call i32 (i32*, i8*, ...) @msg_Err(i32* %174, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %173, %171
  br label %178

178:                                              ; preds = %177, %157
  br label %179

179:                                              ; preds = %178, %63
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179
  %183 = load i32*, i32** %5, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32*, i8*, ...) @msg_Err(i32* %183, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  br label %232

188:                                              ; preds = %179
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @opus_prepare_header(i32 %189, i32 0, %struct.TYPE_14__* %9)
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 6
  store i64 0, i64* %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 48000, i32* %192, align 8
  %193 = load i32, i32* %11, align 4
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %11, align 4
  %197 = sub nsw i32 %195, %196
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store i32 %197, i32* %198, align 8
  %199 = load i32, i32* %10, align 4
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  store i32 %199, i32* %200, align 4
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %228

204:                                              ; preds = %188
  store i32* null, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %205 = call i32 @opus_write_header(i32** %21, i32* %22, %struct.TYPE_14__* %9, i32* null)
  %206 = load i32*, i32** %21, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %227

208:                                              ; preds = %204
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %210 = load i32, i32* @AUDIO_ES, align 4
  %211 = load i32, i32* @VLC_CODEC_OPUS, align 4
  %212 = call i32 @es_format_Change(%struct.TYPE_12__* %209, i32 %210, i32 %211)
  %213 = load i32*, i32** %21, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  store i32* %213, i32** %215, align 8
  %216 = load i32, i32* %22, align 4
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 5
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  store i64 %220, i64* %223, align 8
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  store i32 48000, i32* %226, align 8
  br label %227

227:                                              ; preds = %208, %204
  br label %228

228:                                              ; preds = %227, %188
  br label %232

229:                                              ; preds = %123, %107, %95, %70
  %230 = load i32*, i32** %5, align 8
  %231 = call i32 (i32*, i8*, ...) @msg_Err(i32* %230, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %232

232:                                              ; preds = %229, %228, %182
  ret void
}

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i32 @bs_init(%struct.TYPE_13__*, i32*, i64) #1

declare dso_local i32 @vlc_ceil_log2(i32) #1

declare dso_local i32 @bs_read(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @opus_prepare_header(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @opus_write_header(i32**, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @es_format_Change(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
