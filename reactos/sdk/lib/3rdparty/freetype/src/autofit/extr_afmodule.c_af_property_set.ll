; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/autofit/extr_afmodule.c_af_property_set.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/autofit/extr_afmodule.c_af_property_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i32, i8*, i64* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fallback-script\00", align 1
@AF_STYLE_CLASSES_GET = common dso_local global %struct.TYPE_9__** null, align 8
@AF_COVERAGE_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"af_property_set: Invalid value %d for property `%s'\0A\00", align 1
@Invalid_Argument = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"default-script\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"increase-x-height\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"darkening-parameters\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"no-stem-darkening\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"af_property_set: missing property `%s'\0A\00", align 1
@Missing_Property = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8*)* @af_property_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af_property_set(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8**, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %28 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %11, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @FT_UNUSED(i8* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @ft_strcmp(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %85, label %37

37:                                               ; preds = %4
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to i64*
  store i64* %39, i64** %12, align 8
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %68, %37
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @AF_STYLE_CLASSES_GET, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %41, i64 %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @AF_STYLE_CLASSES_GET, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %47, i64 %48
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %14, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %12, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %46
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AF_COVERAGE_DEFAULT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i64, i64* %13, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %71

67:                                               ; preds = %57, %46
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %13, align 8
  br label %40

71:                                               ; preds = %63, %40
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @AF_STYLE_CLASSES_GET, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %72, i64 %73
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i64*, i64** %12, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @FT_TRACE0(i8* %79)
  %81 = load i32, i32* @Invalid_Argument, align 4
  %82 = call i32 @FT_THROW(i32 %81)
  store i32 %82, i32* %5, align 4
  br label %263

83:                                               ; preds = %71
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %263

85:                                               ; preds = %4
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @ft_strcmp(i8* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = bitcast i8* %90 to i64*
  store i64* %91, i64** %15, align 8
  %92 = load i64*, i64** %15, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %263

97:                                               ; preds = %85
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @ft_strcmp(i8* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** %8, align 8
  %103 = bitcast i8* %102 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %16, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %108 = call i32 @af_property_get_face_globals(i32 %106, %struct.TYPE_11__** %17, %struct.TYPE_10__* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %101
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %101
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %5, align 4
  br label %263

119:                                              ; preds = %97
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @ft_strcmp(i8* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %242, label %123

123:                                              ; preds = %119
  %124 = load i8*, i8** %8, align 8
  %125 = bitcast i8* %124 to i64*
  store i64* %125, i64** %18, align 8
  %126 = load i64*, i64** %18, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %19, align 8
  %129 = load i64*, i64** %18, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %20, align 8
  %132 = load i64*, i64** %18, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 2
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %21, align 8
  %135 = load i64*, i64** %18, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 3
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %22, align 8
  %138 = load i64*, i64** %18, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 4
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %23, align 8
  %141 = load i64*, i64** %18, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 5
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %24, align 8
  %144 = load i64*, i64** %18, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 6
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %25, align 8
  %147 = load i64*, i64** %18, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 7
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %26, align 8
  %150 = load i64, i64* %19, align 8
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %197, label %152

152:                                              ; preds = %123
  %153 = load i64, i64* %21, align 8
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %197, label %155

155:                                              ; preds = %152
  %156 = load i64, i64* %23, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %197, label %158

158:                                              ; preds = %155
  %159 = load i64, i64* %25, align 8
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %197, label %161

161:                                              ; preds = %158
  %162 = load i64, i64* %20, align 8
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %197, label %164

164:                                              ; preds = %161
  %165 = load i64, i64* %22, align 8
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %197, label %167

167:                                              ; preds = %164
  %168 = load i64, i64* %24, align 8
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %197, label %170

170:                                              ; preds = %167
  %171 = load i64, i64* %26, align 8
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %197, label %173

173:                                              ; preds = %170
  %174 = load i64, i64* %19, align 8
  %175 = load i64, i64* %21, align 8
  %176 = icmp sgt i64 %174, %175
  br i1 %176, label %197, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* %21, align 8
  %179 = load i64, i64* %23, align 8
  %180 = icmp sgt i64 %178, %179
  br i1 %180, label %197, label %181

181:                                              ; preds = %177
  %182 = load i64, i64* %23, align 8
  %183 = load i64, i64* %25, align 8
  %184 = icmp sgt i64 %182, %183
  br i1 %184, label %197, label %185

185:                                              ; preds = %181
  %186 = load i64, i64* %20, align 8
  %187 = icmp sgt i64 %186, 500
  br i1 %187, label %197, label %188

188:                                              ; preds = %185
  %189 = load i64, i64* %22, align 8
  %190 = icmp sgt i64 %189, 500
  br i1 %190, label %197, label %191

191:                                              ; preds = %188
  %192 = load i64, i64* %24, align 8
  %193 = icmp sgt i64 %192, 500
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load i64, i64* %26, align 8
  %196 = icmp sgt i64 %195, 500
  br i1 %196, label %197, label %200

197:                                              ; preds = %194, %191, %188, %185, %181, %177, %173, %170, %167, %164, %161, %158, %155, %152, %123
  %198 = load i32, i32* @Invalid_Argument, align 4
  %199 = call i32 @FT_THROW(i32 %198)
  store i32 %199, i32* %5, align 4
  br label %263

200:                                              ; preds = %194
  %201 = load i64, i64* %19, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 4
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 0
  store i64 %201, i64* %205, align 8
  %206 = load i64, i64* %20, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 4
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 1
  store i64 %206, i64* %210, align 8
  %211 = load i64, i64* %21, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 4
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 2
  store i64 %211, i64* %215, align 8
  %216 = load i64, i64* %22, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 4
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 3
  store i64 %216, i64* %220, align 8
  %221 = load i64, i64* %23, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 4
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 4
  store i64 %221, i64* %225, align 8
  %226 = load i64, i64* %24, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 4
  %229 = load i64*, i64** %228, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 5
  store i64 %226, i64* %230, align 8
  %231 = load i64, i64* %25, align 8
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 4
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 6
  store i64 %231, i64* %235, align 8
  %236 = load i64, i64* %26, align 8
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 4
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 7
  store i64 %236, i64* %240, align 8
  %241 = load i32, i32* %10, align 4
  store i32 %241, i32* %5, align 4
  br label %263

242:                                              ; preds = %119
  %243 = load i8*, i8** %7, align 8
  %244 = call i32 @ft_strcmp(i8* %243, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %254, label %246

246:                                              ; preds = %242
  %247 = load i8*, i8** %8, align 8
  %248 = bitcast i8* %247 to i8**
  store i8** %248, i8*** %27, align 8
  %249 = load i8**, i8*** %27, align 8
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 3
  store i8* %250, i8** %252, align 8
  %253 = load i32, i32* %10, align 4
  store i32 %253, i32* %5, align 4
  br label %263

254:                                              ; preds = %242
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  %259 = load i8*, i8** %7, align 8
  %260 = call i32 @FT_TRACE0(i8* %259)
  %261 = load i32, i32* @Missing_Property, align 4
  %262 = call i32 @FT_THROW(i32 %261)
  store i32 %262, i32* %5, align 4
  br label %263

263:                                              ; preds = %258, %246, %200, %197, %117, %89, %83, %77
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local i32 @FT_UNUSED(i8*) #1

declare dso_local i32 @ft_strcmp(i8*, i8*) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i32 @FT_THROW(i32) #1

declare dso_local i32 @af_property_get_face_globals(i32, %struct.TYPE_11__**, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
