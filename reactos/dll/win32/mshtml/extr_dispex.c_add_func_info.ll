; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_add_func_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_add_func_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i32, i64, i32, i64*, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i64, i64, i32, %struct.TYPE_19__*, %struct.TYPE_17__, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@VT_EMPTY = common dso_local global i64 0, align 8
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@MAX_ARGS = common dso_local global i32 0, align 4
@FUNC_DISPATCH = common dso_local global i64 0, align 8
@VT_VOID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%s: return type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: optional params\0A\00", align 1
@PARAMFLAG_FHASDEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s param %d: default value\0A\00", align 1
@CC_STDCALL = common dso_local global i64 0, align 8
@DISPATCH_PROPERTYPUT = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32*, i64, %struct.TYPE_22__*, i32*)* @add_func_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_func_info(%struct.TYPE_21__* %0, i32* %1, i64 %2, %struct.TYPE_22__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %11, align 8
  br label %18

18:                                               ; preds = %46, %5
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i64 %26
  %28 = icmp ult %struct.TYPE_20__* %19, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %18
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %375

44:                                               ; preds = %37
  br label %49

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 1
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %11, align 8
  br label %18

49:                                               ; preds = %44, %18
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i64 %57
  %59 = icmp eq %struct.TYPE_20__* %50, %58
  br i1 %59, label %60, label %118

60:                                               ; preds = %49
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 64
  %76 = trunc i64 %75 to i32
  %77 = call %struct.TYPE_20__* @heap_realloc_zero(%struct.TYPE_20__* %70, i32 %76)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %79, align 8
  br label %80

80:                                               ; preds = %67, %60
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i64 %87
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %11, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 9
  %95 = call i32 @ITypeInfo_GetDocumentation(i32* %89, i64 %92, i32* %94, i32* null, i32* null, i32* null)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @FAILED(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %80
  br label %375

100:                                              ; preds = %80
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  store i32 -1, i32* %114, align 8
  %115 = load i64, i64* @VT_EMPTY, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %100, %49
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @DISPATCH_METHOD, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %296

125:                                              ; preds = %118
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  store i32 %128, i32* %131, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MAX_ARGS, align 4
  %141 = icmp slt i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @FUNC_DISPATCH, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = mul i64 8, %154
  %156 = trunc i64 %155 to i32
  %157 = call i64* @heap_alloc(i32 %156)
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 5
  store i64* %157, i64** %159, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 5
  %162 = load i64*, i64** %161, align 8
  %163 = icmp ne i64* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %125
  br label %375

165:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  br label %166

166:                                              ; preds = %188, %165
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = icmp ult i32 %167, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %166
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 6
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 5
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %13, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  store i64 %181, i64* %187, align 8
  br label %188

188:                                              ; preds = %172
  %189 = load i32, i32* %13, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %166

191:                                              ; preds = %166
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 3
  store i64 %196, i64* %198, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @VT_VOID, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %219

204:                                              ; preds = %191
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @is_arg_type_supported(i64 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %204
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @debugstr_w(i32 %213)
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %214, i64 %217)
  br label %375

219:                                              ; preds = %204, %191
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 8
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @debugstr_w(i32 %227)
  %229 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  br label %375

230:                                              ; preds = %219
  store i32 0, i32* %13, align 4
  br label %231

231:                                              ; preds = %270, %230
  %232 = load i32, i32* %13, align 4
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = icmp ult i32 %232, %235
  br i1 %236, label %237, label %273

237:                                              ; preds = %231
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 5
  %240 = load i64*, i64** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @is_arg_type_supported(i64 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %237
  br label %375

248:                                              ; preds = %237
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 6
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @PARAMFLAG_FHASDEFAULT, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %248
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @debugstr_w(i32 %265)
  %267 = load i32, i32* %13, align 4
  %268 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %266, i32 %267)
  br label %375

269:                                              ; preds = %248
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %13, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %13, align 4
  br label %231

273:                                              ; preds = %231
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @MAX_ARGS, align 4
  %278 = icmp sle i32 %276, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @CC_STDCALL, align 8
  %285 = icmp eq i64 %283, %284
  %286 = zext i1 %285 to i32
  %287 = call i32 @assert(i32 %286)
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = udiv i64 %291, 8
  %293 = trunc i64 %292 to i32
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 6
  store i32 %293, i32* %295, align 8
  br label %375

296:                                              ; preds = %118
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @DISPATCH_PROPERTYPUT, align 4
  %301 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %302 = or i32 %300, %301
  %303 = and i32 %299, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %374

305:                                              ; preds = %296
  %306 = load i64, i64* @VT_EMPTY, align 8
  store i64 %306, i64* %14, align 8
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %327

313:                                              ; preds = %305
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 7
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %14, align 8
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = udiv i64 %322, 8
  %324 = trunc i64 %323 to i32
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 7
  store i32 %324, i32* %326, align 4
  br label %327

327:                                              ; preds = %313, %305
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @DISPATCH_PROPERTYPUT, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %355

334:                                              ; preds = %327
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 1
  %339 = zext i1 %338 to i32
  %340 = call i32 @assert(i32 %339)
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 6
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %14, align 8
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 8
  %350 = sext i32 %349 to i64
  %351 = udiv i64 %350, 8
  %352 = trunc i64 %351 to i32
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 8
  store i32 %352, i32* %354, align 8
  br label %355

355:                                              ; preds = %334, %327
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @VT_EMPTY, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %367, label %361

361:                                              ; preds = %355
  %362 = load i64, i64* %14, align 8
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = icmp eq i64 %362, %365
  br label %367

367:                                              ; preds = %361, %355
  %368 = phi i1 [ true, %355 ], [ %366, %361 ]
  %369 = zext i1 %368 to i32
  %370 = call i32 @assert(i32 %369)
  %371 = load i64, i64* %14, align 8
  %372 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %373 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %372, i32 0, i32 3
  store i64 %371, i64* %373, align 8
  br label %374

374:                                              ; preds = %367, %296
  br label %375

375:                                              ; preds = %43, %99, %164, %210, %224, %247, %262, %374, %273
  ret void
}

declare dso_local %struct.TYPE_20__* @heap_realloc_zero(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ITypeInfo_GetDocumentation(i32*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64* @heap_alloc(i32) #1

declare dso_local i32 @is_arg_type_supported(i64) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
