; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_do_reg_operation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_do_reg_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLG_ADDREG_DELREG_BIT = common dso_local global i32 0, align 4
@FLG_ADDREG_DELVAL = common dso_local global i32 0, align 4
@FLG_DELREG_KEYONLY_COMMON = common dso_local global i32 0, align 4
@FLG_DELREG_MULTI_SZ_DELSTRING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FLG_ADDREG_KEYONLY = common dso_local global i32 0, align 4
@FLG_ADDREG_KEYONLY_COMMON = common dso_local global i32 0, align 4
@FLG_ADDREG_NOCLOBBER = common dso_local global i32 0, align 4
@FLG_ADDREG_OVERWRITEONLY = common dso_local global i32 0, align 4
@FLG_ADDREG_TYPE_MASK = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@REG_MULTI_SZ = common dso_local global i32 0, align 4
@REG_EXPAND_SZ = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@REG_NONE = common dso_local global i32 0, align 4
@FLG_ADDREG_BINVALUETYPE = common dso_local global i32 0, align 4
@do_reg_operation.empty = internal constant i64 0, align 8
@FLG_ADDREG_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"setting dword %s to %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"setting value %s to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"setting binary data %s len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*, i32)* @do_reg_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_reg_operation(i32 %0, i64* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @FLG_ADDREG_DELREG_BIT, align 4
  %19 = load i32, i32* @FLG_ADDREG_DELVAL, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %79

23:                                               ; preds = %4
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @FLG_DELREG_KEYONLY_COMMON, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @FLG_DELREG_MULTI_SZ_DELSTRING, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @FLG_DELREG_MULTI_SZ_DELSTRING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @SetupGetStringFieldW(i32* %39, i32 5, i64* null, i32 0, i32* %11)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %5, align 4
  br label %312

47:                                               ; preds = %42
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i64* @HeapAlloc(i32 %48, i32 0, i32 %52)
  store i64* %53, i64** %12, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %5, align 4
  br label %312

57:                                               ; preds = %47
  %58 = load i32*, i32** %8, align 8
  %59 = load i64*, i64** %12, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @SetupGetStringFieldW(i32* %58, i32 5, i64* %59, i32 %60, i32* null)
  %62 = load i32, i32* %6, align 4
  %63 = load i64*, i64** %7, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = call i32 @delete_multi_sz_value(i32 %62, i64* %63, i64* %64)
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load i64*, i64** %12, align 8
  %68 = call i32 @HeapFree(i32 %66, i32 0, i64* %67)
  br label %73

69:                                               ; preds = %32
  %70 = load i32, i32* %6, align 4
  %71 = load i64*, i64** %7, align 8
  %72 = call i32 @RegDeleteValueW(i32 %70, i64* %71)
  br label %73

73:                                               ; preds = %69, %57
  br label %77

74:                                               ; preds = %27, %23
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @NtDeleteKey(i32 %75)
  br label %77

77:                                               ; preds = %74, %73
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %5, align 4
  br label %312

79:                                               ; preds = %4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @FLG_ADDREG_KEYONLY, align 4
  %82 = load i32, i32* @FLG_ADDREG_KEYONLY_COMMON, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %5, align 4
  br label %312

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @FLG_ADDREG_NOCLOBBER, align 4
  %91 = load i32, i32* @FLG_ADDREG_OVERWRITEONLY, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %88
  %96 = load i32, i32* %6, align 4
  %97 = load i64*, i64** %7, align 8
  %98 = call i32 @RegQueryValueExW(i32 %96, i64* %97, i32* null, i32* null, i32* null, i32* null)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @FLG_ADDREG_NOCLOBBER, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %5, align 4
  br label %312

111:                                              ; preds = %104, %95
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @FLG_ADDREG_OVERWRITEONLY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %5, align 4
  br label %312

121:                                              ; preds = %114, %111
  br label %122

122:                                              ; preds = %121, %88
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @FLG_ADDREG_TYPE_MASK, align 4
  %125 = and i32 %123, %124
  switch i32 %125, label %138 [
    i32 128, label %126
    i32 130, label %128
    i32 131, label %130
    i32 133, label %132
    i32 132, label %134
    i32 129, label %136
  ]

126:                                              ; preds = %122
  %127 = load i32, i32* @REG_SZ, align 4
  store i32 %127, i32* %10, align 4
  br label %141

128:                                              ; preds = %122
  %129 = load i32, i32* @REG_MULTI_SZ, align 4
  store i32 %129, i32* %10, align 4
  br label %141

130:                                              ; preds = %122
  %131 = load i32, i32* @REG_EXPAND_SZ, align 4
  store i32 %131, i32* %10, align 4
  br label %141

