; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_mem.c_aa_ahref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_mem.c_aa_ahref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 }

@ALIAS_MUST = common dso_local global i32 0, align 4
@IR_KSLOT = common dso_local global i64 0, align 8
@IR_HREFK = common dso_local global i64 0, align 8
@IR_AREF = common dso_local global i64 0, align 8
@ALIAS_NO = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i64 0, align 8
@IR_HREF = common dso_local global i64 0, align 8
@IR_NEWREF = common dso_local global i64 0, align 8
@ALIAS_MAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @aa_ahref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aa_ahref(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = icmp eq %struct.TYPE_5__* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ALIAS_MUST, align 4
  store i32 %28, i32* %4, align 4
  br label %282

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.TYPE_5__* @IR(i64 %30)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %10, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IR_KSLOT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call %struct.TYPE_5__* @IR(i64 %41)
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %10, align 8
  br label %43

43:                                               ; preds = %37, %29
  %44 = load i64, i64* %9, align 8
  %45 = call %struct.TYPE_5__* @IR(i64 %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %11, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IR_KSLOT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call %struct.TYPE_5__* @IR(i64 %55)
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %11, align 8
  br label %57

57:                                               ; preds = %51, %43
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IR_HREFK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IR_AREF, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63, %57
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_5__* @IR(i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  br label %80

76:                                               ; preds = %63
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  br label %80

80:                                               ; preds = %76, %69
  %81 = phi i64 [ %75, %69 ], [ %79, %76 ]
  store i64 %81, i64* %12, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IR_HREFK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %80
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @IR_AREF, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87, %80
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call %struct.TYPE_5__* @IR(i64 %96)
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  br label %104

100:                                              ; preds = %87
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  br label %104

104:                                              ; preds = %100, %93
  %105 = phi i64 [ %99, %93 ], [ %103, %100 ]
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %13, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @ALIAS_MUST, align 4
  store i32 %114, i32* %4, align 4
  br label %282

115:                                              ; preds = %109
  %116 = load i32*, i32** %5, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %13, align 8
  %119 = call i32 @aa_table(i32* %116, i64 %117, i64 %118)
  store i32 %119, i32* %4, align 4
  br label %282

120:                                              ; preds = %104
  %121 = load i64, i64* %8, align 8
  %122 = call i64 @irref_isk(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i64, i64* %9, align 8
  %126 = call i64 @irref_isk(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @ALIAS_NO, align 4
  store i32 %129, i32* %4, align 4
  br label %282

130:                                              ; preds = %124, %120
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @IR_AREF, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %218

136:                                              ; preds = %130
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %137 = load i64, i64* %8, align 8
  store i64 %137, i64* %16, align 8
  %138 = load i64, i64* %9, align 8
  store i64 %138, i64* %17, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @IR_AREF, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @lua_assert(i32 %144)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IR_ADD, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %136
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @irref_isk(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %151
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %16, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call %struct.TYPE_5__* @IR(i64 %163)
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %14, align 8
  %167 = load i64, i64* %16, align 8
  %168 = load i64, i64* %9, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %157
  %171 = load i64, i64* %14, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* @ALIAS_NO, align 4
  store i32 %174, i32* %4, align 4
  br label %282

175:                                              ; preds = %170, %157
  br label %176

176:                                              ; preds = %175, %151, %136
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @IR_ADD, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %207

182:                                              ; preds = %176
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @irref_isk(i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %182
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %17, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call %struct.TYPE_5__* @IR(i64 %194)
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %15, align 8
  %198 = load i64, i64* %8, align 8
  %199 = load i64, i64* %17, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %188
  %202 = load i64, i64* %15, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* @ALIAS_NO, align 4
  store i32 %205, i32* %4, align 4
  br label %282

206:                                              ; preds = %201, %188
  br label %207

207:                                              ; preds = %206, %182, %176
  %208 = load i64, i64* %16, align 8
  %209 = load i64, i64* %17, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = load i64, i64* %14, align 8
  %213 = load i64, i64* %15, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load i32, i32* @ALIAS_NO, align 4
  store i32 %216, i32* %4, align 4
  br label %282

217:                                              ; preds = %211, %207
  br label %271

218:                                              ; preds = %130
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @IR_HREF, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %236, label %224

224:                                              ; preds = %218
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @IR_HREFK, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %236, label %230

230:                                              ; preds = %224
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @IR_NEWREF, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %256

236:                                              ; preds = %230, %224, %218
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @IR_HREF, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %254, label %242

242:                                              ; preds = %236
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @IR_HREFK, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %254, label %248

248:                                              ; preds = %242
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @IR_NEWREF, align 8
  %253 = icmp eq i64 %251, %252
  br label %254

254:                                              ; preds = %248, %242, %236
  %255 = phi i1 [ true, %242 ], [ true, %236 ], [ %253, %248 ]
  br label %256

256:                                              ; preds = %254, %230
  %257 = phi i1 [ false, %230 ], [ %255, %254 ]
  %258 = zext i1 %257 to i32
  %259 = call i32 @lua_assert(i32 %258)
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @irt_sametype(i32 %262, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %256
  %269 = load i32, i32* @ALIAS_NO, align 4
  store i32 %269, i32* %4, align 4
  br label %282

270:                                              ; preds = %256
  br label %271

271:                                              ; preds = %270, %217
  %272 = load i64, i64* %12, align 8
  %273 = load i64, i64* %13, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = load i32, i32* @ALIAS_MAY, align 4
  store i32 %276, i32* %4, align 4
  br label %282

277:                                              ; preds = %271
  %278 = load i32*, i32** %5, align 8
  %279 = load i64, i64* %12, align 8
  %280 = load i64, i64* %13, align 8
  %281 = call i32 @aa_table(i32* %278, i64 %279, i64 %280)
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %277, %275, %268, %215, %204, %173, %128, %115, %113, %27
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local %struct.TYPE_5__* @IR(i64) #1

declare dso_local i32 @aa_table(i32*, i64, i64) #1

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @irt_sametype(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
