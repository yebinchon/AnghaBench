; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_lj_record_mm_lookup.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_lj_record_mm_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i8*, i8*, i32, i64, i64, i32, i32, i32, i32*, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }

@IR_FLOAD = common dso_local global i32 0, align 4
@IRT_TAB = common dso_local global i32 0, align 4
@IRFL_TAB_META = common dso_local global i32 0, align 4
@UDTYPE_USERDATA = common dso_local global i32 0, align 4
@LJ_HASFFI = common dso_local global i64 0, align 8
@UDTYPE_FFI_CLIB = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@IRT_PGC = common dso_local global i32 0, align 4
@IRT_U8 = common dso_local global i32 0, align 4
@IRFL_UDATA_UDTYPE = common dso_local global i32 0, align 4
@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@IRT_FUNC = common dso_local global i32 0, align 4
@TREF_NIL = common dso_local global i8* null, align 8
@IRFL_UDATA_META = common dso_local global i32 0, align 4
@IR_NE = common dso_local global i32 0, align 4
@GCROOT_BASEMT = common dso_local global i64 0, align 8
@g = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_record_mm_lookup(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @tref_istab(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 7
  %23 = call %struct.TYPE_24__* @tabV(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @tabref(i32 %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* @IR_FLOAD, align 4
  %28 = load i32, i32* @IRT_TAB, align 4
  %29 = call i32 @IRT(i32 %27, i32 %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @IRFL_TAB_META, align 4
  %34 = call i8* @emitir(i32 %29, i8* %32, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  br label %190

36:                                               ; preds = %3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @tref_isudata(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %159

42:                                               ; preds = %36
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 7
  %45 = call %struct.TYPE_23__* @udataV(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 7
  %50 = call %struct.TYPE_23__* @udataV(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @tabref(i32 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @UDTYPE_USERDATA, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %149

57:                                               ; preds = %42
  %58 = load i64, i64* @LJ_HASFFI, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @UDTYPE_FFI_CLIB, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i32, i32* @IR_EQ, align 4
  %66 = load i32, i32* @IRT_PGC, align 4
  %67 = call i32 @IRTG(i32 %65, i32 %66)
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 7
  %74 = call %struct.TYPE_23__* @udataV(i32* %73)
  %75 = call i32 @lj_ir_kptr(%struct.TYPE_21__* %71, %struct.TYPE_23__* %74)
  %76 = call i8* @emitir(i32 %67, i8* %70, i32 %75)
  br label %93

77:                                               ; preds = %60, %57
  %78 = load i32, i32* @IR_FLOAD, align 4
  %79 = load i32, i32* @IRT_U8, align 4
  %80 = call i32 @IRT(i32 %78, i32 %79)
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @IRFL_UDATA_UDTYPE, align 4
  %85 = call i8* @emitir(i32 %80, i8* %83, i32 %84)
  store i8* %85, i8** %12, align 8
  %86 = load i32, i32* @IR_EQ, align 4
  %87 = call i32 @IRTGI(i32 %86)
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @lj_ir_kint(%struct.TYPE_21__* %89, i32 %90)
  %92 = call i8* @emitir(i32 %87, i8* %88, i32 %91)
  br label %93

93:                                               ; preds = %77, %64
  br label %94

94:                                               ; preds = %181, %93
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = call i32 @J2G(%struct.TYPE_21__* %96)
  %98 = load i32, i32* %7, align 4
  %99 = call i32* @mmname_str(i32 %97, i32 %98)
  %100 = call i32* @lj_tab_getstr(i32* %95, i32* %99)
  store i32* %100, i32** %11, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i32*, i32** %11, align 8
  %105 = call i64 @tvisnil(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %94
  store i32 0, i32* %4, align 4
  br label %277

108:                                              ; preds = %103
  %109 = load i32*, i32** %11, align 8
  %110 = call i64 @tvisfunc(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load i32*, i32** %11, align 8
  %114 = call i64 @tvistab(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %118 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %119 = call i32 @lj_trace_err(%struct.TYPE_21__* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %112, %108
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 9
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @copyTV(i32 %123, i32* %125, i32* %126)
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @gcV(i32* %129)
  %131 = load i32*, i32** %11, align 8
  %132 = call i64 @tvisfunc(i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %120
  %135 = load i32, i32* @IRT_FUNC, align 4
  br label %138

136:                                              ; preds = %120
  %137 = load i32, i32* @IRT_TAB, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = call i32 @lj_ir_kgc(%struct.TYPE_21__* %128, i32 %130, i32 %139)
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 8
  store i32* %143, i32** %145, align 8
  %146 = load i8*, i8** @TREF_NIL, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  store i32 1, i32* %4, align 4
  br label %277

149:                                              ; preds = %42
  %150 = load i32, i32* @IR_FLOAD, align 4
  %151 = load i32, i32* @IRT_TAB, align 4
  %152 = call i32 @IRT(i32 %150, i32 %151)
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* @IRFL_UDATA_META, align 4
  %157 = call i8* @emitir(i32 %152, i8* %155, i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i8* %157, i8** %158, align 8
  br label %189

159:                                              ; preds = %36
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %161 = call i32 @J2G(%struct.TYPE_21__* %160)
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 7
  %164 = call i32 @basemt_obj(i32 %161, i32* %163)
  %165 = call i32* @tabref(i32 %164)
  store i32* %165, i32** %9, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %159
  %169 = load i8*, i8** @TREF_NIL, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  store i32 0, i32* %4, align 4
  br label %277

172:                                              ; preds = %159
  %173 = load i64, i64* @LJ_HASFFI, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @tref_iscdata(i8* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %94

182:                                              ; preds = %175, %172
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = call i8* @lj_ir_ktab(%struct.TYPE_21__* %183, i32* %184)
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i8* %185, i8** %186, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  store i8* %185, i8** %188, align 8
  br label %218

189:                                              ; preds = %149
  br label %190

190:                                              ; preds = %189, %20
  %191 = load i32*, i32** %9, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  br label %198

196:                                              ; preds = %190
  %197 = load i8*, i8** @TREF_NIL, align 8
  br label %198

198:                                              ; preds = %196, %193
  %199 = phi i8* [ %195, %193 ], [ %197, %196 ]
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* @IR_NE, align 4
  br label %208

206:                                              ; preds = %198
  %207 = load i32, i32* @IR_EQ, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = load i32, i32* @IRT_TAB, align 4
  %211 = call i32 @IRTG(i32 %209, i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %215 = load i32, i32* @IRT_TAB, align 4
  %216 = call i32 @lj_ir_knull(%struct.TYPE_21__* %214, i32 %215)
  %217 = call i8* @emitir(i32 %211, i8* %213, i32 %216)
  br label %218

218:                                              ; preds = %208, %182
  %219 = load i32*, i32** %9, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %276

221:                                              ; preds = %218
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %223 = call i32 @J2G(%struct.TYPE_21__* %222)
  %224 = load i32, i32* %7, align 4
  %225 = call i32* @mmname_str(i32 %223, i32 %224)
  store i32* %225, i32** %13, align 8
  %226 = load i32*, i32** %9, align 8
  %227 = load i32*, i32** %13, align 8
  %228 = call i32* @lj_tab_getstr(i32* %226, i32* %227)
  store i32* %228, i32** %14, align 8
  %229 = load i32*, i32** %14, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %243

231:                                              ; preds = %221
  %232 = load i32*, i32** %14, align 8
  %233 = call i64 @tvisnil(i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %243, label %235

235:                                              ; preds = %231
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 9
  %241 = load i32*, i32** %14, align 8
  %242 = call i32 @copyTV(i32 %238, i32* %240, i32* %241)
  br label %243

243:                                              ; preds = %235, %231, %221
  %244 = load i32*, i32** %9, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 8
  store i32* %244, i32** %246, align 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 7
  %251 = load i32*, i32** %9, align 8
  %252 = call i32 @settabV(i32 %249, i32* %250, i32* %251)
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 6
  %257 = load i32*, i32** %13, align 8
  %258 = call i32 @setstrV(i32 %255, i32* %256, i32* %257)
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %260 = load i32*, i32** %13, align 8
  %261 = call i32 @lj_ir_kstr(%struct.TYPE_21__* %259, i32* %260)
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 5
  store i32 %261, i32* %262, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 4
  store i64 0, i64* %263, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 3
  store i64 0, i64* %264, align 8
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %266 = call i32 @lj_record_idx(%struct.TYPE_21__* %265, %struct.TYPE_22__* %8)
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @tref_isnil(i32 %271)
  %273 = icmp ne i32 %272, 0
  %274 = xor i1 %273, true
  %275 = zext i1 %274 to i32
  store i32 %275, i32* %4, align 4
  br label %277

276:                                              ; preds = %218
  store i32 0, i32* %4, align 4
  br label %277

277:                                              ; preds = %276, %243, %168, %138, %107
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local i64 @tref_istab(i8*) #1

declare dso_local i32* @tabref(i32) #1

declare dso_local %struct.TYPE_24__* @tabV(i32*) #1

declare dso_local i8* @emitir(i32, i8*, i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i64 @tref_isudata(i8*) #1

declare dso_local %struct.TYPE_23__* @udataV(i32*) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_ir_kptr(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_21__*, i32) #1

declare dso_local i32* @lj_tab_getstr(i32*, i32*) #1

declare dso_local i32* @mmname_str(i32, i32) #1

declare dso_local i32 @J2G(%struct.TYPE_21__*) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local i64 @tvistab(i32*) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @copyTV(i32, i32*, i32*) #1

declare dso_local i32 @lj_ir_kgc(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @gcV(i32*) #1

declare dso_local i32 @basemt_obj(i32, i32*) #1

declare dso_local i64 @tref_iscdata(i8*) #1

declare dso_local i8* @lj_ir_ktab(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @lj_ir_knull(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @settabV(i32, i32*, i32*) #1

declare dso_local i32 @setstrV(i32, i32*, i32*) #1

declare dso_local i32 @lj_ir_kstr(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @lj_record_idx(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @tref_isnil(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
