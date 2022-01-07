; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_decl_spec.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_decl_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, %struct.TYPE_19__*, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_18__*, i64, i32*, i32*, i32, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i64 }

@CTOK_FIRSTDECL = common dso_local global i32 0, align 4
@CTOK_LASTDECLFLAG = common dso_local global i32 0, align 4
@CDF_LONG = common dso_local global i32 0, align 4
@CTOK_FIRSTSCL = common dso_local global i64 0, align 8
@LJ_ERR_FFI_BADSCL = common dso_local global i32 0, align 4
@CDF_SHORT = common dso_local global i32 0, align 4
@CDF_SIGNED = common dso_local global i32 0, align 4
@CDF_UNSIGNED = common dso_local global i32 0, align 4
@CDF_COMPLEX = common dso_local global i32 0, align 4
@CT_STRUCT = common dso_local global i32 0, align 4
@CTF_UNION = common dso_local global i32 0, align 4
@CTID_COMPLEX_FLOAT = common dso_local global i64 0, align 8
@CTID_COMPLEX_DOUBLE = common dso_local global i64 0, align 8
@CDF_VOID = common dso_local global i32 0, align 4
@CT_VOID = common dso_local global i32 0, align 4
@CTF_QUAL = common dso_local global i32 0, align 4
@CTSIZE_INVALID = common dso_local global i32 0, align 4
@CT_NUM = common dso_local global i32 0, align 4
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@CDF_BOOL = common dso_local global i32 0, align 4
@CDF_SCL = common dso_local global i32 0, align 4
@CDF_INT = common dso_local global i32 0, align 4
@LJ_ERR_FFI_INVTYPE = common dso_local global i32 0, align 4
@CTF_BOOL = common dso_local global i32 0, align 4
@CDF_FP = common dso_local global i32 0, align 4
@CTF_FP = common dso_local global i32 0, align 4
@CDF_CHAR = common dso_local global i32 0, align 4
@CTF_UCHAR = common dso_local global i32 0, align 4
@CDF_LONGLONG = common dso_local global i32 0, align 4
@CTF_LONG = common dso_local global i32 0, align 4
@LJ_ERR_FFI_DECLSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_22__*, i32)* @cp_decl_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_decl_spec(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 11
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %14, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 9
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 8
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %173, %163, %151, %144, %138, %111, %3
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = call i32 @cp_decl_attributes(%struct.TYPE_21__* %38, %struct.TYPE_22__* %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CTOK_FIRSTDECL, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %114

46:                                               ; preds = %37
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CTOK_LASTDECLFLAG, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %114

52:                                               ; preds = %46
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %183

63:                                               ; preds = %59
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %63, %52
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CTOK_FIRSTDECL, align 4
  %74 = sub i32 %72, %73
  %75 = shl i32 1, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @CDF_LONG, align 4
  %83 = and i32 %81, %82
  %84 = shl i32 %83, 1
  %85 = or i32 %78, %84
  store i32 %85, i32* %7, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* @CTOK_FIRSTSCL, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %69
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = zext i32 %101 to i64
  %103 = load i32, i32* @LJ_ERR_FFI_BADSCL, align 4
  %104 = call i32 @cp_errmsg(%struct.TYPE_21__* %98, i64 %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %92
  br label %111

106:                                              ; preds = %69
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %183

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %105
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = call i32 @cp_next(%struct.TYPE_21__* %112)
  br label %37

114:                                              ; preds = %46, %37
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %133, label %117

117:                                              ; preds = %114
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @CDF_SHORT, align 4
  %123 = load i32, i32* @CDF_LONG, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @CDF_SIGNED, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @CDF_UNSIGNED, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @CDF_COMPLEX, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %121, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120, %117, %114
  br label %182

134:                                              ; preds = %120
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  switch i32 %137, label %180 [
    i32 129, label %138
    i32 128, label %144
    i32 131, label %151
    i32 130, label %155
    i32 36, label %173
  ]

138:                                              ; preds = %134
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %141 = load i32, i32* @CT_STRUCT, align 4
  %142 = call i32 @CTINFO(i32 %141, i32 0)
  %143 = call i64 @cp_decl_struct(%struct.TYPE_21__* %139, %struct.TYPE_22__* %140, i32 %142)
  store i64 %143, i64* %9, align 8
  br label %37

144:                                              ; preds = %134
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %147 = load i32, i32* @CT_STRUCT, align 4
  %148 = load i32, i32* @CTF_UNION, align 4
  %149 = call i32 @CTINFO(i32 %147, i32 %148)
  %150 = call i64 @cp_decl_struct(%struct.TYPE_21__* %145, %struct.TYPE_22__* %146, i32 %149)
  store i64 %150, i64* %9, align 8
  br label %37

151:                                              ; preds = %134
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %154 = call i64 @cp_decl_enum(%struct.TYPE_21__* %152, %struct.TYPE_22__* %153)
  store i64 %154, i64* %9, align 8
  br label %37

155:                                              ; preds = %134
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ctype_istypedef(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %155
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @ctype_cid(i32 %168)
  store i64 %169, i64* %9, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %171 = call i32 @cp_next(%struct.TYPE_21__* %170)
  br label %37

172:                                              ; preds = %155
  br label %181

173:                                              ; preds = %134
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %9, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %179 = call i32 @cp_next(%struct.TYPE_21__* %178)
  br label %37

180:                                              ; preds = %134
  br label %181

181:                                              ; preds = %180, %172
  br label %182

182:                                              ; preds = %181, %133
  br label %183

183:                                              ; preds = %182, %109, %62
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @CDF_COMPLEX, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load i32, i32* %8, align 4
  %190 = icmp eq i32 %189, 4
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i64, i64* @CTID_COMPLEX_FLOAT, align 8
  br label %195

193:                                              ; preds = %188
  %194 = load i64, i64* @CTID_COMPLEX_DOUBLE, align 8
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i64 [ %192, %191 ], [ %194, %193 ]
  store i64 %196, i64* %9, align 8
  br label %197

197:                                              ; preds = %195, %183
  %198 = load i64, i64* %9, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %202 = load i64, i64* %9, align 8
  %203 = call i32 @cp_push_type(%struct.TYPE_22__* %201, i64 %202)
  br label %388

204:                                              ; preds = %197
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @CDF_VOID, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %226

209:                                              ; preds = %204
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %211 = load i32, i32* @CT_VOID, align 4
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @CTF_QUAL, align 4
  %216 = and i32 %214, %215
  %217 = call i32 @CTINFO(i32 %211, i32 %216)
  %218 = load i32, i32* @CTSIZE_INVALID, align 4
  %219 = call i32 @cp_push(%struct.TYPE_22__* %210, i32 %217, i32 %218)
  %220 = load i32, i32* @CTF_QUAL, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, %221
  store i32 %225, i32* %223, align 8
  br label %387

226:                                              ; preds = %204
  %227 = load i32, i32* @CT_NUM, align 4
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* @CDF_UNSIGNED, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = load i32, i32* @CTF_UNSIGNED, align 4
  br label %235

234:                                              ; preds = %226
  br label %235

235:                                              ; preds = %234, %232
  %236 = phi i32 [ %233, %232 ], [ 0, %234 ]
  %237 = call i32 @CTINFO(i32 %227, i32 %236)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @CDF_BOOL, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %277

242:                                              ; preds = %235
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* @CDF_SCL, align 4
  %245 = load i32, i32* @CDF_BOOL, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @CDF_INT, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @CDF_SIGNED, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @CDF_UNSIGNED, align 4
  %252 = or i32 %250, %251
  %253 = xor i32 %252, -1
  %254 = and i32 %243, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %242
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %258 = load i32, i32* @LJ_ERR_FFI_INVTYPE, align 4
  %259 = call i32 @cp_errmsg(%struct.TYPE_21__* %257, i64 0, i32 %258)
  br label %260

260:                                              ; preds = %256, %242
  %261 = load i32, i32* @CTF_BOOL, align 4
  %262 = load i32, i32* %11, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* @CDF_SIGNED, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %260
  %269 = load i32, i32* @CTF_UNSIGNED, align 4
  %270 = load i32, i32* %11, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %11, align 4
  br label %272

272:                                              ; preds = %268, %260
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  store i32 1, i32* %8, align 4
  br label %276

276:                                              ; preds = %275, %272
  br label %358

277:                                              ; preds = %235
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* @CDF_FP, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %277
  %283 = load i32, i32* @CT_NUM, align 4
  %284 = load i32, i32* @CTF_FP, align 4
  %285 = call i32 @CTINFO(i32 %283, i32 %284)
  store i32 %285, i32* %11, align 4
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @CDF_LONG, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %282
  store i32 16, i32* %8, align 4
  br label %291

291:                                              ; preds = %290, %282
  br label %357

292:                                              ; preds = %277
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* @CDF_CHAR, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %312

297:                                              ; preds = %292
  %298 = load i32, i32* %7, align 4
  %299 = load i32, i32* @CDF_CHAR, align 4
  %300 = load i32, i32* @CDF_SIGNED, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @CDF_UNSIGNED, align 4
  %303 = or i32 %301, %302
  %304 = and i32 %298, %303
  %305 = load i32, i32* @CDF_CHAR, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %297
  %308 = load i32, i32* @CTF_UCHAR, align 4
  %309 = load i32, i32* %11, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %11, align 4
  br label %311

311:                                              ; preds = %307, %297
  br label %356

312:                                              ; preds = %292
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* @CDF_SHORT, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  store i32 2, i32* %8, align 4
  br label %355

318:                                              ; preds = %312
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* @CDF_LONGLONG, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  store i32 8, i32* %8, align 4
  br label %354

324:                                              ; preds = %318
  %325 = load i32, i32* %7, align 4
  %326 = load i32, i32* @CDF_LONG, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %324
  %330 = load i32, i32* @CTF_LONG, align 4
  %331 = load i32, i32* %11, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %11, align 4
  store i32 8, i32* %8, align 4
  br label %353

333:                                              ; preds = %324
  %334 = load i32, i32* %8, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %352, label %336

336:                                              ; preds = %333
  %337 = load i32, i32* %7, align 4
  %338 = load i32, i32* @CDF_SIGNED, align 4
  %339 = load i32, i32* @CDF_UNSIGNED, align 4
  %340 = or i32 %338, %339
  %341 = and i32 %337, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %351, label %343

343:                                              ; preds = %336
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = zext i32 %347 to i64
  %349 = load i32, i32* @LJ_ERR_FFI_DECLSPEC, align 4
  %350 = call i32 @cp_errmsg(%struct.TYPE_21__* %344, i64 %348, i32 %349)
  br label %351

351:                                              ; preds = %343, %336
  store i32 4, i32* %8, align 4
  br label %352

352:                                              ; preds = %351, %333
  br label %353

353:                                              ; preds = %352, %329
  br label %354

354:                                              ; preds = %353, %323
  br label %355

355:                                              ; preds = %354, %317
  br label %356

356:                                              ; preds = %355, %311
  br label %357

357:                                              ; preds = %356, %291
  br label %358

358:                                              ; preds = %357, %276
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  %361 = zext i1 %360 to i32
  %362 = call i32 @lua_assert(i32 %361)
  %363 = load i32, i32* %8, align 4
  %364 = call i32 @lj_fls(i32 %363)
  %365 = call i64 @CTALIGN(i32 %364)
  %366 = load i32, i32* %11, align 4
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %367, %365
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %11, align 4
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @CTF_QUAL, align 4
  %374 = and i32 %372, %373
  %375 = load i32, i32* %11, align 4
  %376 = add nsw i32 %375, %374
  store i32 %376, i32* %11, align 4
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %378 = load i32, i32* %11, align 4
  %379 = load i32, i32* %8, align 4
  %380 = call i32 @cp_push(%struct.TYPE_22__* %377, i32 %378, i32 %379)
  %381 = load i32, i32* @CTF_QUAL, align 4
  %382 = xor i32 %381, -1
  %383 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = and i32 %385, %382
  store i32 %386, i32* %384, align 8
  br label %387

387:                                              ; preds = %358, %209
  br label %388

388:                                              ; preds = %387, %200
  %389 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i32 0, i32 4
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %392, i32 0, i32 5
  store i64 %391, i64* %393, align 8
  %394 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 1
  store i32 %396, i32* %398, align 4
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 2
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 3
  store i64 %401, i64* %403, align 8
  %404 = load i32, i32* %7, align 4
  %405 = load i32, i32* @CDF_SCL, align 4
  %406 = and i32 %404, %405
  ret i32 %406
}

declare dso_local i32 @cp_decl_attributes(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @cp_errmsg(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @cp_next(%struct.TYPE_21__*) #1

declare dso_local i64 @cp_decl_struct(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @CTINFO(i32, i32) #1

declare dso_local i64 @cp_decl_enum(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ctype_istypedef(i32) #1

declare dso_local i64 @ctype_cid(i32) #1

declare dso_local i32 @cp_push_type(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @cp_push(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @CTALIGN(i32) #1

declare dso_local i32 @lj_fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
