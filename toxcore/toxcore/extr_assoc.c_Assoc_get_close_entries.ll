; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_Assoc_get_close_entries.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_Assoc_get_close_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_23__*, i32, i32, i32)*, i32, i64, i64, %struct.TYPE_19__**, i32, i32, i32 }

@assoc_id_closest = common dso_local global i32 0, align 4
@ProtoIPv4 = common dso_local global i32 0, align 4
@LANOk = common dso_local global i32 0, align 4
@ProtoIPv6 = common dso_local global i32 0, align 4
@DISTANCE_INDEX_INDEX_BITS = common dso_local global i64 0, align 8
@dist_index_comp = common dso_local global i32 0, align 4
@DISTANCE_INDEX_INDEX_MASK = common dso_local global i64 0, align 8
@BAD_NODE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Assoc_get_close_entries(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_21__*, align 8
  %25 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = icmp ne %struct.TYPE_23__* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = icmp ne %struct.TYPE_22__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %38, align 8
  %40 = icmp ne %struct.TYPE_19__** %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %31, %28, %2
  store i64 0, i64* %3, align 8
  br label %478

42:                                               ; preds = %36
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %49 = call i32 @client_id_self_update(%struct.TYPE_23__* %48)
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i64 0, i64* %3, align 8
  br label %478

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @assoc_id_closest, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i64 (%struct.TYPE_23__*, i32, i32, i32)*, i64 (%struct.TYPE_23__*, i32, i32, i32)** %67, align 8
  %69 = icmp ne i64 (%struct.TYPE_23__*, i32, i32, i32)* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  store i64 (%struct.TYPE_23__*, i32, i32, i32)* @id_distance, i64 (%struct.TYPE_23__*, i32, i32, i32)** %72, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = mul i64 %76, %79
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i8* @llvm.stacksave()
  store i8* %82, i8** %7, align 8
  %83 = alloca i64, i64 %81, align 16
  store i64 %81, i64* %8, align 8
  %84 = load i64, i64* %6, align 8
  %85 = mul i64 %84, 8
  %86 = call i32 @memset(i64* %83, i32 -1, i64 %85)
  store i64 0, i64* %9, align 8
  br label %87

87:                                               ; preds = %218, %73
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %221

93:                                               ; preds = %87
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i64 %97
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %11, align 8
  store i64 0, i64* %10, align 8
  br label %99

99:                                               ; preds = %214, %93
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %217

105:                                              ; preds = %99
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i64 %109
  store %struct.TYPE_21__* %110, %struct.TYPE_21__** %12, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %213

115:                                              ; preds = %105
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ProtoIPv4, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %115
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = call i32 @ipport_isset(%struct.TYPE_24__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  br label %214

130:                                              ; preds = %122
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @LANOk, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %130
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @LAN_ip(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %137
  br label %214

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %130
  br label %149

149:                                              ; preds = %148, %115
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @ProtoIPv6, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %183

156:                                              ; preds = %149
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = call i32 @ipport_isset(%struct.TYPE_24__* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %156
  br label %214

164:                                              ; preds = %156
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @LANOk, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %182, label %171

171:                                              ; preds = %164
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @LAN_ip(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %171
  br label %214

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181, %164
  br label %183

183:                                              ; preds = %182, %149
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load i64 (%struct.TYPE_23__*, i32, i32, i32)*, i64 (%struct.TYPE_23__*, i32, i32, i32)** %185, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i64 %186(%struct.TYPE_23__* %187, i32 %190, i32 %193, i32 %197)
  store i64 %198, i64* %13, align 8
  %199 = load i64, i64* %9, align 8
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = mul i64 %199, %202
  %204 = load i64, i64* %10, align 8
  %205 = add i64 %203, %204
  store i64 %205, i64* %14, align 8
  %206 = load i64, i64* %13, align 8
  %207 = load i64, i64* @DISTANCE_INDEX_INDEX_BITS, align 8
  %208 = shl i64 %206, %207
  %209 = load i64, i64* %14, align 8
  %210 = or i64 %208, %209
  %211 = load i64, i64* %14, align 8
  %212 = getelementptr inbounds i64, i64* %83, i64 %211
  store i64 %210, i64* %212, align 8
  br label %213

213:                                              ; preds = %183, %105
  br label %214

214:                                              ; preds = %213, %180, %163, %146, %129
  %215 = load i64, i64* %10, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %10, align 8
  br label %99

217:                                              ; preds = %99
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %9, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %9, align 8
  br label %87

221:                                              ; preds = %87
  %222 = load i64, i64* %6, align 8
  %223 = load i32, i32* @dist_index_comp, align 4
  %224 = call i32 @qsort(i64* %83, i64 %222, i32 8, i32 %223)
  store i64 -1, i64* %15, align 8
  store i64 -1, i64* %16, align 8
  store i64 1, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %225

225:                                              ; preds = %272, %221
  %226 = load i64, i64* %17, align 8
  %227 = load i64, i64* %6, align 8
  %228 = icmp ult i64 %226, %227
  br i1 %228, label %229, label %275

229:                                              ; preds = %225
  %230 = load i64, i64* %17, align 8
  %231 = getelementptr inbounds i64, i64* %83, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @DISTANCE_INDEX_INDEX_MASK, align 8
  %234 = and i64 %232, %233
  %235 = load i64, i64* @DISTANCE_INDEX_INDEX_MASK, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  br label %275

238:                                              ; preds = %229
  %239 = load i64, i64* %17, align 8
  %240 = getelementptr inbounds i64, i64* %83, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @DISTANCE_INDEX_INDEX_BITS, align 8
  %243 = lshr i64 %241, %242
  store i64 %243, i64* %19, align 8
  %244 = load i64, i64* %15, align 8
  %245 = load i64, i64* %19, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %238
  %248 = load i64, i64* %18, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %18, align 8
  br label %271

250:                                              ; preds = %238
  %251 = load i64, i64* %18, align 8
  %252 = icmp ugt i64 %251, 1
  br i1 %252, label %253, label %268

253:                                              ; preds = %250
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %255 = load i64, i64* %16, align 8
  %256 = load i64, i64* %17, align 8
  %257 = sub i64 %256, 1
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @dist_index_bubble(%struct.TYPE_23__* %254, i64* %83, i64 %255, i64 %257, i32 %260, i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %253, %250
  %269 = load i64, i64* %19, align 8
  store i64 %269, i64* %15, align 8
  %270 = load i64, i64* %17, align 8
  store i64 %270, i64* %16, align 8
  store i64 1, i64* %18, align 8
  br label %271

271:                                              ; preds = %268, %247
  br label %272

272:                                              ; preds = %271
  %273 = load i64, i64* %17, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %17, align 8
  br label %225

275:                                              ; preds = %237, %225
  %276 = load i64, i64* %18, align 8
  %277 = icmp ugt i64 %276, 1
  br i1 %277, label %278, label %293

278:                                              ; preds = %275
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %280 = load i64, i64* %16, align 8
  %281 = load i64, i64* %17, align 8
  %282 = sub i64 %281, 1
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @dist_index_bubble(%struct.TYPE_23__* %279, i64* %83, i64 %280, i64 %282, i32 %285, i32 %288, i32 %291)
  br label %293

293:                                              ; preds = %278, %275
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %22, align 8
  store i32 -1, i32* %23, align 4
  store i64 0, i64* %10, align 8
  br label %297

297:                                              ; preds = %414, %293
  %298 = load i64, i64* %10, align 8
  %299 = load i64, i64* %6, align 8
  %300 = icmp ult i64 %298, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %297
  %302 = load i64, i64* %21, align 8
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = icmp ult i64 %302, %305
  br label %307

307:                                              ; preds = %301, %297
  %308 = phi i1 [ false, %297 ], [ %306, %301 ]
  br i1 %308, label %309, label %417

309:                                              ; preds = %307
  %310 = load i64, i64* %10, align 8
  %311 = getelementptr inbounds i64, i64* %83, i64 %310
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @DISTANCE_INDEX_INDEX_MASK, align 8
  %314 = and i64 %312, %313
  %315 = load i64, i64* @DISTANCE_INDEX_INDEX_MASK, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  br label %417

318:                                              ; preds = %309
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %320 = load i64, i64* %10, align 8
  %321 = getelementptr inbounds i64, i64* %83, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = call %struct.TYPE_21__* @dist_index_entry(%struct.TYPE_23__* %319, i64 %322)
  store %struct.TYPE_21__* %323, %struct.TYPE_21__** %24, align 8
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %325 = icmp ne %struct.TYPE_21__* %324, null
  br i1 %325, label %326, label %413

326:                                              ; preds = %318
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %413

331:                                              ; preds = %326
  %332 = load i64, i64* %20, align 8
  %333 = load i64, i64* %22, align 8
  %334 = icmp uge i64 %332, %333
  br i1 %334, label %335, label %346

335:                                              ; preds = %331
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 4
  %340 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %339, align 8
  %341 = load i64, i64* %21, align 8
  %342 = add i64 %341, 1
  store i64 %342, i64* %21, align 8
  %343 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %340, i64 %341
  store %struct.TYPE_19__* %337, %struct.TYPE_19__** %343, align 8
  %344 = load i64, i64* %10, align 8
  %345 = trunc i64 %344 to i32
  store i32 %345, i32* %23, align 4
  br label %412

346:                                              ; preds = %331
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @ProtoIPv4, align 4
  %351 = load i32, i32* @ProtoIPv6, align 4
  %352 = or i32 %350, %351
  %353 = and i32 %349, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %390

355:                                              ; preds = %346
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @ProtoIPv4, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %372

362:                                              ; preds = %355
  %363 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %364 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %369 = call i64 @is_timeout(i32 %367, i32 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %362
  br label %414

372:                                              ; preds = %362, %355
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @ProtoIPv6, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %389

379:                                              ; preds = %372
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %386 = call i64 @is_timeout(i32 %384, i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %379
  br label %414

389:                                              ; preds = %379, %372
  br label %399

390:                                              ; preds = %346
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %395 = call i64 @is_timeout(i32 %393, i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %390
  br label %414

398:                                              ; preds = %390
  br label %399

399:                                              ; preds = %398, %389
  %400 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %401 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 4
  %404 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %403, align 8
  %405 = load i64, i64* %21, align 8
  %406 = add i64 %405, 1
  store i64 %406, i64* %21, align 8
  %407 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %404, i64 %405
  store %struct.TYPE_19__* %401, %struct.TYPE_19__** %407, align 8
  %408 = load i64, i64* %20, align 8
  %409 = add i64 %408, 1
  store i64 %409, i64* %20, align 8
  %410 = load i64, i64* %10, align 8
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %23, align 4
  br label %412

412:                                              ; preds = %399, %335
  br label %413

413:                                              ; preds = %412, %326, %318
  br label %414

414:                                              ; preds = %413, %397, %388, %371
  %415 = load i64, i64* %10, align 8
  %416 = add i64 %415, 1
  store i64 %416, i64* %10, align 8
  br label %297

417:                                              ; preds = %317, %307
  %418 = load i64, i64* %21, align 8
  %419 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = icmp ult i64 %418, %421
  br i1 %422, label %423, label %475

423:                                              ; preds = %417
  %424 = load i32, i32* %23, align 4
  %425 = add nsw i32 %424, 1
  %426 = sext i32 %425 to i64
  store i64 %426, i64* %10, align 8
  br label %427

427:                                              ; preds = %471, %423
  %428 = load i64, i64* %10, align 8
  %429 = load i64, i64* %6, align 8
  %430 = icmp ult i64 %428, %429
  br i1 %430, label %431, label %437

431:                                              ; preds = %427
  %432 = load i64, i64* %21, align 8
  %433 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 3
  %435 = load i64, i64* %434, align 8
  %436 = icmp ult i64 %432, %435
  br label %437

437:                                              ; preds = %431, %427
  %438 = phi i1 [ false, %427 ], [ %436, %431 ]
  br i1 %438, label %439, label %474

439:                                              ; preds = %437
  %440 = load i64, i64* %10, align 8
  %441 = getelementptr inbounds i64, i64* %83, i64 %440
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @DISTANCE_INDEX_INDEX_MASK, align 8
  %444 = and i64 %442, %443
  %445 = load i64, i64* @DISTANCE_INDEX_INDEX_MASK, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %439
  br label %474

448:                                              ; preds = %439
  %449 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %450 = load i64, i64* %10, align 8
  %451 = getelementptr inbounds i64, i64* %83, i64 %450
  %452 = load i64, i64* %451, align 8
  %453 = call %struct.TYPE_21__* @dist_index_entry(%struct.TYPE_23__* %449, i64 %452)
  store %struct.TYPE_21__* %453, %struct.TYPE_21__** %25, align 8
  %454 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %455 = icmp ne %struct.TYPE_21__* %454, null
  br i1 %455, label %456, label %470

456:                                              ; preds = %448
  %457 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 1
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %470

461:                                              ; preds = %456
  %462 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %463 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %462, i32 0, i32 0
  %464 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %464, i32 0, i32 4
  %466 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %465, align 8
  %467 = load i64, i64* %21, align 8
  %468 = add i64 %467, 1
  store i64 %468, i64* %21, align 8
  %469 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %466, i64 %467
  store %struct.TYPE_19__* %463, %struct.TYPE_19__** %469, align 8
  br label %470

470:                                              ; preds = %461, %456, %448
  br label %471

471:                                              ; preds = %470
  %472 = load i64, i64* %10, align 8
  %473 = add i64 %472, 1
  store i64 %473, i64* %10, align 8
  br label %427

474:                                              ; preds = %447, %437
  br label %475

475:                                              ; preds = %474, %417
  %476 = load i64, i64* %21, align 8
  store i64 %476, i64* %3, align 8
  %477 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %477)
  br label %478

478:                                              ; preds = %475, %54, %41
  %479 = load i64, i64* %3, align 8
  ret i64 %479
}

declare dso_local i32 @client_id_self_update(%struct.TYPE_23__*) #1

declare dso_local i64 @id_distance(%struct.TYPE_23__*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @ipport_isset(%struct.TYPE_24__*) #1

declare dso_local i32 @LAN_ip(i32) #1

declare dso_local i32 @qsort(i64*, i64, i32, i32) #1

declare dso_local i32 @dist_index_bubble(%struct.TYPE_23__*, i64*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_21__* @dist_index_entry(%struct.TYPE_23__*, i64) #1

declare dso_local i64 @is_timeout(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
