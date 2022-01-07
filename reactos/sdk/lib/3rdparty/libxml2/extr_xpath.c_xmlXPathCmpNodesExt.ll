; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xpath.c_xmlXPathCmpNodesExt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xpath.c_xmlXPathCmpNodesExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @xmlXPathCmpNodesExt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlXPathCmpNodesExt(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  store i32 -2, i32* %3, align 4
  br label %529

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = icmp eq %struct.TYPE_4__* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %529

28:                                               ; preds = %23
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %137 [
    i32 131, label %32
    i32 134, label %81
    i32 128, label %86
    i32 133, label %86
    i32 132, label %86
    i32 129, label %86
    i32 130, label %136
  ]

32:                                               ; preds = %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 131
  br i1 %36, label %37, label %80

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = icmp sgt i32 0, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = icmp sgt i32 0, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %529

72:                                               ; preds = %57
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %529

77:                                               ; preds = %72
  br label %79

78:                                               ; preds = %49, %43, %37
  br label %339

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %32
  br label %138

81:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %11, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %4, align 8
  store i32 1, i32* %8, align 4
  br label %138

86:                                               ; preds = %28, %28, %28, %28
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %11, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = icmp ne %struct.TYPE_4__* %90, null
  br i1 %91, label %92, label %114

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %112, %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  store %struct.TYPE_4__* %96, %struct.TYPE_4__** %4, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 131
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 3, i32* %9, align 4
  br label %113

102:                                              ; preds = %93
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = icmp eq %struct.TYPE_4__* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  store i32 2, i32* %9, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %4, align 8
  br label %113

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111
  br i1 true, label %93, label %113

113:                                              ; preds = %112, %107, %101
  br label %118

114:                                              ; preds = %86
  store i32 2, i32* %9, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  store %struct.TYPE_4__* %117, %struct.TYPE_4__** %4, align 8
  br label %118

118:                                              ; preds = %114, %113
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = icmp eq %struct.TYPE_4__* %119, null
  br i1 %120, label %132, label %121

121:                                              ; preds = %118
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 131
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = icmp sle i32 0, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %126, %121, %118
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %133, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %9, align 4
  br label %135

134:                                              ; preds = %126
  store i32 1, i32* %8, align 4
  br label %135

135:                                              ; preds = %134, %132
  br label %138

136:                                              ; preds = %28
  store i32 1, i32* %3, align 4
  br label %529

137:                                              ; preds = %28
  br label %138

138:                                              ; preds = %137, %135, %81, %80
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %199 [
    i32 131, label %142
    i32 134, label %143
    i32 128, label %148
    i32 133, label %148
    i32 132, label %148
    i32 129, label %148
    i32 130, label %198
  ]

142:                                              ; preds = %138
  br label %200

143:                                              ; preds = %138
  store i32 1, i32* %10, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %144, %struct.TYPE_4__** %12, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  store %struct.TYPE_4__* %147, %struct.TYPE_4__** %5, align 8
  store i32 1, i32* %8, align 4
  br label %200

148:                                              ; preds = %138, %138, %138, %138
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %149, %struct.TYPE_4__** %12, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = icmp ne %struct.TYPE_4__* %152, null
  br i1 %153, label %154, label %176

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %174, %154
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  store %struct.TYPE_4__* %158, %struct.TYPE_4__** %5, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 131
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  store i32 3, i32* %10, align 4
  br label %175

164:                                              ; preds = %155
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = icmp eq %struct.TYPE_4__* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  store i32 2, i32* %10, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  store %struct.TYPE_4__* %172, %struct.TYPE_4__** %5, align 8
  br label %175

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173
  br i1 true, label %155, label %175

175:                                              ; preds = %174, %169, %163
  br label %180

176:                                              ; preds = %148
  store i32 2, i32* %10, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  store %struct.TYPE_4__* %179, %struct.TYPE_4__** %5, align 8
  br label %180

180:                                              ; preds = %176, %175
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %182 = icmp eq %struct.TYPE_4__* %181, null
  br i1 %182, label %194, label %183

183:                                              ; preds = %180
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 131
  br i1 %187, label %194, label %188

188:                                              ; preds = %183
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = icmp sle i32 0, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %188, %183, %180
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %195, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %10, align 4
  br label %197

196:                                              ; preds = %188
  store i32 1, i32* %8, align 4
  br label %197

197:                                              ; preds = %196, %194
  br label %200

198:                                              ; preds = %138
  store i32 1, i32* %3, align 4
  br label %529

199:                                              ; preds = %138
  br label %200

200:                                              ; preds = %199, %197, %143, %142
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %287

203:                                              ; preds = %200
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %206 = icmp eq %struct.TYPE_4__* %204, %205
  br i1 %206, label %207, label %240

207:                                              ; preds = %203
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %234

211:                                              ; preds = %207
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  store %struct.TYPE_4__* %214, %struct.TYPE_4__** %13, align 8
  br label %215

215:                                              ; preds = %229, %211
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %217 = icmp ne %struct.TYPE_4__* %216, null
  br i1 %217, label %218, label %233

218:                                              ; preds = %215
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %221 = icmp eq %struct.TYPE_4__* %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  store i32 1, i32* %3, align 4
  br label %529

223:                                              ; preds = %218
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 131
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  store i32 -1, i32* %3, align 4
  br label %529

229:                                              ; preds = %223
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  store %struct.TYPE_4__* %232, %struct.TYPE_4__** %13, align 8
  br label %215

233:                                              ; preds = %215
  store i32 -1, i32* %3, align 4
  br label %529

234:                                              ; preds = %207
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i32 1, i32* %3, align 4
  br label %529

239:                                              ; preds = %234
  store i32 -1, i32* %3, align 4
  br label %529

240:                                              ; preds = %203
  %241 = load i32, i32* %10, align 4
  %242 = icmp eq i32 %241, 3
  br i1 %242, label %243, label %263

243:                                              ; preds = %240
  %244 = load i32, i32* %9, align 4
  %245 = icmp sgt i32 %244, 1
  br i1 %245, label %246, label %263

246:                                              ; preds = %243
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 5
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  store %struct.TYPE_4__* %249, %struct.TYPE_4__** %13, align 8
  br label %250

250:                                              ; preds = %258, %246
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %252 = icmp ne %struct.TYPE_4__* %251, null
  br i1 %252, label %253, label %262

253:                                              ; preds = %250
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %256 = icmp eq %struct.TYPE_4__* %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  store i32 1, i32* %3, align 4
  br label %529

258:                                              ; preds = %253
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 5
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  store %struct.TYPE_4__* %261, %struct.TYPE_4__** %13, align 8
  br label %250

262:                                              ; preds = %250
  br label %263

263:                                              ; preds = %262, %243, %240
  %264 = load i32, i32* %9, align 4
  %265 = icmp eq i32 %264, 3
  br i1 %265, label %266, label %286

266:                                              ; preds = %263
  %267 = load i32, i32* %10, align 4
  %268 = icmp sgt i32 %267, 1
  br i1 %268, label %269, label %286

269:                                              ; preds = %266
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 5
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  store %struct.TYPE_4__* %272, %struct.TYPE_4__** %13, align 8
  br label %273

273:                                              ; preds = %281, %269
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %275 = icmp ne %struct.TYPE_4__* %274, null
  br i1 %275, label %276, label %285

276:                                              ; preds = %273
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %279 = icmp eq %struct.TYPE_4__* %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  store i32 -1, i32* %3, align 4
  br label %529

281:                                              ; preds = %276
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 5
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  store %struct.TYPE_4__* %284, %struct.TYPE_4__** %13, align 8
  br label %273

285:                                              ; preds = %273
  br label %286

286:                                              ; preds = %285, %266, %263
  br label %287

287:                                              ; preds = %286, %200
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp eq i32 %290, 131
  br i1 %291, label %292, label %338

292:                                              ; preds = %287
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp eq i32 %295, 131
  br i1 %296, label %297, label %338

297:                                              ; preds = %292
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = trunc i64 %300 to i32
  %302 = icmp sgt i32 0, %301
  br i1 %302, label %303, label %338

303:                                              ; preds = %297
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = icmp sgt i32 0, %307
  br i1 %308, label %309, label %338

309:                                              ; preds = %303
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = icmp eq i64 %312, %315
  br i1 %316, label %317, label %338

317:                                              ; preds = %309
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = trunc i64 %320 to i32
  %322 = sub nsw i32 0, %321
  store i32 %322, i32* %15, align 4
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = trunc i64 %325 to i32
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %16, align 4
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* %16, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %317
  store i32 1, i32* %3, align 4
  br label %529

332:                                              ; preds = %317
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* %16, align 4
  %335 = icmp sgt i32 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  store i32 -1, i32* %3, align 4
  br label %529

337:                                              ; preds = %332
  br label %338

338:                                              ; preds = %337, %309, %303, %297, %292, %287
  br label %339

339:                                              ; preds = %338, %78
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 4
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %342, align 8
  %344 = icmp eq %struct.TYPE_4__* %340, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %339
  store i32 1, i32* %3, align 4
  br label %529

346:                                              ; preds = %339
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %349, align 8
  %351 = icmp eq %struct.TYPE_4__* %347, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %346
  store i32 -1, i32* %3, align 4
  br label %529

353:                                              ; preds = %346
  store i32 0, i32* %7, align 4
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %354, %struct.TYPE_4__** %13, align 8
  br label %355

355:                                              ; preds = %370, %353
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 5
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %357, align 8
  %359 = icmp ne %struct.TYPE_4__* %358, null
  br i1 %359, label %360, label %374

360:                                              ; preds = %355
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 5
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %362, align 8
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %365 = icmp eq %struct.TYPE_4__* %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %360
  store i32 1, i32* %3, align 4
  br label %529

367:                                              ; preds = %360
  %368 = load i32, i32* %7, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %7, align 4
  br label %370

370:                                              ; preds = %367
  %371 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 5
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %372, align 8
  store %struct.TYPE_4__* %373, %struct.TYPE_4__** %13, align 8
  br label %355

374:                                              ; preds = %355
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %375, %struct.TYPE_4__** %14, align 8
  store i32 0, i32* %6, align 4
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %376, %struct.TYPE_4__** %13, align 8
  br label %377

377:                                              ; preds = %392, %374
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 5
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %379, align 8
  %381 = icmp ne %struct.TYPE_4__* %380, null
  br i1 %381, label %382, label %396

382:                                              ; preds = %377
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 5
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %384, align 8
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %387 = icmp eq %struct.TYPE_4__* %385, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %382
  store i32 -1, i32* %3, align 4
  br label %529

389:                                              ; preds = %382
  %390 = load i32, i32* %6, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %6, align 4
  br label %392

392:                                              ; preds = %389
  %393 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 5
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %394, align 8
  store %struct.TYPE_4__* %395, %struct.TYPE_4__** %13, align 8
  br label %377

396:                                              ; preds = %377
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %399 = icmp ne %struct.TYPE_4__* %397, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %396
  store i32 -2, i32* %3, align 4
  br label %529

401:                                              ; preds = %396
  br label %402

402:                                              ; preds = %406, %401
  %403 = load i32, i32* %6, align 4
  %404 = load i32, i32* %7, align 4
  %405 = icmp sgt i32 %403, %404
  br i1 %405, label %406, label %412

406:                                              ; preds = %402
  %407 = load i32, i32* %6, align 4
  %408 = add nsw i32 %407, -1
  store i32 %408, i32* %6, align 4
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 5
  %411 = load %struct.TYPE_4__*, %struct.TYPE_4__** %410, align 8
  store %struct.TYPE_4__* %411, %struct.TYPE_4__** %4, align 8
  br label %402

412:                                              ; preds = %402
  br label %413

413:                                              ; preds = %417, %412
  %414 = load i32, i32* %7, align 4
  %415 = load i32, i32* %6, align 4
  %416 = icmp sgt i32 %414, %415
  br i1 %416, label %417, label %423

417:                                              ; preds = %413
  %418 = load i32, i32* %7, align 4
  %419 = add nsw i32 %418, -1
  store i32 %419, i32* %7, align 4
  %420 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 5
  %422 = load %struct.TYPE_4__*, %struct.TYPE_4__** %421, align 8
  store %struct.TYPE_4__* %422, %struct.TYPE_4__** %5, align 8
  br label %413

423:                                              ; preds = %413
  br label %424

424:                                              ; preds = %445, %423
  %425 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 5
  %427 = load %struct.TYPE_4__*, %struct.TYPE_4__** %426, align 8
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 5
  %430 = load %struct.TYPE_4__*, %struct.TYPE_4__** %429, align 8
  %431 = icmp ne %struct.TYPE_4__* %427, %430
  br i1 %431, label %432, label %446

432:                                              ; preds = %424
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 5
  %435 = load %struct.TYPE_4__*, %struct.TYPE_4__** %434, align 8
  store %struct.TYPE_4__* %435, %struct.TYPE_4__** %4, align 8
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 5
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %437, align 8
  store %struct.TYPE_4__* %438, %struct.TYPE_4__** %5, align 8
  %439 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %440 = icmp eq %struct.TYPE_4__* %439, null
  br i1 %440, label %444, label %441

441:                                              ; preds = %432
  %442 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %443 = icmp eq %struct.TYPE_4__* %442, null
  br i1 %443, label %444, label %445

444:                                              ; preds = %441, %432
  store i32 -2, i32* %3, align 4
  br label %529

445:                                              ; preds = %441
  br label %424

446:                                              ; preds = %424
  %447 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %448 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 4
  %450 = load %struct.TYPE_4__*, %struct.TYPE_4__** %449, align 8
  %451 = icmp eq %struct.TYPE_4__* %447, %450
  br i1 %451, label %452, label %453

452:                                              ; preds = %446
  store i32 1, i32* %3, align 4
  br label %529

453:                                              ; preds = %446
  %454 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %455 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 2
  %457 = load %struct.TYPE_4__*, %struct.TYPE_4__** %456, align 8
  %458 = icmp eq %struct.TYPE_4__* %454, %457
  br i1 %458, label %459, label %460

459:                                              ; preds = %453
  store i32 -1, i32* %3, align 4
  br label %529

460:                                              ; preds = %453
  %461 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = icmp eq i32 %463, 131
  br i1 %464, label %465, label %511

465:                                              ; preds = %460
  %466 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = icmp eq i32 %468, 131
  br i1 %469, label %470, label %511

470:                                              ; preds = %465
  %471 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %471, i32 0, i32 3
  %473 = load i64, i64* %472, align 8
  %474 = trunc i64 %473 to i32
  %475 = icmp sgt i32 0, %474
  br i1 %475, label %476, label %511

476:                                              ; preds = %470
  %477 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 3
  %479 = load i64, i64* %478, align 8
  %480 = trunc i64 %479 to i32
  %481 = icmp sgt i32 0, %480
  br i1 %481, label %482, label %511

482:                                              ; preds = %476
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %486, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = icmp eq i64 %485, %488
  br i1 %489, label %490, label %511

490:                                              ; preds = %482
  %491 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 3
  %493 = load i64, i64* %492, align 8
  %494 = trunc i64 %493 to i32
  %495 = sub nsw i32 0, %494
  store i32 %495, i32* %15, align 4
  %496 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %497 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %496, i32 0, i32 3
  %498 = load i64, i64* %497, align 8
  %499 = trunc i64 %498 to i32
  %500 = sub nsw i32 0, %499
  store i32 %500, i32* %16, align 4
  %501 = load i32, i32* %15, align 4
  %502 = load i32, i32* %16, align 4
  %503 = icmp slt i32 %501, %502
  br i1 %503, label %504, label %505

504:                                              ; preds = %490
  store i32 1, i32* %3, align 4
  br label %529

505:                                              ; preds = %490
  %506 = load i32, i32* %15, align 4
  %507 = load i32, i32* %16, align 4
  %508 = icmp sgt i32 %506, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %505
  store i32 -1, i32* %3, align 4
  br label %529

510:                                              ; preds = %505
  br label %511

511:                                              ; preds = %510, %482, %476, %470, %465, %460
  %512 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %513 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %512, i32 0, i32 2
  %514 = load %struct.TYPE_4__*, %struct.TYPE_4__** %513, align 8
  store %struct.TYPE_4__* %514, %struct.TYPE_4__** %13, align 8
  br label %515

515:                                              ; preds = %524, %511
  %516 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %517 = icmp ne %struct.TYPE_4__* %516, null
  br i1 %517, label %518, label %528

518:                                              ; preds = %515
  %519 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %520 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %521 = icmp eq %struct.TYPE_4__* %519, %520
  br i1 %521, label %522, label %523

522:                                              ; preds = %518
  store i32 1, i32* %3, align 4
  br label %529

523:                                              ; preds = %518
  br label %524

524:                                              ; preds = %523
  %525 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %525, i32 0, i32 2
  %527 = load %struct.TYPE_4__*, %struct.TYPE_4__** %526, align 8
  store %struct.TYPE_4__* %527, %struct.TYPE_4__** %13, align 8
  br label %515

528:                                              ; preds = %515
  store i32 -1, i32* %3, align 4
  br label %529

529:                                              ; preds = %528, %522, %509, %504, %459, %452, %444, %400, %388, %366, %352, %345, %336, %331, %280, %257, %239, %238, %233, %228, %222, %198, %136, %76, %71, %27, %22
  %530 = load i32, i32* %3, align 4
  ret i32 %530
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
