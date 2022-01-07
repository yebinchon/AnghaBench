; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_decompress.c_upsample_image_components.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_decompress.c_upsample_image_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i64, i32, i32, i64*, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i64, i64, i32, i32, i32 }

@OPJ_FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"ERROR -> opj_decompress: -upsample not supported with reduction\0A\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"ERROR -> opj_decompress: failed to allocate memory for upsampled components!\0A\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"ERROR -> opj_decompress: Invalid image/component parameters found when upsampling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*)* @upsample_image_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @upsample_image_components(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  %24 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %24, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %66, %1
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = call i32 @opj_image_destroy(%struct.TYPE_10__* %43)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %640

45:                                               ; preds = %31
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %54, %45
  %64 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %64, i32* %6, align 4
  br label %69

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %25

69:                                               ; preds = %63, %25
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %2, align 8
  br label %640

74:                                               ; preds = %69
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = mul i64 %77, 56
  %79 = trunc i64 %78 to i32
  %80 = call i64 @malloc(i32 %79)
  %81 = inttoptr i64 %80 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %5, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = icmp eq %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = call i32 @opj_image_destroy(%struct.TYPE_10__* %87)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %640

89:                                               ; preds = %74
  store i64 0, i64* %7, align 8
  br label %90

90:                                               ; preds = %174, %89
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %177

96:                                               ; preds = %90
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 %98
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %8, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 %103
  store %struct.TYPE_11__* %104, %struct.TYPE_11__** %9, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  store i32 1, i32* %131, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  store i32 1, i32* %133, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 4
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 5
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ugt i32 %146, 1
  br i1 %147, label %148, label %158

148:                                              ; preds = %96
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = sub i64 %151, %154
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 4
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %148, %96
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp ugt i32 %161, 1
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = sub i64 %166, %169
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 5
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %163, %158
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %7, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %7, align 8
  br label %90

