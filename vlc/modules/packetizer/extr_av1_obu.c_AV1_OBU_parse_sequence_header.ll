; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_AV1_OBU_parse_sequence_header.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_AV1_OBU_parse_sequence_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_7__*, i8*, %struct.TYPE_9__, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32, i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32 }

@SELECT_SCREEN_CONTENT_TOOLS = common dso_local global i8* null, align 8
@SELECT_INTEGER_MV = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @AV1_OBU_parse_sequence_header(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @bs_init(i32* %6, i32* %14, i64 %15)
  %17 = call %struct.TYPE_8__* @calloc(i32 1, i32 264)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %322

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 32
  %24 = call i32 @av1_read_header(i32* %6, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = call i32 @AV1_release_sequence_header(%struct.TYPE_8__* %27)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %322

29:                                               ; preds = %21
  %30 = load i8*, i8** @SELECT_SCREEN_CONTENT_TOOLS, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 10
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @SELECT_INTEGER_MV, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = call i8* @bs_read(i32* %6, i32 3)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = call i8* @bs_read1(i32* %6)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 31
  store i8* %39, i8** %41, align 8
  %42 = call i8* @bs_read1(i32* %6)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %29
  %46 = call i8* @bs_read(i32* %6, i32 5)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 25
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  br label %192

53:                                               ; preds = %29
  %54 = call i8* @bs_read1(i32* %6)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 30
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 30
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 29
  %64 = call i32 @av1_parse_timing_info(i32* %6, i32* %63)
  %65 = call i8* @bs_read1(i32* %6)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 28
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 28
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 27
  %75 = call i32 @av1_parse_decoder_model_info(i32* %6, %struct.TYPE_9__* %74)
  br label %76

76:                                               ; preds = %72, %61
  br label %77

77:                                               ; preds = %76, %53
  %78 = call i8* @bs_read1(i32* %6)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 26
  store i8* %78, i8** %80, align 8
  %81 = call i8* @bs_read(i32* %6, i32 5)
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  store i64 0, i64* %9, align 8
  br label %85

85:                                               ; preds = %188, %77
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ule i64 %86, %89
  br i1 %90, label %91, label %191

91:                                               ; preds = %85
  %92 = call i8* @bs_read(i32* %6, i32 12)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 25
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 6
  store i8* %92, i8** %98, align 8
  %99 = call i8* @bs_read(i32* %6, i32 5)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 25
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %100, i32* %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 25
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 7
  br i1 %114, label %115, label %123

115:                                              ; preds = %91
  %116 = call i8* @bs_read1(i32* %6)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 25
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 5
  store i8* %116, i8** %122, align 8
  br label %123

123:                                              ; preds = %115, %91
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 28
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %157

128:                                              ; preds = %123
  %129 = call i8* @bs_read1(i32* %6)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 25
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  store i8* %129, i8** %135, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 25
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %156

144:                                              ; preds = %128
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 25
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i64, i64* %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 27
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @av1_parse_operating_parameters_info(i32* %6, i32* %150, i32 %154)
  br label %156

156:                                              ; preds = %144, %128
  br label %157

157:                                              ; preds = %156, %123
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 26
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %187

162:                                              ; preds = %157
  %163 = call i8* @bs_read1(i32* %6)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 25
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  store i8* %163, i8** %169, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 25
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %162
  %179 = call i8* @bs_read(i32* %6, i32 4)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 25
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  store i8* %179, i8** %185, align 8
  br label %186

186:                                              ; preds = %178, %162
  br label %187

187:                                              ; preds = %186, %157
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* %9, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %9, align 8
  br label %85

191:                                              ; preds = %85
  br label %192

192:                                              ; preds = %191, %45
  %193 = call i8* @bs_read(i32* %6, i32 4)
  %194 = ptrtoint i8* %193 to i32
  store i32 %194, i32* %10, align 4
  %195 = call i8* @bs_read(i32* %6, i32 4)
  %196 = ptrtoint i8* %195 to i32
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 1, %197
  %199 = call i8* @bs_read(i32* %6, i32 %198)
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 24
  store i8* %199, i8** %201, align 8
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 1, %202
  %204 = call i8* @bs_read(i32* %6, i32 %203)
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 23
  store i8* %204, i8** %206, align 8
  %207 = load i8*, i8** %8, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %225, label %209

209:                                              ; preds = %192
  %210 = call i8* @bs_read1(i32* %6)
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 22
  store i8* %210, i8** %212, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 22
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %209
  %218 = call i8* @bs_read(i32* %6, i32 4)
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 21
  store i8* %218, i8** %220, align 8
  %221 = call i8* @bs_read(i32* %6, i32 3)
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 20
  store i8* %221, i8** %223, align 8
  br label %224

224:                                              ; preds = %217, %209
  br label %225

225:                                              ; preds = %224, %192
  %226 = call i8* @bs_read1(i32* %6)
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 19
  store i8* %226, i8** %228, align 8
  %229 = call i8* @bs_read1(i32* %6)
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 18
  store i8* %229, i8** %231, align 8
  %232 = call i8* @bs_read1(i32* %6)
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 17
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** %8, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %296, label %237

237:                                              ; preds = %225
  %238 = call i8* @bs_read1(i32* %6)
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 16
  store i8* %238, i8** %240, align 8
  %241 = call i8* @bs_read1(i32* %6)
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 15
  store i8* %241, i8** %243, align 8
  %244 = call i8* @bs_read1(i32* %6)
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 14
  store i8* %244, i8** %246, align 8
  %247 = call i8* @bs_read1(i32* %6)
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 13
  store i8* %247, i8** %249, align 8
  %250 = call i8* @bs_read1(i32* %6)
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 8
  store i8* %250, i8** %252, align 8
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 8
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %264

257:                                              ; preds = %237
  %258 = call i8* @bs_read1(i32* %6)
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 12
  store i8* %258, i8** %260, align 8
  %261 = call i8* @bs_read1(i32* %6)
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 11
  store i8* %261, i8** %263, align 8
  br label %264

264:                                              ; preds = %257, %237
  %265 = call i8* @bs_read1(i32* %6)
  store i8* %265, i8** %12, align 8
  %266 = load i8*, i8** %12, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = call i8* @bs_read1(i32* %6)
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 10
  store i8* %269, i8** %271, align 8
  br label %272

272:                                              ; preds = %268, %264
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 10
  %275 = load i8*, i8** %274, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %286

277:                                              ; preds = %272
  %278 = call i8* @bs_read1(i32* %6)
  store i8* %278, i8** %13, align 8
  %279 = load i8*, i8** %13, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = call i8* @bs_read1(i32* %6)
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 9
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %281, %277
  br label %286

286:                                              ; preds = %285, %272
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 8
  %289 = load i8*, i8** %288, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %295

291:                                              ; preds = %286
  %292 = call i8* @bs_read(i32* %6, i32 3)
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 7
  store i8* %292, i8** %294, align 8
  br label %295

295:                                              ; preds = %291, %286
  br label %296

296:                                              ; preds = %295, %225
  %297 = call i8* @bs_read1(i32* %6)
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 6
  store i8* %297, i8** %299, align 8
  %300 = call i8* @bs_read1(i32* %6)
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 5
  store i8* %300, i8** %302, align 8
  %303 = call i8* @bs_read1(i32* %6)
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 4
  store i8* %303, i8** %305, align 8
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 3
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 2
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @av1_parse_color_config(i32* %6, i32* %307, i8* %310)
  %312 = call i32 @bs_remain(i32* %6)
  %313 = icmp slt i32 %312, 1
  br i1 %313, label %314, label %317

314:                                              ; preds = %296
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %316 = call i32 @AV1_release_sequence_header(%struct.TYPE_8__* %315)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %322

317:                                              ; preds = %296
  %318 = call i8* @bs_read1(i32* %6)
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 1
  store i8* %318, i8** %320, align 8
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %321, %struct.TYPE_8__** %3, align 8
  br label %322

322:                                              ; preds = %317, %314, %26, %20
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %323
}

declare dso_local i32 @bs_init(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @av1_read_header(i32*, i32*) #1

declare dso_local i32 @AV1_release_sequence_header(%struct.TYPE_8__*) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i8* @bs_read1(i32*) #1

declare dso_local i32 @av1_parse_timing_info(i32*, i32*) #1

declare dso_local i32 @av1_parse_decoder_model_info(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @av1_parse_operating_parameters_info(i32*, i32*, i32) #1

declare dso_local i32 @av1_parse_color_config(i32*, i32*, i8*) #1

declare dso_local i32 @bs_remain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
