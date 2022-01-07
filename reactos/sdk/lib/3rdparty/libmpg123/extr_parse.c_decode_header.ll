; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_parse.c_decode_header.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_parse.c_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@HDR_BITRATE = common dso_local global i64 0, align 8
@MPG_MD_MONO = common dso_local global i64 0, align 8
@VERBOSE3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [75 x i8] c"You fooled me too often. Refusing to guess free format frame size _again_.\00", align 1
@PARSE_BAD = common dso_local global i32 0, align 4
@PARSE_GOOD = common dso_local global i32 0, align 4
@VERBOSE2 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Note: free format frame size %li\0A\00", align 1
@MPG123_NEED_MORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Need more data to guess free format frame size.\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Encountered free format header, but failed to guess frame size.\00", align 1
@do_layer1 = common dso_local global i32 0, align 4
@tabsel_123 = common dso_local global i64*** null, align 8
@freqs = common dso_local global i32* null, align 8
@do_layer2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"bitrate index: %i (%i)\00", align 1
@do_layer3 = common dso_local global i32 0, align 4
@NOQUIET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Layer type %i not supported in this build!\00", align 1
@MAXFRAMESIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Frame size too big: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i32*)* @decode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_header(%struct.TYPE_4__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @HDR_LAYER_VAL(i64 %9)
  %11 = sub nsw i32 4, %10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @HDR_VERSION_VAL(i64 %14)
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @HDR_VERSION_VAL(i64 %19)
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i8* @HDR_SAMPLERATE_VAL(i64 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %30, i64 %35
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  br label %51

40:                                               ; preds = %3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i8* @HDR_SAMPLERATE_VAL(i64 %45)
  %47 = getelementptr i8, i8* %46, i64 6
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %40, %18
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @HDR_CRC_VAL(i64 %52)
  %54 = xor i32 %53, 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @HDR_BITRATE_VAL(i64 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @HDR_PADDING_VAL(i64 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 6
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @HDR_PRIVATE_VAL(i64 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 19
  store i32 %66, i32* %68, align 4
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @HDR_CHANNEL_VAL(i64 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 7
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @HDR_CHANEX_VAL(i64 %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 18
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @HDR_COPYRIGHT_VAL(i64 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 17
  store i32 %78, i32* %80, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @HDR_ORIGINAL_VAL(i64 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 16
  store i32 %82, i32* %84, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @HDR_EMPHASIS_VAL(i64 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 15
  store i32 %86, i32* %88, align 4
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @HDR_BITRATE, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MPG_MD_MONO, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %181

110:                                              ; preds = %51
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 10
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %170

115:                                              ; preds = %110
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 5
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load i64, i64* @VERBOSE3, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 @error(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %122
  %128 = load i32, i32* @PARSE_BAD, align 4
  store i32 %128, i32* %4, align 4
  br label %429

129:                                              ; preds = %115
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @guess_freeformat_framesize(%struct.TYPE_4__* %130, i64 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @PARSE_GOOD, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %129
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 11
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %139, %142
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 10
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* @VERBOSE2, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %136
  %149 = load i32, i32* @stderr, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 10
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @fprintf(i32 %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %152)
  br label %154

154:                                              ; preds = %148, %136
  br label %169

155:                                              ; preds = %129
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @MPG123_NEED_MORE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = call i32 @debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %167

161:                                              ; preds = %155
  %162 = load i64, i64* @VERBOSE3, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %161
  br label %167

167:                                              ; preds = %166, %159
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %4, align 4
  br label %429

169:                                              ; preds = %154
  br label %180

170:                                              ; preds = %110
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 10
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %173, %176
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 11
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %170, %169
  br label %181

181:                                              ; preds = %180, %51
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  switch i32 %184, label %395 [
    i32 1, label %185
    i32 2, label %236
    i32 3, label %302
  ]

185:                                              ; preds = %181
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 12
  store i32 384, i32* %187, align 8
  %188 = load i32, i32* @do_layer1, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 14
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %235, label %195

195:                                              ; preds = %185
  %196 = load i64***, i64**** @tabsel_123, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64**, i64*** %196, i64 %200
  %202 = load i64**, i64*** %201, align 8
  %203 = getelementptr inbounds i64*, i64** %202, i64 0
  %204 = load i64*, i64** %203, align 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds i64, i64* %204, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = mul nsw i64 %209, 12000
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 11
  store i64 %210, i64* %212, align 8
  %213 = load i32*, i32** @freqs, align 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 11
  %222 = load i64, i64* %221, align 8
  %223 = sdiv i64 %222, %219
  store i64 %223, i64* %221, align 8
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 11
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 6
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %226, %229
  %231 = shl i64 %230, 2
  %232 = sub nsw i64 %231, 4
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 11
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %195, %185
  br label %406

236:                                              ; preds = %181
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 12
  store i32 1152, i32* %238, align 8
  %239 = load i32, i32* @do_layer2, align 4
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 14
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %301, label %246

246:                                              ; preds = %236
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = load i64***, i64**** @tabsel_123, align 8
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64**, i64*** %250, i64 %254
  %256 = load i64**, i64*** %255, align 8
  %257 = getelementptr inbounds i64*, i64** %256, i64 1
  %258 = load i64*, i64** %257, align 8
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 5
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds i64, i64* %258, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @debug2(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %249, i64 %263)
  %265 = load i64***, i64**** @tabsel_123, align 8
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i64**, i64*** %265, i64 %269
  %271 = load i64**, i64*** %270, align 8
  %272 = getelementptr inbounds i64*, i64** %271, i64 1
  %273 = load i64*, i64** %272, align 8
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds i64, i64* %273, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = mul nsw i64 %278, 144000
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 11
  store i64 %279, i64* %281, align 8
  %282 = load i32*, i32** @freqs, align 8
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 11
  %291 = load i64, i64* %290, align 8
  %292 = sdiv i64 %291, %288
  store i64 %292, i64* %290, align 8
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = sub nsw i64 %295, 4
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 11
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %299, %296
  store i64 %300, i64* %298, align 8
  br label %301

301:                                              ; preds = %246, %236
  br label %406

302:                                              ; preds = %181
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i32 576, i32 1152
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 12
  store i32 %308, i32* %310, align 8
  %311 = load i32, i32* @do_layer3, align 4
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 14
  store i32 %311, i32* %313, align 8
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %327

318:                                              ; preds = %302
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 9
  %321 = load i32, i32* %320, align 4
  %322 = icmp eq i32 %321, 1
  %323 = zext i1 %322 to i64
  %324 = select i1 %322, i32 9, i32 17
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 13
  store i32 %324, i32* %326, align 4
  br label %336

327:                                              ; preds = %302
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 9
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 1
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 17, i32 32
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 13
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %327, %318
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %336
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 13
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, 2
  store i32 %345, i32* %343, align 4
  br label %346

346:                                              ; preds = %341, %336
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 8
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %394, label %351

351:                                              ; preds = %346
  %352 = load i64***, i64**** @tabsel_123, align 8
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64**, i64*** %352, i64 %356
  %358 = load i64**, i64*** %357, align 8
  %359 = getelementptr inbounds i64*, i64** %358, i64 2
  %360 = load i64*, i64** %359, align 8
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 5
  %363 = load i64, i64* %362, align 8
  %364 = getelementptr inbounds i64, i64* %360, i64 %363
  %365 = load i64, i64* %364, align 8
  %366 = mul nsw i64 %365, 144000
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 11
  store i64 %366, i64* %368, align 8
  %369 = load i32*, i32** @freqs, align 8
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 3
  %372 = load i64, i64* %371, align 8
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = shl i32 %374, %377
  %379 = sext i32 %378 to i64
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 11
  %382 = load i64, i64* %381, align 8
  %383 = sdiv i64 %382, %379
  store i64 %383, i64* %381, align 8
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 11
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 6
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %386, %389
  %391 = sub nsw i64 %390, 4
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 11
  store i64 %391, i64* %393, align 8
  br label %394

394:                                              ; preds = %351, %346
  br label %406

395:                                              ; preds = %181
  %396 = load i64, i64* @NOQUIET, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %395
  %399 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = sext i32 %401 to i64
  %403 = call i32 @error1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %402)
  br label %404

404:                                              ; preds = %398, %395
  %405 = load i32, i32* @PARSE_BAD, align 4
  store i32 %405, i32* %4, align 4
  br label %429

406:                                              ; preds = %394, %301, %235
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 11
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @MAXFRAMESIZE, align 8
  %411 = icmp sgt i64 %409, %410
  br i1 %411, label %412, label %427

412:                                              ; preds = %406
  %413 = load i64, i64* @NOQUIET, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %425

415:                                              ; preds = %412
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 11
  %418 = load i64, i64* %417, align 8
  %419 = add nsw i64 %418, 4
  %420 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 6
  %422 = load i64, i64* %421, align 8
  %423 = sub nsw i64 %419, %422
  %424 = call i32 @error1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %423)
  br label %425

425:                                              ; preds = %415, %412
  %426 = load i32, i32* @PARSE_BAD, align 4
  store i32 %426, i32* %4, align 4
  br label %429

427:                                              ; preds = %406
  %428 = load i32, i32* @PARSE_GOOD, align 4
  store i32 %428, i32* %4, align 4
  br label %429

429:                                              ; preds = %427, %425, %404, %167, %127
  %430 = load i32, i32* %4, align 4
  ret i32 %430
}

declare dso_local i32 @HDR_LAYER_VAL(i64) #1

declare dso_local i32 @HDR_VERSION_VAL(i64) #1

declare dso_local i8* @HDR_SAMPLERATE_VAL(i64) #1

declare dso_local i32 @HDR_CRC_VAL(i64) #1

declare dso_local i64 @HDR_BITRATE_VAL(i64) #1

declare dso_local i64 @HDR_PADDING_VAL(i64) #1

declare dso_local i32 @HDR_PRIVATE_VAL(i64) #1

declare dso_local i64 @HDR_CHANNEL_VAL(i64) #1

declare dso_local i32 @HDR_CHANEX_VAL(i64) #1

declare dso_local i32 @HDR_COPYRIGHT_VAL(i64) #1

declare dso_local i32 @HDR_ORIGINAL_VAL(i64) #1

declare dso_local i32 @HDR_EMPHASIS_VAL(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @guess_freeformat_framesize(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @debug2(i8*, i64, i64) #1

declare dso_local i32 @error1(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