177:                                              ; preds = %90
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = call %struct.TYPE_10__* @opj_image_create(i64 %180, %struct.TYPE_12__* %181, i32 %184)
  store %struct.TYPE_10__* %185, %struct.TYPE_10__** %4, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %187 = call i32 @free(%struct.TYPE_12__* %186)
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %189 = icmp eq %struct.TYPE_10__* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %177
  %191 = load i32, i32* @stderr, align 4
  %192 = call i32 @fprintf(i32 %191, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %194 = call i32 @opj_image_destroy(%struct.TYPE_10__* %193)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %640

195:                                              ; preds = %177
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  store i64 %203, i64* %205, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 2
  store i64 %208, i64* %210, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 4
  store i64 %213, i64* %215, align 8
  store i64 0, i64* %7, align 8
  br label %216

216:                                              ; preds = %633, %195
  %217 = load i64, i64* %7, align 8
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ult i64 %217, %220
  br i1 %221, label %222, label %636

222:                                              ; preds = %216
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 5
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = load i64, i64* %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 %226
  store %struct.TYPE_11__* %227, %struct.TYPE_11__** %10, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 5
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = load i64, i64* %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i64 %231
  store %struct.TYPE_11__* %232, %struct.TYPE_11__** %11, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 9
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 8
  store i32 %245, i32* %247, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ugt i32 %250, 1
  br i1 %251, label %257, label %252

252:                                              ; preds = %222
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = icmp ugt i32 %255, 1
  br i1 %256, label %257, label %615

257:                                              ; preds = %252, %222
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 7
  %260 = load i64*, i64** %259, align 8
  store i64* %260, i64** %12, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 7
  %263 = load i64*, i64** %262, align 8
  store i64* %263, i64** %13, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = mul i32 %266, %269
  %271 = zext i32 %270 to i64
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = sub i64 %271, %274
  store i64 %275, i64* %15, align 8
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = mul i32 %278, %281
  %283 = zext i32 %282 to i64
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = sub i64 %283, %286
  store i64 %287, i64* %16, align 8
  %288 = load i64, i64* %15, align 8
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = zext i32 %291 to i64
  %293 = icmp uge i64 %288, %292
  br i1 %293, label %301, label %294

294:                                              ; preds = %257
  %295 = load i64, i64* %16, align 8
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = zext i32 %298 to i64
  %300 = icmp uge i64 %295, %299
  br i1 %300, label %301, label %308

301:                                              ; preds = %294, %257
  %302 = load i32, i32* @stderr, align 4
  %303 = call i32 @fprintf(i32 %302, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %305 = call i32 @opj_image_destroy(%struct.TYPE_10__* %304)
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %307 = call i32 @opj_image_destroy(%struct.TYPE_10__* %306)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %640

308:                                              ; preds = %294
  store i64 0, i64* %14, align 8
  br label %309

309:                                              ; preds = %326, %308
  %310 = load i64, i64* %14, align 8
  %311 = load i64, i64* %16, align 8
  %312 = icmp ult i64 %310, %311
  br i1 %312, label %313, label %329

313:                                              ; preds = %309
  %314 = load i64*, i64** %13, align 8
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 3
  %317 = load i64, i64* %316, align 8
  %318 = mul i64 %317, 8
  %319 = trunc i64 %318 to i32
  %320 = call i32 @memset(i64* %314, i32 0, i32 %319)
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = load i64*, i64** %13, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 %323
  store i64* %325, i64** %13, align 8
  br label %326

326:                                              ; preds = %313
  %327 = load i64, i64* %14, align 8
  %328 = add i64 %327, 1
  store i64 %328, i64* %14, align 8
  br label %309

329:                                              ; preds = %309
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = sub i32 %335, 1
  %337 = zext i32 %336 to i64
  %338 = icmp ugt i64 %332, %337
  br i1 %338, label %339, label %486

339:                                              ; preds = %329
  br label %340

340:                                              ; preds = %478, %339
  %341 = load i64, i64* %14, align 8
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = sub i32 %347, 1
  %349 = zext i32 %348 to i64
  %350 = sub i64 %344, %349
  %351 = icmp ult i64 %341, %350
  br i1 %351, label %352, label %485

352:                                              ; preds = %340
  store i64 0, i64* %19, align 8
  store i64 0, i64* %17, align 8
  br label %353

353:                                              ; preds = %361, %352
  %354 = load i64, i64* %17, align 8
  %355 = load i64, i64* %15, align 8
  %356 = icmp ult i64 %354, %355
  br i1 %356, label %357, label %364

357:                                              ; preds = %353
  %358 = load i64*, i64** %13, align 8
  %359 = load i64, i64* %17, align 8
  %360 = getelementptr inbounds i64, i64* %358, i64 %359
  store i64 0, i64* %360, align 8
  br label %361

361:                                              ; preds = %357
  %362 = load i64, i64* %17, align 8
  %363 = add i64 %362, 1
  store i64 %363, i64* %17, align 8
  br label %353

364:                                              ; preds = %353
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = sub i32 %370, 1
  %372 = zext i32 %371 to i64
  %373 = icmp ugt i64 %367, %372
  br i1 %373, label %374, label %419

374:                                              ; preds = %364
  br label %375

375:                                              ; preds = %409, %374
  %376 = load i64, i64* %17, align 8
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 3
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = sub i32 %382, 1
  %384 = zext i32 %383 to i64
  %385 = sub i64 %379, %384
  %386 = icmp ult i64 %376, %385
  br i1 %386, label %387, label %418

387:                                              ; preds = %375
  store i64 0, i64* %20, align 8
  br label %388

388:                                              ; preds = %405, %387
  %389 = load i64, i64* %20, align 8
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  %394 = icmp ult i64 %389, %393
  br i1 %394, label %395, label %408

395:                                              ; preds = %388
  %396 = load i64*, i64** %12, align 8
  %397 = load i64, i64* %19, align 8
  %398 = getelementptr inbounds i64, i64* %396, i64 %397
  %399 = load i64, i64* %398, align 8
  %400 = load i64*, i64** %13, align 8
  %401 = load i64, i64* %17, align 8
  %402 = load i64, i64* %20, align 8
  %403 = add i64 %401, %402
  %404 = getelementptr inbounds i64, i64* %400, i64 %403
  store i64 %399, i64* %404, align 8
  br label %405

405:                                              ; preds = %395
  %406 = load i64, i64* %20, align 8
  %407 = add i64 %406, 1
  store i64 %407, i64* %20, align 8
  br label %388

408:                                              ; preds = %388
  br label %409

409:                                              ; preds = %408
  %410 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = zext i32 %412 to i64
  %414 = load i64, i64* %17, align 8
  %415 = add i64 %414, %413
  store i64 %415, i64* %17, align 8
  %416 = load i64, i64* %19, align 8
  %417 = add i64 %416, 1
  store i64 %417, i64* %19, align 8
  br label %375

418:                                              ; preds = %375
  br label %419

419:                                              ; preds = %418, %364
  br label %420

420:                                              ; preds = %434, %419
  %421 = load i64, i64* %17, align 8
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 3
  %424 = load i64, i64* %423, align 8
  %425 = icmp ult i64 %421, %424
  br i1 %425, label %426, label %437

426:                                              ; preds = %420
  %427 = load i64*, i64** %12, align 8
  %428 = load i64, i64* %19, align 8
  %429 = getelementptr inbounds i64, i64* %427, i64 %428
  %430 = load i64, i64* %429, align 8
  %431 = load i64*, i64** %13, align 8
  %432 = load i64, i64* %17, align 8
  %433 = getelementptr inbounds i64, i64* %431, i64 %432
  store i64 %430, i64* %433, align 8
  br label %434

434:                                              ; preds = %426
  %435 = load i64, i64* %17, align 8
  %436 = add i64 %435, 1
  store i64 %436, i64* %17, align 8
  br label %420

437:                                              ; preds = %420
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 3
  %440 = load i64, i64* %439, align 8
  %441 = load i64*, i64** %13, align 8
  %442 = getelementptr inbounds i64, i64* %441, i64 %440
  store i64* %442, i64** %13, align 8
  store i64 1, i64* %18, align 8
  br label %443

443:                                              ; preds = %469, %437
  %444 = load i64, i64* %18, align 8
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = zext i32 %447 to i64
  %449 = icmp ult i64 %444, %448
  br i1 %449, label %450, label %472

450:                                              ; preds = %443
  %451 = load i64*, i64** %13, align 8
  %452 = load i64*, i64** %13, align 8
  %453 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %454 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %453, i32 0, i32 3
  %455 = load i64, i64* %454, align 8
  %456 = sub i64 0, %455
  %457 = getelementptr inbounds i64, i64* %452, i64 %456
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 3
  %460 = load i64, i64* %459, align 8
  %461 = mul i64 %460, 8
  %462 = trunc i64 %461 to i32
  %463 = call i32 @memcpy(i64* %451, i64* %457, i32 %462)
  %464 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %464, i32 0, i32 3
  %466 = load i64, i64* %465, align 8
  %467 = load i64*, i64** %13, align 8
  %468 = getelementptr inbounds i64, i64* %467, i64 %466
  store i64* %468, i64** %13, align 8
  br label %469

469:                                              ; preds = %450
  %470 = load i64, i64* %18, align 8
  %471 = add i64 %470, 1
  store i64 %471, i64* %18, align 8
  br label %443

472:                                              ; preds = %443
  %473 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %474 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %473, i32 0, i32 3
  %475 = load i64, i64* %474, align 8
  %476 = load i64*, i64** %12, align 8
  %477 = getelementptr inbounds i64, i64* %476, i64 %475
  store i64* %477, i64** %12, align 8
  br label %478

478:                                              ; preds = %472
  %479 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %480 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = zext i32 %481 to i64
  %483 = load i64, i64* %14, align 8
  %484 = add i64 %483, %482
  store i64 %484, i64* %14, align 8
  br label %340

485:                                              ; preds = %340
  br label %486

486:                                              ; preds = %485, %329
  %487 = load i64, i64* %14, align 8
  %488 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %489 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %488, i32 0, i32 4
  %490 = load i64, i64* %489, align 8
  %491 = icmp ult i64 %487, %490
  br i1 %491, label %492, label %614

492:                                              ; preds = %486
  store i64 0, i64* %22, align 8
  store i64 0, i64* %21, align 8
  br label %493

493:                                              ; preds = %501, %492
  %494 = load i64, i64* %21, align 8
  %495 = load i64, i64* %15, align 8
  %496 = icmp ult i64 %494, %495
  br i1 %496, label %497, label %504

497:                                              ; preds = %493
  %498 = load i64*, i64** %13, align 8
  %499 = load i64, i64* %21, align 8
  %500 = getelementptr inbounds i64, i64* %498, i64 %499
  store i64 0, i64* %500, align 8
  br label %501

501:                                              ; preds = %497
  %502 = load i64, i64* %21, align 8
  %503 = add i64 %502, 1
  store i64 %503, i64* %21, align 8
  br label %493

504:                                              ; preds = %493
  %505 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %506 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %505, i32 0, i32 3
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %509 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = sub i32 %510, 1
  %512 = zext i32 %511 to i64
  %513 = icmp ugt i64 %507, %512
  br i1 %513, label %514, label %559

514:                                              ; preds = %504
  br label %515

515:                                              ; preds = %549, %514
  %516 = load i64, i64* %21, align 8
  %517 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %518 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %517, i32 0, i32 3
  %519 = load i64, i64* %518, align 8
  %520 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = sub i32 %522, 1
  %524 = zext i32 %523 to i64
  %525 = sub i64 %519, %524
  %526 = icmp ult i64 %516, %525
  br i1 %526, label %527, label %558

527:                                              ; preds = %515
  store i64 0, i64* %23, align 8
  br label %528

528:                                              ; preds = %545, %527
  %529 = load i64, i64* %23, align 8
  %530 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %531 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 4
  %533 = zext i32 %532 to i64
  %534 = icmp ult i64 %529, %533
  br i1 %534, label %535, label %548

535:                                              ; preds = %528
  %536 = load i64*, i64** %12, align 8
  %537 = load i64, i64* %22, align 8
  %538 = getelementptr inbounds i64, i64* %536, i64 %537
  %539 = load i64, i64* %538, align 8
  %540 = load i64*, i64** %13, align 8
  %541 = load i64, i64* %21, align 8
  %542 = load i64, i64* %23, align 8
  %543 = add i64 %541, %542
  %544 = getelementptr inbounds i64, i64* %540, i64 %543
  store i64 %539, i64* %544, align 8
  br label %545

545:                                              ; preds = %535
  %546 = load i64, i64* %23, align 8
  %547 = add i64 %546, 1
  store i64 %547, i64* %23, align 8
  br label %528

548:                                              ; preds = %528
  br label %549

549:                                              ; preds = %548
  %550 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %551 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = zext i32 %552 to i64
  %554 = load i64, i64* %21, align 8
  %555 = add i64 %554, %553
  store i64 %555, i64* %21, align 8
  %556 = load i64, i64* %22, align 8
  %557 = add i64 %556, 1
  store i64 %557, i64* %22, align 8
  br label %515

558:                                              ; preds = %515
  br label %559

559:                                              ; preds = %558, %504
  br label %560

560:                                              ; preds = %574, %559
  %561 = load i64, i64* %21, align 8
  %562 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %563 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %562, i32 0, i32 3
  %564 = load i64, i64* %563, align 8
  %565 = icmp ult i64 %561, %564
  br i1 %565, label %566, label %577

566:                                              ; preds = %560
  %567 = load i64*, i64** %12, align 8
  %568 = load i64, i64* %22, align 8
  %569 = getelementptr inbounds i64, i64* %567, i64 %568
  %570 = load i64, i64* %569, align 8
  %571 = load i64*, i64** %13, align 8
  %572 = load i64, i64* %21, align 8
  %573 = getelementptr inbounds i64, i64* %571, i64 %572
  store i64 %570, i64* %573, align 8
  br label %574

574:                                              ; preds = %566
  %575 = load i64, i64* %21, align 8
  %576 = add i64 %575, 1
  store i64 %576, i64* %21, align 8
  br label %560

577:                                              ; preds = %560
  %578 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %579 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %578, i32 0, i32 3
  %580 = load i64, i64* %579, align 8
  %581 = load i64*, i64** %13, align 8
  %582 = getelementptr inbounds i64, i64* %581, i64 %580
  store i64* %582, i64** %13, align 8
  %583 = load i64, i64* %14, align 8
  %584 = add i64 %583, 1
  store i64 %584, i64* %14, align 8
  br label %585

585:                                              ; preds = %610, %577
  %586 = load i64, i64* %14, align 8
  %587 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %587, i32 0, i32 4
  %589 = load i64, i64* %588, align 8
  %590 = icmp ult i64 %586, %589
  br i1 %590, label %591, label %613

591:                                              ; preds = %585
  %592 = load i64*, i64** %13, align 8
  %593 = load i64*, i64** %13, align 8
  %594 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %595 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %594, i32 0, i32 3
  %596 = load i64, i64* %595, align 8
  %597 = sub i64 0, %596
  %598 = getelementptr inbounds i64, i64* %593, i64 %597
  %599 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %600 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %599, i32 0, i32 3
  %601 = load i64, i64* %600, align 8
  %602 = mul i64 %601, 8
  %603 = trunc i64 %602 to i32
  %604 = call i32 @memcpy(i64* %592, i64* %598, i32 %603)
  %605 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %606 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %605, i32 0, i32 3
  %607 = load i64, i64* %606, align 8
  %608 = load i64*, i64** %13, align 8
  %609 = getelementptr inbounds i64, i64* %608, i64 %607
  store i64* %609, i64** %13, align 8
  br label %610

610:                                              ; preds = %591
  %611 = load i64, i64* %14, align 8
  %612 = add i64 %611, 1
  store i64 %612, i64* %14, align 8
  br label %585

613:                                              ; preds = %585
  br label %614

614:                                              ; preds = %613, %486
  br label %632

615:                                              ; preds = %252
  %616 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %617 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %616, i32 0, i32 7
  %618 = load i64*, i64** %617, align 8
  %619 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %620 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %619, i32 0, i32 7
  %621 = load i64*, i64** %620, align 8
  %622 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %623 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %622, i32 0, i32 3
  %624 = load i64, i64* %623, align 8
  %625 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %626 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %625, i32 0, i32 4
  %627 = load i64, i64* %626, align 8
  %628 = mul i64 %624, %627
  %629 = mul i64 %628, 8
  %630 = trunc i64 %629 to i32
  %631 = call i32 @memcpy(i64* %618, i64* %621, i32 %630)
  br label %632

632:                                              ; preds = %615, %614
  br label %633

633:                                              ; preds = %632
  %634 = load i64, i64* %7, align 8
  %635 = add i64 %634, 1
  store i64 %635, i64* %7, align 8
  br label %216

636:                                              ; preds = %216
  %637 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %638 = call i32 @opj_image_destroy(%struct.TYPE_10__* %637)
  %639 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %639, %struct.TYPE_10__** %2, align 8
  br label %640

640:                                              ; preds = %636, %301, %190, %84, %72, %40
  %641 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %641
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @opj_image_destroy(%struct.TYPE_10__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.TYPE_10__* @opj_image_create(i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