132:                                              ; preds = %122
  %133 = load i32, i32* @REG_BINARY, align 4
  store i32 %133, i32* %10, align 4
  br label %141

134:                                              ; preds = %122
  %135 = load i32, i32* @REG_DWORD, align 4
  store i32 %135, i32* %10, align 4
  br label %141

136:                                              ; preds = %122
  %137 = load i32, i32* @REG_NONE, align 4
  store i32 %137, i32* %10, align 4
  br label %141

138:                                              ; preds = %122
  %139 = load i32, i32* %9, align 4
  %140 = ashr i32 %139, 16
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %138, %136, %134, %132, %130, %128, %126
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @FLG_ADDREG_BINVALUETYPE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @REG_DWORD, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %277

150:                                              ; preds = %146
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @SetupGetFieldCount(i32* %151)
  %153 = icmp eq i32 %152, 5
  br i1 %153, label %154, label %277

154:                                              ; preds = %150, %141
  store i64* null, i64** %14, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @REG_MULTI_SZ, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %202

158:                                              ; preds = %154
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @SetupGetMultiSzFieldW(i32* %159, i32 5, i64* null, i32 0, i32* %11)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  store i32 0, i32* %11, align 4
  br label %163

163:                                              ; preds = %162, %158
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = call i32 (...) @GetProcessHeap()
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 8
  %171 = trunc i64 %170 to i32
  %172 = call i64* @HeapAlloc(i32 %167, i32 0, i32 %171)
  store i64* %172, i64** %14, align 8
  %173 = icmp ne i64* %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %166
  %175 = load i32, i32* @FALSE, align 4
  store i32 %175, i32* %5, align 4
  br label %312

176:                                              ; preds = %166
  %177 = load i32*, i32** %8, align 8
  %178 = load i64*, i64** %14, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @SetupGetMultiSzFieldW(i32* %177, i32 5, i64* %178, i32 %179, i32* null)
  br label %181

181:                                              ; preds = %176, %163
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @FLG_ADDREG_APPEND, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %181
  %187 = load i64*, i64** %14, align 8
  %188 = icmp ne i64* %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* @TRUE, align 4
  store i32 %190, i32* %5, align 4
  br label %312

191:                                              ; preds = %186
  %192 = load i32, i32* %6, align 4
  %193 = load i64*, i64** %7, align 8
  %194 = load i64*, i64** %14, align 8
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @append_multi_sz_value(i32 %192, i64* %193, i64* %194, i32 %195)
  %197 = call i32 (...) @GetProcessHeap()
  %198 = load i64*, i64** %14, align 8
  %199 = call i32 @HeapFree(i32 %197, i32 0, i64* %198)
  %200 = load i32, i32* @TRUE, align 4
  store i32 %200, i32* %5, align 4
  br label %312

201:                                              ; preds = %181
  br label %226

202:                                              ; preds = %154
  %203 = load i32*, i32** %8, align 8
  %204 = call i32 @SetupGetStringFieldW(i32* %203, i32 5, i64* null, i32 0, i32* %11)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %202
  store i32 0, i32* %11, align 4
  br label %207

207:                                              ; preds = %206, %202
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %207
  %211 = call i32 (...) @GetProcessHeap()
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 %213, 8
  %215 = trunc i64 %214 to i32
  %216 = call i64* @HeapAlloc(i32 %211, i32 0, i32 %215)
  store i64* %216, i64** %14, align 8
  %217 = icmp ne i64* %216, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %210
  %219 = load i32, i32* @FALSE, align 4
  store i32 %219, i32* %5, align 4
  br label %312

220:                                              ; preds = %210
  %221 = load i32*, i32** %8, align 8
  %222 = load i64*, i64** %14, align 8
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @SetupGetStringFieldW(i32* %221, i32 5, i64* %222, i32 %223, i32* null)
  br label %225

225:                                              ; preds = %220, %207
  br label %226

226:                                              ; preds = %225, %201
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @REG_DWORD, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %248

230:                                              ; preds = %226
  %231 = load i64*, i64** %14, align 8
  %232 = icmp ne i64* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i64*, i64** %14, align 8
  %235 = call i32 @strtoulW(i64* %234, i32* null, i32 0)
  br label %237

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236, %233
  %238 = phi i32 [ %235, %233 ], [ 0, %236 ]
  store i32 %238, i32* %15, align 4
  %239 = load i64*, i64** %7, align 8
  %240 = call i32 @debugstr_w(i64* %239)
  %241 = load i32, i32* %15, align 4
  %242 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %240, i32 %241)
  %243 = load i32, i32* %6, align 4
  %244 = load i64*, i64** %7, align 8
  %245 = load i32, i32* %10, align 4
  %246 = bitcast i32* %15 to i64*
  %247 = call i32 @RegSetValueExW(i32 %243, i64* %244, i32 0, i32 %245, i64* %246, i32 4)
  br label %272

