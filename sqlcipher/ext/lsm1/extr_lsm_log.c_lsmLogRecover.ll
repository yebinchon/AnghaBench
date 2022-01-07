; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_log.c_lsmLogRecover.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_log.c_lsmLogRecover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, i32, %struct.TYPE_32__*, %struct.TYPE_31__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, i32 }
%struct.TYPE_34__ = type { i32, i64 }
%struct.TYPE_35__ = type { i32, i32, %struct.TYPE_34__, i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmLogRecover(%struct.TYPE_33__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_34__, align 8
  %5 = alloca %struct.TYPE_34__, align 8
  %6 = alloca %struct.TYPE_35__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  %22 = load i32, i32* @LSM_OK, align 4
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %24 = call i32 @lsmFsOpenLog(%struct.TYPE_33__* %23, i32* %12)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @LSM_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %378

30:                                               ; preds = %1
  %31 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %32 = call i32 @lsmTreeInit(%struct.TYPE_33__* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @LSM_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %378

38:                                               ; preds = %30
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 0
  store %struct.TYPE_36__* %41, %struct.TYPE_36__** %11, align 8
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %48 = call i32 @lsmCheckpointLogoffset(i32 %46, %struct.TYPE_36__* %47)
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %50 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %51 = call i32 @logReaderInit(%struct.TYPE_33__* %49, %struct.TYPE_36__* %50, i32 1, %struct.TYPE_35__* %6)
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @lsmStringInit(%struct.TYPE_34__* %4, i32 %54)
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @lsmStringInit(%struct.TYPE_34__* %5, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %327

62:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %323, %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @LSM_OK, align 4
  %69 = icmp eq i32 %67, %68
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i1 [ false, %63 ], [ %69, %66 ]
  br i1 %71, label %72, label %326

72:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %287, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @LSM_OK, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i1 [ false, %73 ], [ %80, %77 ]
  br i1 %82, label %83, label %288

83:                                               ; preds = %81
  store i32 0, i32* %14, align 4
  %84 = call i32 @logReaderByte(%struct.TYPE_35__* %6, i32* %14, i32* %7)
  %85 = load i32, i32* %14, align 4
  switch i32 %85, label %286 [
    i32 131, label %86
    i32 130, label %87
    i32 134, label %91
    i32 133, label %91
    i32 129, label %91
    i32 128, label %91
    i32 136, label %147
    i32 135, label %147
    i32 137, label %175
    i32 132, label %196
  ]

86:                                               ; preds = %83
  br label %287

87:                                               ; preds = %83
  %88 = call i32 @logReaderVarint(%struct.TYPE_35__* %6, %struct.TYPE_34__* %4, i32* %15, i32* %7)
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @logReaderBlob(%struct.TYPE_35__* %6, %struct.TYPE_34__* %4, i32 %89, i32** null, i32* %7)
  br label %287

91:                                               ; preds = %83, %83, %83, %83
  %92 = call i32 @logReaderVarint(%struct.TYPE_35__* %6, %struct.TYPE_34__* %4, i32* %16, i32* %7)
  %93 = call i32 @logReaderVarint(%struct.TYPE_35__* %6, %struct.TYPE_34__* %5, i32* %17, i32* %7)
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 128
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 133
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %91
  %100 = call i32 @logReaderCksum(%struct.TYPE_35__* %6, %struct.TYPE_34__* %4, i32* %13, i32* %7)
  br label %106

101:                                              ; preds = %96
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @logRequireCksum(%struct.TYPE_35__* %6, i32 %104)
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %101, %99
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %287

110:                                              ; preds = %106
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @logReaderBlob(%struct.TYPE_35__* %6, %struct.TYPE_34__* %4, i32 %111, i32** null, i32* %7)
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @logReaderBlob(%struct.TYPE_35__* %6, %struct.TYPE_34__* %5, i32 %113, i32** %18, i32* %7)
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %146

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @LSM_OK, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %117
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %122, 129
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %14, align 4
  %126 = icmp eq i32 %125, 128
  br i1 %126, label %127, label %136

127:                                              ; preds = %124, %121
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %4, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i32*
  %132 = load i32, i32* %16, align 4
  %133 = load i32*, i32** %18, align 8
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @lsmTreeInsert(%struct.TYPE_33__* %128, i32* %131, i32 %132, i32* %133, i32 %134)
  store i32 %135, i32* %7, align 4
  br label %145

136:                                              ; preds = %124
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %4, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i32*
  %141 = load i32, i32* %16, align 4
  %142 = load i32*, i32** %18, align 8
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @lsmTreeDelete(%struct.TYPE_33__* %137, i32* %140, i32 %141, i32* %142, i32 %143)
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %136, %127
  br label %146

146:                                              ; preds = %145, %117, %110
  br label %287

147:                                              ; preds = %83, %83
  %148 = call i32 @logReaderVarint(%struct.TYPE_35__* %6, %struct.TYPE_34__* %4, i32* %19, i32* %7)
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 135
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 @logReaderCksum(%struct.TYPE_35__* %6, %struct.TYPE_34__* %4, i32* %13, i32* %7)
  br label %156

153:                                              ; preds = %147
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @logRequireCksum(%struct.TYPE_35__* %6, i32 %154)
  store i32 %155, i32* %13, align 4
  br label %156

156:                                              ; preds = %153, %151
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %287

160:                                              ; preds = %156
  %161 = load i32, i32* %19, align 4
  %162 = call i32 @logReaderBlob(%struct.TYPE_35__* %6, %struct.TYPE_34__* %4, i32 %161, i32** %20, i32* %7)
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @LSM_OK, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %171 = load i32*, i32** %20, align 8
  %172 = load i32, i32* %19, align 4
  %173 = call i32 @lsmTreeInsert(%struct.TYPE_33__* %170, i32* %171, i32 %172, i32* null, i32 -1)
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %169, %165, %160
  br label %287

175:                                              ; preds = %83
  %176 = call i32 @logReaderCksum(%struct.TYPE_35__* %6, %struct.TYPE_34__* %4, i32* %13, i32* %7)
  %177 = load i32, i32* %13, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %195

179:                                              ; preds = %175
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = load i32, i32* %9, align 4
  %186 = icmp eq i32 %185, 1
  br label %187

187:                                              ; preds = %184, %179
  %188 = phi i1 [ true, %179 ], [ %186, %184 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load i32, i32* %8, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  store i32 1, i32* %13, align 4
  br label %194

194:                                              ; preds = %193, %187
  br label %195

195:                                              ; preds = %194, %175
  br label %287

196:                                              ; preds = %83
  store i32 0, i32* %21, align 4
  %197 = call i32 @logReaderVarint(%struct.TYPE_35__* %6, %struct.TYPE_34__* %4, i32* %21, i32* %7)
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @LSM_OK, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %285

201:                                              ; preds = %196
  %202 = load i32, i32* %9, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %272

204:                                              ; preds = %201
  %205 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i64 2
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %229

212:                                              ; preds = %204
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i64 1
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i64 1
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 1
  store i32 %223, i32* %228, align 8
  br label %264

229:                                              ; preds = %204
  %230 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %235, 0
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i64 2
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %247, i64 0
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 0
  store i64 %244, i64* %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %251, %254
  %256 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %255, %257
  %259 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i64 0
  %263 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %262, i32 0, i32 1
  store i32 %258, i32* %263, align 8
  br label %264

264:                                              ; preds = %229, %212
  %265 = load i32, i32* %21, align 4
  %266 = sext i32 %265 to i64
  %267 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i64 2
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 0
  store i64 %266, i64* %271, align 8
  br label %278

272:                                              ; preds = %201
  %273 = load i32, i32* %10, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %10, align 4
  %275 = icmp eq i32 %273, 2
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  store i32 1, i32* %13, align 4
  br label %277

277:                                              ; preds = %276, %272
  br label %278

278:                                              ; preds = %277, %264
  %279 = load i32, i32* %21, align 4
  %280 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 0
  store i32 %279, i32* %280, align 8
  %281 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  br label %285

285:                                              ; preds = %278, %196
  br label %287

286:                                              ; preds = %83
  store i32 1, i32* %13, align 4
  br label %287

287:                                              ; preds = %286, %285, %195, %174, %159, %146, %109, %87, %86
  br label %73

288:                                              ; preds = %81
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* @LSM_OK, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %322

292:                                              ; preds = %288
  %293 = load i32, i32* %9, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %322

295:                                              ; preds = %292
  %296 = load i32, i32* %8, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %316

298:                                              ; preds = %295
  %299 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_30__*, %struct.TYPE_30__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %301, i64 2
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %298
  store i32 1, i32* %9, align 4
  br label %315

307:                                              ; preds = %298
  %308 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %308, i32 0, i32 2
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %310, i64 2
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %311, i32 0, i32 0
  store i64 0, i64* %312, align 8
  store i32 -1, i32* %9, align 4
  %313 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %314 = call i32 @lsmCheckpointZeroLogoffset(%struct.TYPE_33__* %313)
  br label %315

315:                                              ; preds = %307, %306
  br label %316

316:                                              ; preds = %315, %295
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %318 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %319 = call i32 @logReaderInit(%struct.TYPE_33__* %317, %struct.TYPE_36__* %318, i32 0, %struct.TYPE_35__* %6)
  %320 = load i32, i32* %8, align 4
  %321 = mul nsw i32 %320, -1
  store i32 %321, i32* %8, align 4
  br label %322

322:                                              ; preds = %316, %292, %288
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %9, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %9, align 4
  br label %63

326:                                              ; preds = %70
  br label %327

327:                                              ; preds = %326, %38
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* @LSM_OK, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %354

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = sub nsw i32 %333, %336
  %338 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %337, %339
  %341 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %341, i32 0, i32 2
  %343 = load %struct.TYPE_30__*, %struct.TYPE_30__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %343, i64 2
  %345 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %344, i32 0, i32 1
  store i32 %340, i32* %345, align 8
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 4
  %350 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %353 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %352, i32 0, i32 0
  store i32 %351, i32* %353, align 8
  br label %354

354:                                              ; preds = %331, %327
  %355 = load i32, i32* %7, align 4
  %356 = load i32, i32* @LSM_OK, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %360 = call i32 @lsmFinishRecovery(%struct.TYPE_33__* %359)
  store i32 %360, i32* %7, align 4
  br label %364

361:                                              ; preds = %354
  %362 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %363 = call i32 @lsmFinishRecovery(%struct.TYPE_33__* %362)
  br label %364

364:                                              ; preds = %361, %358
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %364
  %370 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %371 = call i32 @lsmFsCloseLog(%struct.TYPE_33__* %370)
  br label %372

372:                                              ; preds = %369, %364
  %373 = call i32 @lsmStringClear(%struct.TYPE_34__* %4)
  %374 = call i32 @lsmStringClear(%struct.TYPE_34__* %5)
  %375 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %6, i32 0, i32 2
  %376 = call i32 @lsmStringClear(%struct.TYPE_34__* %375)
  %377 = load i32, i32* %7, align 4
  store i32 %377, i32* %2, align 4
  br label %378

378:                                              ; preds = %372, %36, %28
  %379 = load i32, i32* %2, align 4
  ret i32 %379
}

declare dso_local i32 @lsmFsOpenLog(%struct.TYPE_33__*, i32*) #1

declare dso_local i32 @lsmTreeInit(%struct.TYPE_33__*) #1

declare dso_local i32 @lsmCheckpointLogoffset(i32, %struct.TYPE_36__*) #1

declare dso_local i32 @logReaderInit(%struct.TYPE_33__*, %struct.TYPE_36__*, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @lsmStringInit(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @logReaderByte(%struct.TYPE_35__*, i32*, i32*) #1

declare dso_local i32 @logReaderVarint(%struct.TYPE_35__*, %struct.TYPE_34__*, i32*, i32*) #1

declare dso_local i32 @logReaderBlob(%struct.TYPE_35__*, %struct.TYPE_34__*, i32, i32**, i32*) #1

declare dso_local i32 @logReaderCksum(%struct.TYPE_35__*, %struct.TYPE_34__*, i32*, i32*) #1

declare dso_local i32 @logRequireCksum(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @lsmTreeInsert(%struct.TYPE_33__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @lsmTreeDelete(%struct.TYPE_33__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmCheckpointZeroLogoffset(%struct.TYPE_33__*) #1

declare dso_local i32 @lsmFinishRecovery(%struct.TYPE_33__*) #1

declare dso_local i32 @lsmFsCloseLog(%struct.TYPE_33__*) #1

declare dso_local i32 @lsmStringClear(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
