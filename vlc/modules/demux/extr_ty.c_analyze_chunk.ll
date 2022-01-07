; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_analyze_chunk.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_analyze_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@TIVO_PES_FILEID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"probe: chunk has %d 0x6e0 recs, %d 0xbe0 recs.\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"detected Series 1 Tivo\00", align 1
@TIVO_SERIES1 = common dso_local global i64 0, align 8
@SERIES1_PES_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"detected Series 2 Tivo\00", align 1
@TIVO_SERIES2 = common dso_local global i64 0, align 8
@SERIES2_PES_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"detected AC-3 Audio (DTivo)\00", align 1
@TIVO_AUDIO_AC3 = common dso_local global i32 0, align 4
@TIVO_TYPE_DTIVO = common dso_local global i8* null, align 8
@AC3_PTS_OFFSET = common dso_local global i32 0, align 4
@AC3_PES_LENGTH = common dso_local global i32 0, align 4
@TIVO_AUDIO_MPEG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"detected MPEG Audio\00", align 1
@TIVO_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@ty_MPEGAudioPacket = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"detected Stand-Alone Tivo\00", align 1
@TIVO_TYPE_SA = common dso_local global i64 0, align 8
@SA_PTS_OFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"detected DirecTV Tivo\00", align 1
@DTIVO_PTS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @analyze_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_chunk(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i64 @U32_AT(i32* %20)
  %22 = load i64, i64* @TIVO_PES_FILEID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %240

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %240

32:                                               ; preds = %25
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.TYPE_8__* @parse_chunk_headers(i32* %35, i32 %36, i32* %13)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %70, %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %49, %55
  switch i32 %56, label %69 [
    i32 1760, label %57
    i32 3040, label %60
    i32 960, label %63
    i32 2496, label %66
  ]

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %69

60:                                               ; preds = %42
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %69

63:                                               ; preds = %42
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %69

66:                                               ; preds = %42
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %42, %66, %63, %60, %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %38

73:                                               ; preds = %38
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Dbg(%struct.TYPE_9__* %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Dbg(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i64, i64* @TIVO_SERIES1, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @SERIES1_PES_LENGTH, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  br label %102

89:                                               ; preds = %73
  %90 = load i32, i32* %10, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Dbg(%struct.TYPE_9__* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i64, i64* @TIVO_SERIES2, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* @SERIES2_PES_LENGTH, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %92, %89
  br label %102

102:                                              ; preds = %101, %80
  %103 = load i32, i32* %11, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Dbg(%struct.TYPE_9__* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @TIVO_AUDIO_AC3, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i8*, i8** @TIVO_TYPE_DTIVO, align 8
  %112 = ptrtoint i8* %111 to i64
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* @AC3_PTS_OFFSET, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @AC3_PES_LENGTH, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  br label %131

121:                                              ; preds = %102
  %122 = load i32, i32* %12, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i32, i32* @TIVO_AUDIO_MPEG, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Dbg(%struct.TYPE_9__* %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %130

130:                                              ; preds = %124, %121
  br label %131

131:                                              ; preds = %130, %105
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @TIVO_TYPE_UNKNOWN, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %237

137:                                              ; preds = %131
  %138 = load i32, i32* %6, align 4
  %139 = mul nsw i32 16, %138
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %14, align 8
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %233, %137
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %236

145:                                              ; preds = %141
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %152, %158
  %160 = icmp eq i32 %159, 960
  br i1 %160, label %161, label %223

161:                                              ; preds = %145
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %167, 15
  br i1 %168, label %169, label %223

169:                                              ; preds = %161
  %170 = load i32, i32* @ty_MPEGAudioPacket, align 4
  %171 = load i32*, i32** %4, align 8
  %172 = load i64, i64* %14, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = call i32 @find_es_header(i32 %170, i32* %173, i32 5)
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %222

177:                                              ; preds = %169
  %178 = load i32*, i32** %4, align 8
  %179 = load i64, i64* %14, align 8
  %180 = add i64 %179, 6
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %180, %182
  %184 = getelementptr inbounds i32, i32* %178, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 128
  %187 = icmp eq i32 %186, 128
  br i1 %187, label %188, label %204

188:                                              ; preds = %177
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @TIVO_SERIES1, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %196 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Dbg(%struct.TYPE_9__* %195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %188
  %198 = load i64, i64* @TIVO_TYPE_SA, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  %201 = load i32, i32* @SA_PTS_OFFSET, align 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  br label %221

204:                                              ; preds = %177
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @TIVO_SERIES1, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %212 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Dbg(%struct.TYPE_9__* %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %204
  %214 = load i8*, i8** @TIVO_TYPE_DTIVO, align 8
  %215 = ptrtoint i8* %214 to i64
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  store i64 %215, i64* %217, align 8
  %218 = load i32, i32* @DTIVO_PTS_OFFSET, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  br label %221

221:                                              ; preds = %213, %197
  br label %236

222:                                              ; preds = %169
  br label %223

223:                                              ; preds = %222, %161, %145
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %14, align 8
  %232 = add i64 %231, %230
  store i64 %232, i64* %14, align 8
  br label %233

233:                                              ; preds = %223
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %7, align 4
  br label %141

236:                                              ; preds = %221, %141
  br label %237

237:                                              ; preds = %236, %131
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %239 = call i32 @free(%struct.TYPE_8__* %238)
  br label %240

240:                                              ; preds = %237, %31, %24
  ret void
}

declare dso_local i64 @U32_AT(i32*) #1

declare dso_local %struct.TYPE_8__* @parse_chunk_headers(i32*, i32, i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @find_es_header(i32, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
