; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_SplitNode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_SplitNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_45__ = type { i32, i32, i32*, %struct.TYPE_45__*, i32 }
%struct.TYPE_46__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_47__*, %struct.TYPE_45__*, %struct.TYPE_46__*, i32)* @SplitNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SplitNode(%struct.TYPE_47__* %0, %struct.TYPE_45__* %1, %struct.TYPE_46__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_47__*, align 8
  %6 = alloca %struct.TYPE_45__*, align 8
  %7 = alloca %struct.TYPE_46__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_46__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_45__*, align 8
  %16 = alloca %struct.TYPE_45__*, align 8
  %17 = alloca %struct.TYPE_46__, align 8
  %18 = alloca %struct.TYPE_46__, align 8
  %19 = alloca %struct.TYPE_45__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_47__* %0, %struct.TYPE_47__** %5, align 8
  store %struct.TYPE_45__* %1, %struct.TYPE_45__** %6, align 8
  store %struct.TYPE_46__* %2, %struct.TYPE_46__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %25 = call i32 @NCELL(%struct.TYPE_45__* %24)
  store i32 %25, i32* %12, align 4
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %15, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %16, align 8
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 12, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.TYPE_46__* @sqlite3_malloc64(i32 %30)
  store %struct.TYPE_46__* %31, %struct.TYPE_46__** %13, align 8
  %32 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %33 = icmp ne %struct.TYPE_46__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %35, i32* %11, align 4
  br label %316

36:                                               ; preds = %4
  %37 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %37, i64 %40
  %42 = bitcast %struct.TYPE_46__* %41 to i32*
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32* %43, i32 0, i32 %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %63, %36
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %56 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %58, i64 %60
  %62 = call i32 @nodeGetCell(%struct.TYPE_47__* %55, %struct.TYPE_45__* %56, i32 %57, %struct.TYPE_46__* %61)
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %68 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %69 = call i32 @nodeZero(%struct.TYPE_47__* %67, %struct.TYPE_45__* %68)
  %70 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %70, i64 %72
  %74 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %75 = call i32 @memcpy(%struct.TYPE_46__* %73, %struct.TYPE_46__* %74, i32 8)
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %102

82:                                               ; preds = %66
  %83 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %84 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %85 = call %struct.TYPE_45__* @nodeNew(%struct.TYPE_47__* %83, %struct.TYPE_45__* %84)
  store %struct.TYPE_45__* %85, %struct.TYPE_45__** %16, align 8
  %86 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %87 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %88 = call %struct.TYPE_45__* @nodeNew(%struct.TYPE_47__* %86, %struct.TYPE_45__* %87)
  store %struct.TYPE_45__* %88, %struct.TYPE_45__** %15, align 8
  %89 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @writeInt16(i32* %97, i32 %100)
  br label %113

102:                                              ; preds = %66
  %103 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  store %struct.TYPE_45__* %103, %struct.TYPE_45__** %15, align 8
  %104 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %105 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_45__*, %struct.TYPE_45__** %106, align 8
  %108 = call %struct.TYPE_45__* @nodeNew(%struct.TYPE_47__* %104, %struct.TYPE_45__* %107)
  store %struct.TYPE_45__* %108, %struct.TYPE_45__** %16, align 8
  %109 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %102, %82
  %114 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %115 = icmp ne %struct.TYPE_45__* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %118 = icmp ne %struct.TYPE_45__* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %120, i32* %11, align 4
  br label %316

121:                                              ; preds = %116
  %122 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @memset(i32* %124, i32 0, i32 %127)
  %129 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @memset(i32* %131, i32 0, i32 %134)
  %136 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %137 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %140 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %141 = call i32 @splitNodeStartree(%struct.TYPE_47__* %136, %struct.TYPE_46__* %137, i32 %138, %struct.TYPE_45__* %139, %struct.TYPE_45__* %140, %struct.TYPE_46__* %17, %struct.TYPE_46__* %18)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @SQLITE_OK, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %121
  br label %316

146:                                              ; preds = %121
  %147 = load i32, i32* @SQLITE_OK, align 4
  %148 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %149 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %150 = call i32 @nodeWrite(%struct.TYPE_47__* %148, %struct.TYPE_45__* %149)
  store i32 %150, i32* %11, align 4
  %151 = icmp ne i32 %147, %150
  br i1 %151, label %163, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 0, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load i32, i32* @SQLITE_OK, align 4
  %159 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %160 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %161 = call i32 @nodeWrite(%struct.TYPE_47__* %159, %struct.TYPE_45__* %160)
  store i32 %161, i32* %11, align 4
  %162 = icmp ne i32 %158, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157, %146
  br label %316

164:                                              ; preds = %157, %152
  %165 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %18, i32 0, i32 0
  store i64 %168, i64* %169, align 8
  %170 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %17, i32 0, i32 0
  store i64 %173, i64* %174, align 8
  %175 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %192

179:                                              ; preds = %164
  %180 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %181 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_45__*, %struct.TYPE_45__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  %186 = call i32 @rtreeInsertCell(%struct.TYPE_47__* %180, %struct.TYPE_45__* %183, %struct.TYPE_46__* %17, i32 %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* @SQLITE_OK, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  br label %316

191:                                              ; preds = %179
  br label %216

192:                                              ; preds = %164
  %193 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_45__*, %struct.TYPE_45__** %194, align 8
  store %struct.TYPE_45__* %195, %struct.TYPE_45__** %19, align 8
  %196 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %197 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %198 = call i32 @nodeParentIndex(%struct.TYPE_47__* %196, %struct.TYPE_45__* %197, i32* %20)
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @SQLITE_OK, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %192
  %203 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %204 = load %struct.TYPE_45__*, %struct.TYPE_45__** %19, align 8
  %205 = load i32, i32* %20, align 4
  %206 = call i32 @nodeOverwriteCell(%struct.TYPE_47__* %203, %struct.TYPE_45__* %204, %struct.TYPE_46__* %17, i32 %205)
  %207 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %208 = load %struct.TYPE_45__*, %struct.TYPE_45__** %19, align 8
  %209 = call i32 @AdjustTree(%struct.TYPE_47__* %207, %struct.TYPE_45__* %208, %struct.TYPE_46__* %17)
  store i32 %209, i32* %11, align 4
  br label %210

210:                                              ; preds = %202, %192
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @SQLITE_OK, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  br label %316

215:                                              ; preds = %210
  br label %216

216:                                              ; preds = %215, %191
  %217 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %218 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_45__*, %struct.TYPE_45__** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  %223 = call i32 @rtreeInsertCell(%struct.TYPE_47__* %217, %struct.TYPE_45__* %220, %struct.TYPE_46__* %18, i32 %222)
  store i32 %223, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %216
  br label %316

226:                                              ; preds = %216
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %254, %226
  %228 = load i32, i32* %9, align 4
  %229 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %230 = call i32 @NCELL(%struct.TYPE_45__* %229)
  %231 = icmp slt i32 %228, %230
  br i1 %231, label %232, label %257

232:                                              ; preds = %227
  %233 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %234 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %235 = load i32, i32* %9, align 4
  %236 = call i64 @nodeGetRowid(%struct.TYPE_47__* %233, %struct.TYPE_45__* %234, i32 %235)
  store i64 %236, i64* %21, align 8
  %237 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %238 = load i64, i64* %21, align 8
  %239 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @updateMapping(%struct.TYPE_47__* %237, i64 %238, %struct.TYPE_45__* %239, i32 %240)
  store i32 %241, i32* %11, align 4
  %242 = load i64, i64* %21, align 8
  %243 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %242, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %232
  store i32 1, i32* %10, align 4
  br label %248

248:                                              ; preds = %247, %232
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* @SQLITE_OK, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  br label %316

253:                                              ; preds = %248
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %9, align 4
  br label %227

257:                                              ; preds = %227
  %258 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %287

262:                                              ; preds = %257
  store i32 0, i32* %9, align 4
  br label %263

263:                                              ; preds = %283, %262
  %264 = load i32, i32* %9, align 4
  %265 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %266 = call i32 @NCELL(%struct.TYPE_45__* %265)
  %267 = icmp slt i32 %264, %266
  br i1 %267, label %268, label %286

268:                                              ; preds = %263
  %269 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %270 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %271 = load i32, i32* %9, align 4
  %272 = call i64 @nodeGetRowid(%struct.TYPE_47__* %269, %struct.TYPE_45__* %270, i32 %271)
  store i64 %272, i64* %22, align 8
  %273 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %274 = load i64, i64* %22, align 8
  %275 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %276 = load i32, i32* %8, align 4
  %277 = call i32 @updateMapping(%struct.TYPE_47__* %273, i64 %274, %struct.TYPE_45__* %275, i32 %276)
  store i32 %277, i32* %11, align 4
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* @SQLITE_OK, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %268
  br label %316

282:                                              ; preds = %268
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %9, align 4
  br label %263

286:                                              ; preds = %263
  br label %299

287:                                              ; preds = %257
  %288 = load i32, i32* %10, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %287
  %291 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %292 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %296 = load i32, i32* %8, align 4
  %297 = call i32 @updateMapping(%struct.TYPE_47__* %291, i64 %294, %struct.TYPE_45__* %295, i32 %296)
  store i32 %297, i32* %11, align 4
  br label %298

298:                                              ; preds = %290, %287
  br label %299

299:                                              ; preds = %298, %286
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* @SQLITE_OK, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %299
  %304 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %305 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %306 = call i32 @nodeRelease(%struct.TYPE_47__* %304, %struct.TYPE_45__* %305)
  store i32 %306, i32* %11, align 4
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %16, align 8
  br label %307

307:                                              ; preds = %303, %299
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* @SQLITE_OK, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %307
  %312 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %313 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %314 = call i32 @nodeRelease(%struct.TYPE_47__* %312, %struct.TYPE_45__* %313)
  store i32 %314, i32* %11, align 4
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %15, align 8
  br label %315

315:                                              ; preds = %311, %307
  br label %316

316:                                              ; preds = %315, %281, %252, %225, %214, %190, %163, %145, %119, %34
  %317 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %318 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %319 = call i32 @nodeRelease(%struct.TYPE_47__* %317, %struct.TYPE_45__* %318)
  %320 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %321 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %322 = call i32 @nodeRelease(%struct.TYPE_47__* %320, %struct.TYPE_45__* %321)
  %323 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %324 = call i32 @sqlite3_free(%struct.TYPE_46__* %323)
  %325 = load i32, i32* %11, align 4
  ret i32 %325
}

declare dso_local i32 @NCELL(%struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_46__* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nodeGetCell(%struct.TYPE_47__*, %struct.TYPE_45__*, i32, %struct.TYPE_46__*) #1

declare dso_local i32 @nodeZero(%struct.TYPE_47__*, %struct.TYPE_45__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_46__*, %struct.TYPE_46__*, i32) #1

declare dso_local %struct.TYPE_45__* @nodeNew(%struct.TYPE_47__*, %struct.TYPE_45__*) #1

declare dso_local i32 @writeInt16(i32*, i32) #1

declare dso_local i32 @splitNodeStartree(%struct.TYPE_47__*, %struct.TYPE_46__*, i32, %struct.TYPE_45__*, %struct.TYPE_45__*, %struct.TYPE_46__*, %struct.TYPE_46__*) #1

declare dso_local i32 @nodeWrite(%struct.TYPE_47__*, %struct.TYPE_45__*) #1

declare dso_local i32 @rtreeInsertCell(%struct.TYPE_47__*, %struct.TYPE_45__*, %struct.TYPE_46__*, i32) #1

declare dso_local i32 @nodeParentIndex(%struct.TYPE_47__*, %struct.TYPE_45__*, i32*) #1

declare dso_local i32 @nodeOverwriteCell(%struct.TYPE_47__*, %struct.TYPE_45__*, %struct.TYPE_46__*, i32) #1

declare dso_local i32 @AdjustTree(%struct.TYPE_47__*, %struct.TYPE_45__*, %struct.TYPE_46__*) #1

declare dso_local i64 @nodeGetRowid(%struct.TYPE_47__*, %struct.TYPE_45__*, i32) #1

declare dso_local i32 @updateMapping(%struct.TYPE_47__*, i64, %struct.TYPE_45__*, i32) #1

declare dso_local i32 @nodeRelease(%struct.TYPE_47__*, %struct.TYPE_45__*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_46__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
