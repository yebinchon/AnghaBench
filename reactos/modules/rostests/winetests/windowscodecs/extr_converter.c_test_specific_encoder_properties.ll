; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_specific_encoder_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_specific_encoder_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32 }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Property %s is not supported on this machine.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Property %s not in output of GetPropertyInfo\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Property %s has unexpected vt type, vt=%i\0A\00", align 1
@PROPBAG2_TYPE_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Property %s has unexpected dw type, vt=%i\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Property %s has unexpected cf type, vt=%i\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Reading property %s from bag failed, hr=%x\0A\00", align 1
@VT_EMPTY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"Property %s has unexpected initial type, V_VT=%i\0A\00", align 1
@bVal = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"Property %s has an unexpected initial value, pvarValue=%i\0A\00", align 1
@fltVal = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [59 x i8] c"Property %s has an unexpected initial value, pvarValue=%f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32)* @test_specific_encoder_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_specific_encoder_properties(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* @S_OK, align 8
  store i64 %15, i64* %12, align 8
  br label %16

16:                                               ; preds = %254, %54, %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %257

24:                                               ; preds = %16
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @find_property_index(i64 %30, %struct.TYPE_8__* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = bitcast %struct.TYPE_8__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 40, i1 false)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  store i64 %40, i64* %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @IPropertyBag2_Read(i32* %42, i32 1, %struct.TYPE_8__* %14, i32* null, i32* %11, i64* %12)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %24
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @wine_dbgstr_w(i64 %60)
  %62 = call i32 @win_skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %16

65:                                               ; preds = %51, %24
  %66 = load i32, i32* %13, align 4
  %67 = icmp sge i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @wine_dbgstr_w(i64 %74)
  %76 = call i32 (i32, i8*, i32, ...) @ok(i32 %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %153

79:                                               ; preds = %65
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %85, %91
  %93 = zext i1 %92 to i32
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @wine_dbgstr_w(i64 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i32, i8*, i32, ...) @ok(i32 %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %100, i64 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PROPBAG2_TYPE_DATA, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @wine_dbgstr_w(i64 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i32, i8*, i32, ...) @ok(i32 %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %123, i64 %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @wine_dbgstr_w(i64 %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call i32 (i32, i8*, i32, ...) @ok(i32 %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %145, i64 %151)
  br label %153

153:                                              ; preds = %79, %65
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @SUCCEEDED(i64 %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @wine_dbgstr_w(i64 %161)
  %163 = load i64, i64* %9, align 8
  %164 = call i32 (i32, i8*, i32, ...) @ok(i32 %155, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %162, i64 %163)
  %165 = load i64, i64* %9, align 8
  %166 = call i32 @SUCCEEDED(i64 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %254

168:                                              ; preds = %153
  %169 = call i64 @V_VT(i32* %11)
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %169, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %168
  %178 = call i64 @V_VT(i32* %11)
  %179 = load i64, i64* @VT_EMPTY, align 8
  %180 = icmp eq i64 %178, %179
  br label %181

181:                                              ; preds = %177, %168
  %182 = phi i1 [ true, %168 ], [ %180, %177 ]
  %183 = zext i1 %182 to i32
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @wine_dbgstr_w(i64 %189)
  %191 = call i64 @V_VT(i32* %11)
  %192 = call i32 (i32, i8*, i32, ...) @ok(i32 %183, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %190, i64 %191)
  %193 = call i64 @V_VT(i32* %11)
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %193, %199
  br i1 %200, label %201, label %252

201:                                              ; preds = %181
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  switch i64 %207, label %250 [
    i64 130, label %208
    i64 128, label %208
    i64 129, label %229
  ]

208:                                              ; preds = %201, %201
  %209 = load i32, i32* @bVal, align 4
  %210 = call i64 @V_UNION(i32* %11, i32 %209)
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %210, %216
  %218 = zext i1 %217 to i32
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @wine_dbgstr_w(i64 %224)
  %226 = load i32, i32* @bVal, align 4
  %227 = call i64 @V_UNION(i32* %11, i32 %226)
  %228 = call i32 (i32, i8*, i32, ...) @ok(i32 %218, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %225, i64 %227)
  br label %251

229:                                              ; preds = %201
  %230 = load i32, i32* @fltVal, align 4
  %231 = call i64 @V_UNION(i32* %11, i32 %230)
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %231, %237
  %239 = zext i1 %238 to i32
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @wine_dbgstr_w(i64 %245)
  %247 = load i32, i32* @fltVal, align 4
  %248 = call i64 @V_UNION(i32* %11, i32 %247)
  %249 = call i32 (i32, i8*, i32, ...) @ok(i32 %239, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %246, i64 %248)
  br label %251

250:                                              ; preds = %201
  br label %251

251:                                              ; preds = %250, %229, %208
  br label %252

252:                                              ; preds = %251, %181
  %253 = call i32 @VariantClear(i32* %11)
  br label %254

254:                                              ; preds = %252, %153
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %10, align 4
  br label %16

257:                                              ; preds = %16
  ret void
}

declare dso_local i32 @find_property_index(i64, %struct.TYPE_8__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @IPropertyBag2_Read(i32*, i32, %struct.TYPE_8__*, i32*, i32*, i64*) #1

declare dso_local i32 @win_skip(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i64) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i64 @V_UNION(i32*, i32) #1

declare dso_local i32 @VariantClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
