; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_class.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, %struct.TYPE_23__*, i8*, %struct.TYPE_19__*, i8*, i8* }
%struct.TYPE_19__ = type { i64, i32, i8* }
%struct.TYPE_24__ = type { %struct.TYPE_21__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_21__*, i32, i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_20__*, %struct.TYPE_20__* }

@compile_class.class_initializeW = internal constant [17 x i8] c"class_initialize\00", align 16
@compile_class.class_terminateW = internal constant [16 x i8] c"class_terminate\00", align 16
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: redefinition\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@FUNC_DEFGET = common dso_local global i64 0, align 8
@FUNC_SUB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"class initializer is not sub\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"class terminator is not sub\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Property %s redefined\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__*)* @compile_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_class(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @lookup_dim_decls(%struct.TYPE_22__* %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @lookup_funcs_name(%struct.TYPE_22__* %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i64 @lookup_const_decls(%struct.TYPE_22__* %26, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @lookup_class_name(%struct.TYPE_22__* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33, %25, %18, %2
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @debugstr_w(i32 %43)
  %45 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @E_FAIL, align 4
  store i32 %46, i32* %3, align 4
  br label %422

47:                                               ; preds = %33
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_23__* @compiler_alloc_zero(i32 %50, i32 64)
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %8, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = icmp ne %struct.TYPE_23__* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %55, i32* %3, align 4
  br label %422

56:                                               ; preds = %47
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @compiler_alloc_string(i32 %59, i32 %62)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 9
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 9
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %71, i32* %3, align 4
  br label %422

72:                                               ; preds = %56
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %6, align 8
  br label %78

78:                                               ; preds = %107, %72
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %80 = icmp ne %struct.TYPE_20__* %79, null
  br i1 %80, label %81, label %111

81:                                               ; preds = %78
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %82, %struct.TYPE_20__** %7, align 8
  br label %83

83:                                               ; preds = %94, %81
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = icmp ne %struct.TYPE_20__* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FUNC_DEFGET, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %98

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  store %struct.TYPE_20__* %97, %struct.TYPE_20__** %7, align 8
  br label %83

98:                                               ; preds = %92, %83
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %100 = icmp ne %struct.TYPE_20__* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %101, %98
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  store %struct.TYPE_20__* %110, %struct.TYPE_20__** %6, align 8
  br label %78

111:                                              ; preds = %78
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 1
  %120 = trunc i64 %119 to i32
  %121 = call i8* @compiler_alloc(i32 %114, i32 %120)
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 8
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 8
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %111
  %129 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %129, i32* %3, align 4
  br label %422

130:                                              ; preds = %111
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 8
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 1
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memset(i8* %133, i32 0, i32 %139)
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  store %struct.TYPE_20__* %143, %struct.TYPE_20__** %6, align 8
  store i32 1, i32* %10, align 4
  br label %144

144:                                              ; preds = %227, %130
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %146 = icmp ne %struct.TYPE_20__* %145, null
  br i1 %146, label %147, label %233

147:                                              ; preds = %144
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %148, %struct.TYPE_20__** %7, align 8
  br label %149

149:                                              ; preds = %162, %147
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %151 = icmp ne %struct.TYPE_20__* %150, null
  br i1 %151, label %152, label %166

152:                                              ; preds = %149
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @FUNC_DEFGET, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i32, i32* %10, align 4
  %160 = add i32 %159, -1
  store i32 %160, i32* %10, align 4
  br label %166

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  store %struct.TYPE_20__* %165, %struct.TYPE_20__** %7, align 8
  br label %149

166:                                              ; preds = %158, %149
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @strcmpiW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @compile_class.class_initializeW, i64 0, i64 0), i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %166
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @FUNC_SUB, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %180 = load i32, i32* @E_FAIL, align 4
  store i32 %180, i32* %3, align 4
  br label %422

181:                                              ; preds = %172
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  br label %205

185:                                              ; preds = %166
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @strcmpiW(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @compile_class.class_terminateW, i64 0, i64 0), i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %204, label %191

191:                                              ; preds = %185
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @FUNC_SUB, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %199 = load i32, i32* @E_FAIL, align 4
  store i32 %199, i32* %3, align 4
  br label %422

200:                                              ; preds = %191
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %200, %185
  br label %205

205:                                              ; preds = %204, %181
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 8
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %212 = icmp ne %struct.TYPE_20__* %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %216

214:                                              ; preds = %205
  %215 = load i32, i32* %10, align 4
  br label %216

216:                                              ; preds = %214, %213
  %217 = phi i32 [ 0, %213 ], [ %215, %214 ]
  %218 = zext i32 %217 to i64
  %219 = getelementptr i8, i8* %210, i64 %218
  %220 = call i32 @create_class_funcprop(%struct.TYPE_22__* %206, %struct.TYPE_20__* %207, i8* %219)
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  %222 = call i64 @FAILED(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = load i32, i32* %11, align 4
  store i32 %225, i32* %3, align 4
  br label %422

226:                                              ; preds = %216
  br label %227

227:                                              ; preds = %226
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %229, align 8
  store %struct.TYPE_20__* %230, %struct.TYPE_20__** %6, align 8
  %231 = load i32, i32* %10, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %144

233:                                              ; preds = %144
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %235, align 8
  store %struct.TYPE_21__* %236, %struct.TYPE_21__** %9, align 8
  br label %237

237:                                              ; preds = %245, %233
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %239 = icmp ne %struct.TYPE_21__* %238, null
  br i1 %239, label %240, label %249

240:                                              ; preds = %237
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %240
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %247, align 8
  store %struct.TYPE_21__* %248, %struct.TYPE_21__** %9, align 8
  br label %237

249:                                              ; preds = %237
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = mul i64 %256, 24
  %258 = trunc i64 %257 to i32
  %259 = call i8* @compiler_alloc(i32 %252, i32 %258)
  %260 = bitcast i8* %259 to %struct.TYPE_19__*
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 7
  store %struct.TYPE_19__* %260, %struct.TYPE_19__** %262, align 8
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 7
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %264, align 8
  %266 = icmp ne %struct.TYPE_19__* %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %249
  %268 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %268, i32* %3, align 4
  br label %422

269:                                              ; preds = %249
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %271, align 8
  store %struct.TYPE_21__* %272, %struct.TYPE_21__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %273

273:                                              ; preds = %347, %269
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %275 = icmp ne %struct.TYPE_21__* %274, null
  br i1 %275, label %276, label %353

276:                                              ; preds = %273
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = call i64 @lookup_class_funcs(%struct.TYPE_23__* %277, i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %276
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @debugstr_w(i32 %286)
  %288 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %287)
  %289 = load i32, i32* @E_FAIL, align 4
  store i32 %289, i32* %3, align 4
  br label %422

290:                                              ; preds = %276
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = call i8* @compiler_alloc_string(i32 %293, i32 %296)
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 7
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %299, align 8
  %301 = load i32, i32* %10, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 2
  store i8* %297, i8** %304, align 8
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 7
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %306, align 8
  %308 = load i32, i32* %10, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 2
  %312 = load i8*, i8** %311, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %290
  %315 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %315, i32* %3, align 4
  br label %422

316:                                              ; preds = %290
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 7
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %321, align 8
  %323 = load i32, i32* %10, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 1
  store i32 %319, i32* %326, align 8
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 7
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %331, align 8
  %333 = load i32, i32* %10, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 0
  store i64 %329, i64* %336, align 8
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %316
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %343, align 8
  br label %346

346:                                              ; preds = %341, %316
  br label %347

347:                                              ; preds = %346
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %349, align 8
  store %struct.TYPE_21__* %350, %struct.TYPE_21__** %9, align 8
  %351 = load i32, i32* %10, align 4
  %352 = add i32 %351, 1
  store i32 %352, i32* %10, align 4
  br label %273

353:                                              ; preds = %273
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %412

358:                                              ; preds = %353
  %359 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = mul i64 %365, 1
  %367 = trunc i64 %366 to i32
  %368 = call i8* @compiler_alloc(i32 %361, i32 %367)
  %369 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %369, i32 0, i32 6
  store i8* %368, i8** %370, align 8
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 6
  %373 = load i8*, i8** %372, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %377, label %375

375:                                              ; preds = %358
  %376 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %376, i32* %3, align 4
  br label %422

377:                                              ; preds = %358
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %379, align 8
  store %struct.TYPE_21__* %380, %struct.TYPE_21__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %381

381:                                              ; preds = %407, %377
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %383 = icmp ne %struct.TYPE_21__* %382, null
  br i1 %383, label %384, label %411

384:                                              ; preds = %381
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %406

389:                                              ; preds = %384
  %390 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 6
  %394 = load i8*, i8** %393, align 8
  %395 = load i32, i32* %10, align 4
  %396 = add i32 %395, 1
  store i32 %396, i32* %10, align 4
  %397 = zext i32 %395 to i64
  %398 = getelementptr i8, i8* %394, i64 %397
  %399 = call i32 @fill_array_desc(%struct.TYPE_22__* %390, %struct.TYPE_21__* %391, i8* %398)
  store i32 %399, i32* %11, align 4
  %400 = load i32, i32* %11, align 4
  %401 = call i64 @FAILED(i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %389
  %404 = load i32, i32* %11, align 4
  store i32 %404, i32* %3, align 4
  br label %422

405:                                              ; preds = %389
  br label %406

406:                                              ; preds = %405, %384
  br label %407

407:                                              ; preds = %406
  %408 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %409 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %408, i32 0, i32 1
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %409, align 8
  store %struct.TYPE_21__* %410, %struct.TYPE_21__** %9, align 8
  br label %381

411:                                              ; preds = %381
  br label %412

412:                                              ; preds = %411, %353
  %413 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_23__*, %struct.TYPE_23__** %414, align 8
  %416 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %416, i32 0, i32 5
  store %struct.TYPE_23__* %415, %struct.TYPE_23__** %417, align 8
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %419 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %419, i32 0, i32 0
  store %struct.TYPE_23__* %418, %struct.TYPE_23__** %420, align 8
  %421 = load i32, i32* @S_OK, align 4
  store i32 %421, i32* %3, align 4
  br label %422

422:                                              ; preds = %412, %403, %375, %314, %283, %267, %224, %197, %178, %128, %70, %54, %40
  %423 = load i32, i32* %3, align 4
  ret i32 %423
}

declare dso_local i64 @lookup_dim_decls(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @lookup_funcs_name(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @lookup_const_decls(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @lookup_class_name(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local %struct.TYPE_23__* @compiler_alloc_zero(i32, i32) #1

declare dso_local i8* @compiler_alloc_string(i32, i32) #1

declare dso_local i8* @compiler_alloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcmpiW(i8*, i32) #1

declare dso_local i32 @create_class_funcprop(%struct.TYPE_22__*, %struct.TYPE_20__*, i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @lookup_class_funcs(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @fill_array_desc(%struct.TYPE_22__*, %struct.TYPE_21__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
