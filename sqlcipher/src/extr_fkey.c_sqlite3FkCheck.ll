; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkCheck.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_56__ = type { i32, i32, i32, i32, %struct.TYPE_53__* }
%struct.TYPE_53__ = type { i32, i64, i64, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i8* }
%struct.TYPE_54__ = type { i32, i32, i32, %struct.TYPE_52__*, %struct.TYPE_48__*, i32 }
%struct.TYPE_52__ = type { i8* }
%struct.TYPE_48__ = type { i32, i32, i32*, %struct.TYPE_49__*, %struct.TYPE_48__*, %struct.TYPE_51__*, i32, %struct.TYPE_48__* }
%struct.TYPE_49__ = type { i32, i64 }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_57__ = type { i64* }
%struct.TYPE_55__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i64, i64, %struct.TYPE_49__* }

@SQLITE_ForeignKeys = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OP_FkCounter = common dso_local global i32 0, align 4
@SQLITE_IGNORE = common dso_local global i32 0, align 4
@SQLITE_DeferFKs = common dso_local global i32 0, align 4
@OE_Cascade = common dso_local global i32 0, align 4
@OE_SetNull = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3FkCheck(%struct.TYPE_56__* %0, %struct.TYPE_54__* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_56__*, align 8
  %8 = alloca %struct.TYPE_54__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_53__*, align 8
  %14 = alloca %struct.TYPE_48__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_54__*, align 8
  %19 = alloca %struct.TYPE_57__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_57__*, align 8
  %31 = alloca %struct.TYPE_55__*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.SrcList_item*, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %7, align 8
  store %struct.TYPE_54__* %1, %struct.TYPE_54__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %35 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_53__*, %struct.TYPE_53__** %36, align 8
  store %struct.TYPE_53__* %37, %struct.TYPE_53__** %13, align 8
  %38 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = icmp ne i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SQLITE_ForeignKeys, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %6
  br label %530

57:                                               ; preds = %6
  %58 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %59 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_53__* %58, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_50__*, %struct.TYPE_50__** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %16, align 8
  %71 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_48__*, %struct.TYPE_48__** %72, align 8
  store %struct.TYPE_48__* %73, %struct.TYPE_48__** %14, align 8
  br label %74

74:                                               ; preds = %354, %57
  %75 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %76 = icmp ne %struct.TYPE_48__* %75, null
  br i1 %76, label %77, label %358

77:                                               ; preds = %74
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %19, align 8
  store i32* null, i32** %20, align 8
  store i32 0, i32* %24, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @sqlite3_stricmp(i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %91 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i64 @fkChildIsModified(%struct.TYPE_54__* %90, %struct.TYPE_48__* %91, i32* %92, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %354

97:                                               ; preds = %89, %80, %77
  %98 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %104 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = call %struct.TYPE_54__* @sqlite3FindTable(%struct.TYPE_53__* %103, i32 %106, i8* %107)
  store %struct.TYPE_54__* %108, %struct.TYPE_54__** %18, align 8
  br label %116

109:                                              ; preds = %97
  %110 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %111 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = call %struct.TYPE_54__* @sqlite3LocateTable(%struct.TYPE_56__* %110, i32 0, i32 %113, i8* %114)
  store %struct.TYPE_54__* %115, %struct.TYPE_54__** %18, align 8
  br label %116

116:                                              ; preds = %109, %102
  %117 = load %struct.TYPE_54__*, %struct.TYPE_54__** %18, align 8
  %118 = icmp ne %struct.TYPE_54__* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %121 = load %struct.TYPE_54__*, %struct.TYPE_54__** %18, align 8
  %122 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %123 = call i64 @sqlite3FkLocateIndex(%struct.TYPE_56__* %120, %struct.TYPE_54__* %121, %struct.TYPE_48__* %122, %struct.TYPE_57__** %19, i32** %20)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %197

125:                                              ; preds = %119, %116
  %126 = load i32, i32* %17, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = icmp eq i32 %132, 0
  br label %134

134:                                              ; preds = %131, %128
  %135 = phi i1 [ false, %128 ], [ %133, %131 ]
  br label %136

136:                                              ; preds = %134, %125
  %137 = phi i1 [ true, %125 ], [ %135, %134 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142, %136
  br label %530

148:                                              ; preds = %142
  %149 = load %struct.TYPE_54__*, %struct.TYPE_54__** %18, align 8
  %150 = icmp eq %struct.TYPE_54__* %149, null
  br i1 %150, label %151, label %196

151:                                              ; preds = %148
  %152 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %153 = call i32* @sqlite3GetVdbe(%struct.TYPE_56__* %152)
  store i32* %153, i32** %25, align 8
  %154 = load i32*, i32** %25, align 8
  %155 = call i32 @sqlite3VdbeCurrentAddr(i32* %154)
  %156 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %155, %158
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %26, align 4
  store i32 0, i32* %23, align 4
  br label %161

161:                                              ; preds = %186, %151
  %162 = load i32, i32* %23, align 4
  %163 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %161
  %168 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_51__*, %struct.TYPE_51__** %169, align 8
  %171 = load i32, i32* %23, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %175, %176
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %27, align 4
  %179 = load i32*, i32** %25, align 8
  %180 = load i32, i32* @OP_IsNull, align 4
  %181 = load i32, i32* %27, align 4
  %182 = load i32, i32* %26, align 4
  %183 = call i32 @sqlite3VdbeAddOp2(i32* %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32*, i32** %25, align 8
  %185 = call i32 @VdbeCoverage(i32* %184)
  br label %186

186:                                              ; preds = %167
  %187 = load i32, i32* %23, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %23, align 4
  br label %161

189:                                              ; preds = %161
  %190 = load i32*, i32** %25, align 8
  %191 = load i32, i32* @OP_FkCounter, align 4
  %192 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @sqlite3VdbeAddOp2(i32* %190, i32 %191, i32 %194, i32 -1)
  br label %196

196:                                              ; preds = %189, %148
  br label %354

197:                                              ; preds = %119
  %198 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %210, label %202

202:                                              ; preds = %197
  %203 = load i32*, i32** %20, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %207 = icmp ne %struct.TYPE_57__* %206, null
  br label %208

208:                                              ; preds = %205, %202
  %209 = phi i1 [ false, %202 ], [ %207, %205 ]
  br label %210

210:                                              ; preds = %208, %197
  %211 = phi i1 [ true, %197 ], [ %209, %208 ]
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load i32*, i32** %20, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i32*, i32** %20, align 8
  store i32* %217, i32** %21, align 8
  br label %225

218:                                              ; preds = %210
  %219 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %219, i32 0, i32 5
  %221 = load %struct.TYPE_51__*, %struct.TYPE_51__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %22, align 4
  store i32* %22, i32** %21, align 8
  br label %225

225:                                              ; preds = %218, %216
  store i32 0, i32* %23, align 4
  br label %226

226:                                              ; preds = %303, %225
  %227 = load i32, i32* %23, align 4
  %228 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp slt i32 %227, %230
  br i1 %231, label %232, label %306

232:                                              ; preds = %226
  %233 = load i32*, i32** %21, align 8
  %234 = load i32, i32* %23, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %237, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %232
  %243 = load i32*, i32** %21, align 8
  %244 = load i32, i32* %23, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 -1, i32* %246, align 4
  br label %247

247:                                              ; preds = %242, %232
  %248 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %249 = icmp eq %struct.TYPE_57__* %248, null
  br i1 %249, label %259, label %250

250:                                              ; preds = %247
  %251 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %252 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %251, i32 0, i32 0
  %253 = load i64*, i64** %252, align 8
  %254 = load i32, i32* %23, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %253, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = icmp uge i64 %257, 0
  br label %259

259:                                              ; preds = %250, %247
  %260 = phi i1 [ true, %247 ], [ %258, %250 ]
  %261 = zext i1 %260 to i32
  %262 = call i32 @assert(i32 %261)
  %263 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %302

267:                                              ; preds = %259
  %268 = load %struct.TYPE_54__*, %struct.TYPE_54__** %18, align 8
  %269 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_52__*, %struct.TYPE_52__** %269, align 8
  %271 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %272 = icmp ne %struct.TYPE_57__* %271, null
  br i1 %272, label %273, label %281

273:                                              ; preds = %267
  %274 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %275 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %274, i32 0, i32 0
  %276 = load i64*, i64** %275, align 8
  %277 = load i32, i32* %23, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  %280 = load i64, i64* %279, align 8
  br label %286

281:                                              ; preds = %267
  %282 = load %struct.TYPE_54__*, %struct.TYPE_54__** %18, align 8
  %283 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  br label %286

286:                                              ; preds = %281, %273
  %287 = phi i64 [ %280, %273 ], [ %285, %281 ]
  %288 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %270, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  store i8* %290, i8** %29, align 8
  %291 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %292 = load %struct.TYPE_54__*, %struct.TYPE_54__** %18, align 8
  %293 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i8*, i8** %29, align 8
  %296 = load i32, i32* %15, align 4
  %297 = call i32 @sqlite3AuthReadCol(%struct.TYPE_56__* %291, i32 %294, i8* %295, i32 %296)
  store i32 %297, i32* %28, align 4
  %298 = load i32, i32* %28, align 4
  %299 = load i32, i32* @SQLITE_IGNORE, align 4
  %300 = icmp eq i32 %298, %299
  %301 = zext i1 %300 to i32
  store i32 %301, i32* %24, align 4
  br label %302

302:                                              ; preds = %286, %259
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %23, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %23, align 4
  br label %226

306:                                              ; preds = %226
  %307 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %308 = load i32, i32* %15, align 4
  %309 = load %struct.TYPE_54__*, %struct.TYPE_54__** %18, align 8
  %310 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_54__*, %struct.TYPE_54__** %18, align 8
  %313 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @sqlite3TableLock(%struct.TYPE_56__* %307, i32 %308, i32 %311, i32 0, i32 %314)
  %316 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %317, align 4
  %320 = load i32, i32* %9, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %332

322:                                              ; preds = %306
  %323 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %324 = load i32, i32* %15, align 4
  %325 = load %struct.TYPE_54__*, %struct.TYPE_54__** %18, align 8
  %326 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %327 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %328 = load i32*, i32** %21, align 8
  %329 = load i32, i32* %9, align 4
  %330 = load i32, i32* %24, align 4
  %331 = call i32 @fkLookupParent(%struct.TYPE_56__* %323, i32 %324, %struct.TYPE_54__* %325, %struct.TYPE_57__* %326, %struct.TYPE_48__* %327, i32* %328, i32 %329, i32 -1, i32 %330)
  br label %332

332:                                              ; preds = %322, %306
  %333 = load i32, i32* %10, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %350

335:                                              ; preds = %332
  %336 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %337 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %338 = call i32 @isSetNullAction(%struct.TYPE_56__* %336, %struct.TYPE_48__* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %350, label %340

340:                                              ; preds = %335
  %341 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %342 = load i32, i32* %15, align 4
  %343 = load %struct.TYPE_54__*, %struct.TYPE_54__** %18, align 8
  %344 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %345 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %346 = load i32*, i32** %21, align 8
  %347 = load i32, i32* %10, align 4
  %348 = load i32, i32* %24, align 4
  %349 = call i32 @fkLookupParent(%struct.TYPE_56__* %341, i32 %342, %struct.TYPE_54__* %343, %struct.TYPE_57__* %344, %struct.TYPE_48__* %345, i32* %346, i32 %347, i32 1, i32 %348)
  br label %350

350:                                              ; preds = %340, %335, %332
  %351 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %352 = load i32*, i32** %20, align 8
  %353 = call i32 @sqlite3DbFree(%struct.TYPE_53__* %351, i32* %352)
  br label %354

354:                                              ; preds = %350, %196, %96
  %355 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %356 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %355, i32 0, i32 7
  %357 = load %struct.TYPE_48__*, %struct.TYPE_48__** %356, align 8
  store %struct.TYPE_48__* %357, %struct.TYPE_48__** %14, align 8
  br label %74

358:                                              ; preds = %74
  %359 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %360 = call %struct.TYPE_48__* @sqlite3FkReferences(%struct.TYPE_54__* %359)
  store %struct.TYPE_48__* %360, %struct.TYPE_48__** %14, align 8
  br label %361

361:                                              ; preds = %526, %358
  %362 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %363 = icmp ne %struct.TYPE_48__* %362, null
  br i1 %363, label %364, label %530

364:                                              ; preds = %361
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %30, align 8
  store i32* null, i32** %32, align 8
  %365 = load i32*, i32** %11, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %367, label %375

367:                                              ; preds = %364
  %368 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %369 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %370 = load i32*, i32** %11, align 8
  %371 = load i32, i32* %12, align 4
  %372 = call i64 @fkParentIsModified(%struct.TYPE_54__* %368, %struct.TYPE_48__* %369, i32* %370, i32 %371)
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %367
  br label %526

375:                                              ; preds = %367, %364
  %376 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %377 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %407, label %380

380:                                              ; preds = %375
  %381 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %382 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @SQLITE_DeferFKs, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %407, label %387

387:                                              ; preds = %380
  %388 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %407, label %392

392:                                              ; preds = %387
  %393 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %407, label %397

397:                                              ; preds = %392
  %398 = load i32, i32* %9, align 4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = load i32, i32* %10, align 4
  %402 = icmp ne i32 %401, 0
  br label %403

403:                                              ; preds = %400, %397
  %404 = phi i1 [ false, %397 ], [ %402, %400 ]
  %405 = zext i1 %404 to i32
  %406 = call i32 @assert(i32 %405)
  br label %526

407:                                              ; preds = %392, %387, %380, %375
  %408 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %409 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %410 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %411 = call i64 @sqlite3FkLocateIndex(%struct.TYPE_56__* %408, %struct.TYPE_54__* %409, %struct.TYPE_48__* %410, %struct.TYPE_57__** %30, i32** %32)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %423

413:                                              ; preds = %407
  %414 = load i32, i32* %17, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %421

416:                                              ; preds = %413
  %417 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %418 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %416, %413
  br label %530

422:                                              ; preds = %416
  br label %526

423:                                              ; preds = %407
  %424 = load i32*, i32** %32, align 8
  %425 = icmp ne i32* %424, null
  br i1 %425, label %431, label %426

426:                                              ; preds = %423
  %427 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %428 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 1
  br label %431

431:                                              ; preds = %426, %423
  %432 = phi i1 [ true, %423 ], [ %430, %426 ]
  %433 = zext i1 %432 to i32
  %434 = call i32 @assert(i32 %433)
  %435 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %436 = call %struct.TYPE_55__* @sqlite3SrcListAppend(%struct.TYPE_56__* %435, i32 0, i32 0, i32 0)
  store %struct.TYPE_55__* %436, %struct.TYPE_55__** %31, align 8
  %437 = load %struct.TYPE_55__*, %struct.TYPE_55__** %31, align 8
  %438 = icmp ne %struct.TYPE_55__* %437, null
  br i1 %438, label %439, label %522

439:                                              ; preds = %431
  %440 = load %struct.TYPE_55__*, %struct.TYPE_55__** %31, align 8
  %441 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %440, i32 0, i32 0
  %442 = load %struct.SrcList_item*, %struct.SrcList_item** %441, align 8
  store %struct.SrcList_item* %442, %struct.SrcList_item** %33, align 8
  %443 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %444 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %443, i32 0, i32 3
  %445 = load %struct.TYPE_49__*, %struct.TYPE_49__** %444, align 8
  %446 = load %struct.SrcList_item*, %struct.SrcList_item** %33, align 8
  %447 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %446, i32 0, i32 2
  store %struct.TYPE_49__* %445, %struct.TYPE_49__** %447, align 8
  %448 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %449 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %448, i32 0, i32 3
  %450 = load %struct.TYPE_49__*, %struct.TYPE_49__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.SrcList_item*, %struct.SrcList_item** %33, align 8
  %454 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %453, i32 0, i32 0
  store i64 %452, i64* %454, align 8
  %455 = load %struct.SrcList_item*, %struct.SrcList_item** %33, align 8
  %456 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %455, i32 0, i32 2
  %457 = load %struct.TYPE_49__*, %struct.TYPE_49__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %458, align 8
  %461 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %462 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %462, align 4
  %465 = sext i32 %463 to i64
  %466 = load %struct.SrcList_item*, %struct.SrcList_item** %33, align 8
  %467 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %466, i32 0, i32 1
  store i64 %465, i64* %467, align 8
  %468 = load i32, i32* %10, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %479

470:                                              ; preds = %439
  %471 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %472 = load %struct.TYPE_55__*, %struct.TYPE_55__** %31, align 8
  %473 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %474 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %475 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %476 = load i32*, i32** %32, align 8
  %477 = load i32, i32* %10, align 4
  %478 = call i32 @fkScanChildren(%struct.TYPE_56__* %471, %struct.TYPE_55__* %472, %struct.TYPE_54__* %473, %struct.TYPE_57__* %474, %struct.TYPE_48__* %475, i32* %476, i32 %477, i32 -1)
  br label %479

479:                                              ; preds = %470, %439
  %480 = load i32, i32* %9, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %516

482:                                              ; preds = %479
  %483 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %484 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %483, i32 0, i32 2
  %485 = load i32*, i32** %484, align 8
  %486 = load i32*, i32** %11, align 8
  %487 = icmp ne i32* %486, null
  %488 = zext i1 %487 to i32
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %485, i64 %489
  %491 = load i32, i32* %490, align 4
  store i32 %491, i32* %34, align 4
  %492 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %493 = load %struct.TYPE_55__*, %struct.TYPE_55__** %31, align 8
  %494 = load %struct.TYPE_54__*, %struct.TYPE_54__** %8, align 8
  %495 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %496 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %497 = load i32*, i32** %32, align 8
  %498 = load i32, i32* %9, align 4
  %499 = call i32 @fkScanChildren(%struct.TYPE_56__* %492, %struct.TYPE_55__* %493, %struct.TYPE_54__* %494, %struct.TYPE_57__* %495, %struct.TYPE_48__* %496, i32* %497, i32 %498, i32 1)
  %500 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %501 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %515, label %504

504:                                              ; preds = %482
  %505 = load i32, i32* %34, align 4
  %506 = load i32, i32* @OE_Cascade, align 4
  %507 = icmp ne i32 %505, %506
  br i1 %507, label %508, label %515

508:                                              ; preds = %504
  %509 = load i32, i32* %34, align 4
  %510 = load i32, i32* @OE_SetNull, align 4
  %511 = icmp ne i32 %509, %510
  br i1 %511, label %512, label %515

512:                                              ; preds = %508
  %513 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %514 = call i32 @sqlite3MayAbort(%struct.TYPE_56__* %513)
  br label %515

515:                                              ; preds = %512, %508, %504, %482
  br label %516

516:                                              ; preds = %515, %479
  %517 = load %struct.SrcList_item*, %struct.SrcList_item** %33, align 8
  %518 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %517, i32 0, i32 0
  store i64 0, i64* %518, align 8
  %519 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %520 = load %struct.TYPE_55__*, %struct.TYPE_55__** %31, align 8
  %521 = call i32 @sqlite3SrcListDelete(%struct.TYPE_53__* %519, %struct.TYPE_55__* %520)
  br label %522

522:                                              ; preds = %516, %431
  %523 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %524 = load i32*, i32** %32, align 8
  %525 = call i32 @sqlite3DbFree(%struct.TYPE_53__* %523, i32* %524)
  br label %526

526:                                              ; preds = %522, %422, %403, %374
  %527 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %528 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %527, i32 0, i32 4
  %529 = load %struct.TYPE_48__*, %struct.TYPE_48__** %528, align 8
  store %struct.TYPE_48__* %529, %struct.TYPE_48__** %14, align 8
  br label %361

530:                                              ; preds = %56, %147, %421, %361
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_53__*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i32, i32) #1

declare dso_local i64 @fkChildIsModified(%struct.TYPE_54__*, %struct.TYPE_48__*, i32*, i32) #1

declare dso_local %struct.TYPE_54__* @sqlite3FindTable(%struct.TYPE_53__*, i32, i8*) #1

declare dso_local %struct.TYPE_54__* @sqlite3LocateTable(%struct.TYPE_56__*, i32, i32, i8*) #1

declare dso_local i64 @sqlite3FkLocateIndex(%struct.TYPE_56__*, %struct.TYPE_54__*, %struct.TYPE_48__*, %struct.TYPE_57__**, i32**) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_56__*) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3AuthReadCol(%struct.TYPE_56__*, i32, i8*, i32) #1

declare dso_local i32 @sqlite3TableLock(%struct.TYPE_56__*, i32, i32, i32, i32) #1

declare dso_local i32 @fkLookupParent(%struct.TYPE_56__*, i32, %struct.TYPE_54__*, %struct.TYPE_57__*, %struct.TYPE_48__*, i32*, i32, i32, i32) #1

declare dso_local i32 @isSetNullAction(%struct.TYPE_56__*, %struct.TYPE_48__*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_53__*, i32*) #1

declare dso_local %struct.TYPE_48__* @sqlite3FkReferences(%struct.TYPE_54__*) #1

declare dso_local i64 @fkParentIsModified(%struct.TYPE_54__*, %struct.TYPE_48__*, i32*, i32) #1

declare dso_local %struct.TYPE_55__* @sqlite3SrcListAppend(%struct.TYPE_56__*, i32, i32, i32) #1

declare dso_local i32 @fkScanChildren(%struct.TYPE_56__*, %struct.TYPE_55__*, %struct.TYPE_54__*, %struct.TYPE_57__*, %struct.TYPE_48__*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_56__*) #1

declare dso_local i32 @sqlite3SrcListDelete(%struct.TYPE_53__*, %struct.TYPE_55__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
