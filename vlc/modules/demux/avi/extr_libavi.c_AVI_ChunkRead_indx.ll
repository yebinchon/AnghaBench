; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkRead_indx.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkRead_indx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@AVI_READCHUNK_ENTER = common dso_local global i32 0, align 4
@AVI_INDEX_OF_CHUNKS = common dso_local global i64 0, align 8
@i_read = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@AVI_INDEX_2FIELD = common dso_local global i64 0, align 8
@AVI_INDEX_OF_INDEXES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"unknown type/subtype index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @AVI_ChunkRead_indx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVI_ChunkRead_indx(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @VLC_UNUSED(i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %10, align 8
  %16 = load i32, i32* @AVI_READCHUNK_ENTER, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @AVI_READ2BYTES(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @AVI_READ1BYTE(i64 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @AVI_READ1BYTE(i64 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @AVI_READ4BYTES(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @AVI_READ4BYTES(i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AVI_INDEX_OF_CHUNKS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %119

51:                                               ; preds = %2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %119

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @AVI_READ8BYTES(i64 %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @AVI_READ4BYTES(i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @i_read, align 4
  %67 = sdiv i32 %66, 8
  %68 = call i32 @__MIN(i32 %65, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i8* @calloc(i32 %72, i32 4)
  %74 = bitcast i8* %73 to %struct.TYPE_6__*
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %56
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = icmp ne %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %116

86:                                               ; preds = %80, %56
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %112, %86
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %87
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @AVI_READ4BYTES(i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @AVI_READ4BYTES(i32 %110)
  br label %112

112:                                              ; preds = %91
  %113 = load i32, i32* %7, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %87

115:                                              ; preds = %87
  br label %118

116:                                              ; preds = %80
  %117 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %116, %115
  br label %290

119:                                              ; preds = %51, %2
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AVI_INDEX_OF_CHUNKS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %204

125:                                              ; preds = %119
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @AVI_INDEX_2FIELD, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %204

131:                                              ; preds = %125
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @AVI_READ8BYTES(i64 %134)
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @AVI_READ4BYTES(i32 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @i_read, align 4
  %142 = sdiv i32 %141, 12
  %143 = call i32 @__MIN(i32 %140, i32 %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i8* @calloc(i32 %147, i32 4)
  %149 = bitcast i8* %148 to %struct.TYPE_7__*
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  store %struct.TYPE_7__* %149, %struct.TYPE_7__** %152, align 8
  %153 = load i32, i32* %6, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %131
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = icmp ne %struct.TYPE_7__* %159, null
  br i1 %160, label %161, label %201

161:                                              ; preds = %155, %131
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %197, %161
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %166, label %200

166:                                              ; preds = %162
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @AVI_READ4BYTES(i32 %175)
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @AVI_READ4BYTES(i32 %185)
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @AVI_READ4BYTES(i32 %195)
  br label %197

197:                                              ; preds = %166
  %198 = load i32, i32* %7, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %7, align 4
  br label %162

200:                                              ; preds = %162
  br label %203

201:                                              ; preds = %155
  %202 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %201, %200
  br label %289

204:                                              ; preds = %125, %119
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @AVI_INDEX_OF_INDEXES, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %285

210:                                              ; preds = %204
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 5
  store i64 0, i64* %212, align 8
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @AVI_READ4BYTES(i32 %213)
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @AVI_READ4BYTES(i32 %215)
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @AVI_READ4BYTES(i32 %217)
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @i_read, align 4
  %223 = sdiv i32 %222, 16
  %224 = call i32 @__MIN(i32 %221, i32 %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* %6, align 4
  %229 = call i8* @calloc(i32 %228, i32 4)
  %230 = bitcast i8* %229 to %struct.TYPE_8__*
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  store %struct.TYPE_8__* %230, %struct.TYPE_8__** %233, align 8
  %234 = load i32, i32* %6, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %210
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = icmp ne %struct.TYPE_8__* %240, null
  br i1 %241, label %242, label %282

242:                                              ; preds = %236, %210
  store i32 0, i32* %7, align 4
  br label %243

243:                                              ; preds = %278, %242
  %244 = load i32, i32* %7, align 4
  %245 = load i32, i32* %6, align 4
  %246 = icmp ult i32 %244, %245
  br i1 %246, label %247, label %281

247:                                              ; preds = %243
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @AVI_READ8BYTES(i64 %256)
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = load i32, i32* %7, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @AVI_READ4BYTES(i32 %266)
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = load i32, i32* %7, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @AVI_READ4BYTES(i32 %276)
  br label %278

278:                                              ; preds = %247
  %279 = load i32, i32* %7, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %7, align 4
  br label %243

281:                                              ; preds = %243
  br label %284

282:                                              ; preds = %236
  %283 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %283, i32* %8, align 4
  br label %284

284:                                              ; preds = %282, %281
  br label %288

285:                                              ; preds = %204
  %286 = load i32*, i32** %4, align 8
  %287 = call i32 @msg_Warn(i32* %286, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %288

288:                                              ; preds = %285, %284
  br label %289

289:                                              ; preds = %288, %203
  br label %290

290:                                              ; preds = %289, %118
  %291 = load i32, i32* %8, align 4
  %292 = call i32 @AVI_READCHUNK_EXIT(i32 %291)
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i32 @AVI_READ2BYTES(i32) #1

declare dso_local i32 @AVI_READ1BYTE(i64) #1

declare dso_local i32 @AVI_READ4BYTES(i32) #1

declare dso_local i32 @AVI_READ8BYTES(i64) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @AVI_READCHUNK_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