248:                                              ; preds = %226
  %249 = load i64*, i64** %7, align 8
  %250 = call i32 @debugstr_w(i64* %249)
  %251 = load i64*, i64** %14, align 8
  %252 = call i32 @debugstr_w(i64* %251)
  %253 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %250, i32 %252)
  %254 = load i64*, i64** %14, align 8
  %255 = icmp ne i64* %254, null
  br i1 %255, label %256, label %266

256:                                              ; preds = %248
  %257 = load i32, i32* %6, align 4
  %258 = load i64*, i64** %7, align 8
  %259 = load i32, i32* %10, align 4
  %260 = load i64*, i64** %14, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = mul i64 %262, 8
  %264 = trunc i64 %263 to i32
  %265 = call i32 @RegSetValueExW(i32 %257, i64* %258, i32 0, i32 %259, i64* %260, i32 %264)
  br label %271

266:                                              ; preds = %248
  %267 = load i32, i32* %6, align 4
  %268 = load i64*, i64** %7, align 8
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @RegSetValueExW(i32 %267, i64* %268, i32 0, i32 %269, i64* @do_reg_operation.empty, i32 8)
  br label %271

271:                                              ; preds = %266, %256
  br label %272

272:                                              ; preds = %271, %237
  %273 = call i32 (...) @GetProcessHeap()
  %274 = load i64*, i64** %14, align 8
  %275 = call i32 @HeapFree(i32 %273, i32 0, i64* %274)
  %276 = load i32, i32* @TRUE, align 4
  store i32 %276, i32* %5, align 4
  br label %312

277:                                              ; preds = %150, %146
  store i64* null, i64** %16, align 8
  %278 = load i32*, i32** %8, align 8
  %279 = call i32 @SetupGetBinaryField(i32* %278, i32 5, i64* null, i32 0, i32* %11)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %277
  store i32 0, i32* %11, align 4
  br label %282

282:                                              ; preds = %281, %277
  %283 = load i32, i32* %11, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %301

285:                                              ; preds = %282
  %286 = call i32 (...) @GetProcessHeap()
  %287 = load i32, i32* %11, align 4
  %288 = call i64* @HeapAlloc(i32 %286, i32 0, i32 %287)
  store i64* %288, i64** %16, align 8
  %289 = icmp ne i64* %288, null
  br i1 %289, label %292, label %290

290:                                              ; preds = %285
  %291 = load i32, i32* @FALSE, align 4
  store i32 %291, i32* %5, align 4
  br label %312

292:                                              ; preds = %285
  %293 = load i64*, i64** %7, align 8
  %294 = call i32 @debugstr_w(i64* %293)
  %295 = load i32, i32* %11, align 4
  %296 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %294, i32 %295)
  %297 = load i32*, i32** %8, align 8
  %298 = load i64*, i64** %16, align 8
  %299 = load i32, i32* %11, align 4
  %300 = call i32 @SetupGetBinaryField(i32* %297, i32 5, i64* %298, i32 %299, i32* null)
  br label %301

301:                                              ; preds = %292, %282
  %302 = load i32, i32* %6, align 4
  %303 = load i64*, i64** %7, align 8
  %304 = load i32, i32* %10, align 4
  %305 = load i64*, i64** %16, align 8
  %306 = load i32, i32* %11, align 4
  %307 = call i32 @RegSetValueExW(i32 %302, i64* %303, i32 0, i32 %304, i64* %305, i32 %306)
  %308 = call i32 (...) @GetProcessHeap()
  %309 = load i64*, i64** %16, align 8
  %310 = call i32 @HeapFree(i32 %308, i32 0, i64* %309)
  %311 = load i32, i32* @TRUE, align 4
  store i32 %311, i32* %5, align 4
  br label %312

312:                                              ; preds = %301, %290, %272, %218, %191, %189, %174, %119, %109, %86, %77, %55, %45
  %313 = load i32, i32* %5, align 4
  ret i32 %313
}

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i64*, i32, i32*) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @delete_multi_sz_value(i32, i64*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @RegDeleteValueW(i32, i64*) #1

declare dso_local i32 @NtDeleteKey(i32) #1

declare dso_local i32 @RegQueryValueExW(i32, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SetupGetFieldCount(i32*) #1

declare dso_local i32 @SetupGetMultiSzFieldW(i32*, i32, i64*, i32, i32*) #1

declare dso_local i32 @append_multi_sz_value(i32, i64*, i64*, i32) #1

declare dso_local i32 @strtoulW(i64*, i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i32 @RegSetValueExW(i32, i64*, i32, i32, i64*, i32) #1

declare dso_local i32 @SetupGetBinaryField(i32*, i32, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
