; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_parse_public_key.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_parse_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@PUBLIC_KEY_FOUND = common dso_local global i32 0, align 4
@SIGNATURE_FOUND = common dso_local global i32 0, align 4
@USER_ID_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_public_key(i32* %0, i64 %1, %struct.TYPE_8__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32*, i32** %6, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %4
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @malloc(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %47, i32* %5, align 4
  br label %281

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i64, i64* %7, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @pgp_unarmor(i8* %50, i64 %51, i32* %52, i64 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %252

58:                                               ; preds = %48
  %59 = load i32*, i32** %13, align 8
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %11, align 8
  br label %64

64:                                               ; preds = %58, %4
  br label %65

65:                                               ; preds = %228, %64
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = icmp ult i32* %66, %67
  br i1 %68, label %69, label %233

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 64
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %69
  br label %252

80:                                               ; preds = %74
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @packet_type(i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %10, align 8
  %86 = load i32, i32* %84, align 4
  %87 = call i32 @packet_header_len(i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32*, i32** %11, align 8
  %93 = icmp ugt i32* %91, %92
  br i1 %93, label %103, label %94

94:                                               ; preds = %80
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 2
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 4
  br i1 %102, label %103, label %104

103:                                              ; preds = %100, %80
  br label %252

104:                                              ; preds = %100, %97, %94
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @scalar_number(i32* %105, i32 %106)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %10, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32*, i32** %11, align 8
  %117 = icmp ugt i32* %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %252

119:                                              ; preds = %104
  %120 = load i32, i32* %15, align 4
  switch i32 %120, label %227 [
    i32 130, label %121
    i32 129, label %133
    i32 128, label %194
  ]

121:                                              ; preds = %119
  %122 = load i32, i32* %12, align 4
  %123 = or i32 %122, 1
  store i32 %123, i32* %12, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @parse_public_key_packet(i32* %125, i32* %126, i32 %127)
  %129 = load i32, i32* @VLC_SUCCESS, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %252

132:                                              ; preds = %121
  br label %228

133:                                              ; preds = %119
  %134 = load i32, i32* %12, align 4
  %135 = and i32 %134, 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = load i32*, i32** %9, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %137, %133
  br label %228

141:                                              ; preds = %137
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @parse_signature_packet(%struct.TYPE_9__* %143, i32* %144, i32 %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* @VLC_SUCCESS, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %193

150:                                              ; preds = %141
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 4
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %228

157:                                              ; preds = %150
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = call i32 @memcmp(i32 %161, i32* %162, i32 8)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %190

165:                                              ; preds = %157
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @free(i32* %171)
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @free(i32* %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i32* null, i32** %184, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  store i32* null, i32** %189, align 8
  br label %228

190:                                              ; preds = %157
  %191 = load i32, i32* %12, align 4
  %192 = or i32 %191, 4
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %190, %141
  br label %228

194:                                              ; preds = %119
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %228

200:                                              ; preds = %194
  %201 = load i32, i32* %12, align 4
  %202 = or i32 %201, 2
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %17, align 4
  %204 = add nsw i32 %203, 1
  %205 = call i64 @malloc(i32 %204)
  %206 = inttoptr i64 %205 to i32*
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  store i32* %206, i32** %208, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %200
  br label %252

214:                                              ; preds = %200
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32*, i32** %10, align 8
  %219 = load i32, i32* %17, align 4
  %220 = call i32 @memcpy(i32* %217, i32* %218, i32 %219)
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 0, i32* %226, align 4
  br label %228

227:                                              ; preds = %119
  br label %228

228:                                              ; preds = %227, %214, %199, %193, %165, %156, %140, %132
  %229 = load i32, i32* %17, align 4
  %230 = load i32*, i32** %10, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32* %232, i32** %10, align 8
  br label %65

233:                                              ; preds = %65
  %234 = load i32*, i32** %13, align 8
  %235 = call i32 @free(i32* %234)
  %236 = load i32, i32* %12, align 4
  %237 = and i32 %236, 3
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %233
  %240 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %240, i32* %5, align 4
  br label %281

241:                                              ; preds = %233
  %242 = load i32*, i32** %9, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load i32, i32* %12, align 4
  %246 = and i32 %245, 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %244
  %249 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %249, i32* %5, align 4
  br label %281

250:                                              ; preds = %244, %241
  %251 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %251, i32* %5, align 4
  br label %281

252:                                              ; preds = %213, %131, %118, %103, %79, %57
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp eq i32 %256, 4
  br i1 %257, label %258, label %273

258:                                              ; preds = %252
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @free(i32* %264)
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @free(i32* %271)
  br label %273

273:                                              ; preds = %258, %252
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 @free(i32* %276)
  %278 = load i32*, i32** %13, align 8
  %279 = call i32 @free(i32* %278)
  %280 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %280, i32* %5, align 4
  br label %281

281:                                              ; preds = %273, %250, %248, %239, %46
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @pgp_unarmor(i8*, i64, i32*, i64) #1

declare dso_local i32 @packet_type(i32) #1

declare dso_local i32 @packet_header_len(i32) #1

declare dso_local i32 @scalar_number(i32*, i32) #1

declare dso_local i32 @parse_public_key_packet(i32*, i32*, i32) #1

declare dso_local i32 @parse_signature_packet(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
