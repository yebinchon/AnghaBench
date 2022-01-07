; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_get_propval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_get_propval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.array = type { i32 }

@WBEM_E_NOT_FOUND = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@COL_TYPE_MASK = common dso_local global i32 0, align 4
@CIM_FLAG_ARRAY = common dso_local global i32 0, align 4
@CIM_TYPE_MASK = common dso_local global i32 0, align 4
@VT_NULL = common dso_local global i32 0, align 4
@VT_ARRAY = common dso_local global i32 0, align 4
@VT_BOOL = common dso_local global i32 0, align 4
@VT_BSTR = common dso_local global i32 0, align 4
@VT_I1 = common dso_local global i32 0, align 4
@VT_UI1 = common dso_local global i32 0, align 4
@VT_I2 = common dso_local global i32 0, align 4
@VT_UI2 = common dso_local global i32 0, align 4
@VT_I4 = common dso_local global i32 0, align 4
@VT_UI4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unhandled column type %u\0A\00", align 1
@WBEM_E_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_propval(%struct.view* %0, i64 %1, i32* %2, i32* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.view*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  store i8* null, i8** %18, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @is_system_prop(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %6
  %25 = load %struct.view*, %struct.view** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = call i64 @get_system_propval(%struct.view* %25, i64 %26, i32* %27, i32* %28, i32* %29, i64* %30)
  store i64 %31, i64* %7, align 8
  br label %264

32:                                               ; preds = %6
  %33 = load %struct.view*, %struct.view** %8, align 8
  %34 = getelementptr inbounds %struct.view, %struct.view* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.view*, %struct.view** %8, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @is_selected_prop(%struct.view* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %32
  %43 = load i64, i64* @WBEM_E_NOT_FOUND, align 8
  store i64 %43, i64* %7, align 8
  br label %264

44:                                               ; preds = %37
  %45 = load %struct.view*, %struct.view** %8, align 8
  %46 = getelementptr inbounds %struct.view, %struct.view* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @get_column_index(%struct.TYPE_7__* %47, i32* %48, i64* %15)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %44
  %54 = load %struct.view*, %struct.view** %8, align 8
  %55 = getelementptr inbounds %struct.view, %struct.view* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call i64 @is_method(%struct.TYPE_7__* %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53, %44
  %61 = load i64, i64* @WBEM_E_NOT_FOUND, align 8
  store i64 %61, i64* %7, align 8
  br label %264

62:                                               ; preds = %53
  %63 = load %struct.view*, %struct.view** %8, align 8
  %64 = getelementptr inbounds %struct.view, %struct.view* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %16, align 8
  %69 = load %struct.view*, %struct.view** %8, align 8
  %70 = getelementptr inbounds %struct.view, %struct.view* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %15, align 8
  %74 = call i64 @get_value(%struct.TYPE_7__* %71, i64 %72, i64 %73, i64* %19)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %62
  %79 = load i64, i64* %14, align 8
  store i64 %79, i64* %7, align 8
  br label %264

80:                                               ; preds = %62
  %81 = load i32*, i32** %12, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load %struct.view*, %struct.view** %8, align 8
  %85 = getelementptr inbounds %struct.view, %struct.view* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @COL_TYPE_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32*, i32** %12, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %83, %80
  %97 = load i64*, i64** %13, align 8
  %98 = icmp ne i64* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i64*, i64** %13, align 8
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %99, %96
  %102 = load i32*, i32** %11, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* @S_OK, align 8
  store i64 %105, i64* %7, align 8
  br label %264

106:                                              ; preds = %101
  %107 = load %struct.view*, %struct.view** %8, align 8
  %108 = getelementptr inbounds %struct.view, %struct.view* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i64, i64* %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %17, align 4
  %116 = load %struct.view*, %struct.view** %8, align 8
  %117 = getelementptr inbounds %struct.view, %struct.view* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i64, i64* %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %106
  %129 = load %struct.view*, %struct.view** %8, align 8
  %130 = getelementptr inbounds %struct.view, %struct.view* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i64, i64* %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CIM_TYPE_MASK, align 4
  %139 = and i32 %137, %138
  store i32 %139, i32* %20, align 4
  %140 = load i64, i64* %19, align 8
  %141 = inttoptr i64 %140 to %struct.array*
  %142 = load i32, i32* %20, align 4
  %143 = call i8* @to_safearray(%struct.array* %141, i32 %142)
  store i8* %143, i8** %18, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %128
  %147 = load i32, i32* @VT_NULL, align 4
  store i32 %147, i32* %17, align 4
  br label %157

148:                                              ; preds = %128
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @to_vartype(i32 %152)
  %154 = load i32, i32* @VT_ARRAY, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %17, align 4
  br label %156

156:                                              ; preds = %151, %148
  br label %157

157:                                              ; preds = %156, %146
  %158 = load i32, i32* %17, align 4
  %159 = load i64, i64* %19, align 8
  %160 = load i8*, i8** %18, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @set_variant(i32 %158, i64 %159, i8* %160, i32* %161)
  %163 = load i64, i64* @S_OK, align 8
  store i64 %163, i64* %7, align 8
  br label %264

164:                                              ; preds = %106
  %165 = load %struct.view*, %struct.view** %8, align 8
  %166 = getelementptr inbounds %struct.view, %struct.view* %165, i32 0, i32 1
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i64, i64* %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @COL_TYPE_MASK, align 4
  %175 = and i32 %173, %174
  switch i32 %175, label %245 [
    i32 138, label %176
    i32 132, label %182
    i32 137, label %182
    i32 133, label %193
    i32 128, label %199
    i32 136, label %205
    i32 131, label %211
    i32 135, label %217
    i32 130, label %223
    i32 134, label %229
    i32 129, label %237
  ]

176:                                              ; preds = %164
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* @VT_BOOL, align 4
  store i32 %180, i32* %17, align 4
  br label %181

181:                                              ; preds = %179, %176
  br label %257

182:                                              ; preds = %164, %164
  %183 = load i64, i64* %19, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32, i32* @VT_BSTR, align 4
  store i32 %186, i32* %17, align 4
  %187 = load i64, i64* %19, align 8
  %188 = inttoptr i64 %187 to i32*
  %189 = call i8* @SysAllocString(i32* %188)
  store i8* %189, i8** %18, align 8
  br label %192

190:                                              ; preds = %182
  %191 = load i32, i32* @VT_NULL, align 4
  store i32 %191, i32* %17, align 4
  br label %192

192:                                              ; preds = %190, %185
  br label %257

193:                                              ; preds = %164
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* @VT_I1, align 4
  store i32 %197, i32* %17, align 4
  br label %198

198:                                              ; preds = %196, %193
  br label %257

199:                                              ; preds = %164
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* @VT_UI1, align 4
  store i32 %203, i32* %17, align 4
  br label %204

204:                                              ; preds = %202, %199
  br label %257

205:                                              ; preds = %164
  %206 = load i32, i32* %17, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* @VT_I2, align 4
  store i32 %209, i32* %17, align 4
  br label %210

210:                                              ; preds = %208, %205
  br label %257

211:                                              ; preds = %164
  %212 = load i32, i32* %17, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* @VT_UI2, align 4
  store i32 %215, i32* %17, align 4
  br label %216

216:                                              ; preds = %214, %211
  br label %257

217:                                              ; preds = %164
  %218 = load i32, i32* %17, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* @VT_I4, align 4
  store i32 %221, i32* %17, align 4
  br label %222

222:                                              ; preds = %220, %217
  br label %257

223:                                              ; preds = %164
  %224 = load i32, i32* %17, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* @VT_UI4, align 4
  store i32 %227, i32* %17, align 4
  br label %228

228:                                              ; preds = %226, %223
  br label %257

229:                                              ; preds = %164
  %230 = load i32, i32* @VT_BSTR, align 4
  store i32 %230, i32* %17, align 4
  %231 = load %struct.view*, %struct.view** %8, align 8
  %232 = getelementptr inbounds %struct.view, %struct.view* %231, i32 0, i32 1
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = load i64, i64* %16, align 8
  %235 = load i64, i64* %15, align 8
  %236 = call i8* @get_value_bstr(%struct.TYPE_7__* %233, i64 %234, i64 %235)
  store i8* %236, i8** %18, align 8
  br label %257

237:                                              ; preds = %164
  %238 = load i32, i32* @VT_BSTR, align 4
  store i32 %238, i32* %17, align 4
  %239 = load %struct.view*, %struct.view** %8, align 8
  %240 = getelementptr inbounds %struct.view, %struct.view* %239, i32 0, i32 1
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %240, align 8
  %242 = load i64, i64* %16, align 8
  %243 = load i64, i64* %15, align 8
  %244 = call i8* @get_value_bstr(%struct.TYPE_7__* %241, i64 %242, i64 %243)
  store i8* %244, i8** %18, align 8
  br label %257

245:                                              ; preds = %164
  %246 = load %struct.view*, %struct.view** %8, align 8
  %247 = getelementptr inbounds %struct.view, %struct.view* %246, i32 0, i32 1
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = load i64, i64* %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %254)
  %256 = load i64, i64* @WBEM_E_FAILED, align 8
  store i64 %256, i64* %7, align 8
  br label %264

257:                                              ; preds = %237, %229, %228, %222, %216, %210, %204, %198, %192, %181
  %258 = load i32, i32* %17, align 4
  %259 = load i64, i64* %19, align 8
  %260 = load i8*, i8** %18, align 8
  %261 = load i32*, i32** %11, align 8
  %262 = call i32 @set_variant(i32 %258, i64 %259, i8* %260, i32* %261)
  %263 = load i64, i64* @S_OK, align 8
  store i64 %263, i64* %7, align 8
  br label %264

264:                                              ; preds = %257, %245, %157, %104, %78, %60, %42, %24
  %265 = load i64, i64* %7, align 8
  ret i64 %265
}

declare dso_local i64 @is_system_prop(i32*) #1

declare dso_local i64 @get_system_propval(%struct.view*, i64, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @is_selected_prop(%struct.view*, i32*) #1

declare dso_local i64 @get_column_index(%struct.TYPE_7__*, i32*, i64*) #1

declare dso_local i64 @is_method(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @get_value(%struct.TYPE_7__*, i64, i64, i64*) #1

declare dso_local i8* @to_safearray(%struct.array*, i32) #1

declare dso_local i32 @to_vartype(i32) #1

declare dso_local i32 @set_variant(i32, i64, i8*, i32*) #1

declare dso_local i8* @SysAllocString(i32*) #1

declare dso_local i8* @get_value_bstr(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
