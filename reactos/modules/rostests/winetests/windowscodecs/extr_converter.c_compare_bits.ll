; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_compare_bits.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_compare_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_data = type { i32, %struct.bitmap_data*, i64, i32 }

@GUID_WICPixelFormat32bppBGR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GUID_WICPixelFormat32bppGrayFloat = common dso_local global i32 0, align 4
@GUID_WICPixelFormatBlackWhite = common dso_local global i32 0, align 4
@GUID_WICPixelFormat1bppIndexed = common dso_local global i32 0, align 4
@GUID_WICPixelFormat2bppIndexed = common dso_local global i32 0, align 4
@GUID_WICPixelFormat4bppIndexed = common dso_local global i32 0, align 4
@GUID_WICPixelFormat8bppIndexed = common dso_local global i32 0, align 4
@winetest_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"converted_bits (%u bytes):\0A    \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u,\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_data*, i32, i32*)* @compare_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_bits(%struct.bitmap_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.bitmap_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.bitmap_data* %0, %struct.bitmap_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %22 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %23 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @IsEqualGUID(i32 %24, i32* @GUID_WICPixelFormat32bppBGR)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %3
  %28 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %29 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %6, align 8
  store i32* %32, i32** %10, align 8
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %56, %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %36, 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 16777215
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 16777215
  %52 = icmp ne i32 %45, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %7, align 4
  br label %59

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %34

59:                                               ; preds = %53, %34
  br label %208

60:                                               ; preds = %3
  %61 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %62 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IsEqualGUID(i32 %63, i32* @GUID_WICPixelFormat32bppGrayFloat)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %60
  %67 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %68 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to float*
  store float* %70, float** %12, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = bitcast i32* %71 to float*
  store float* %72, float** %13, align 8
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %95, %66
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sdiv i32 %76, 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  %80 = load float*, float** %12, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load float, float* %83, align 4
  %85 = load float*, float** %13, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  %89 = load float, float* %88, align 4
  %90 = call i32 @near_equal(float %84, float %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %7, align 4
  br label %98

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %74

98:                                               ; preds = %92, %74
  br label %207

99:                                               ; preds = %60
  %100 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %101 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @IsEqualGUID(i32 %102, i32* @GUID_WICPixelFormatBlackWhite)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %107 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @IsEqualGUID(i32 %108, i32* @GUID_WICPixelFormat1bppIndexed)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %105, %99
  %112 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %113 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %15, align 8
  %116 = load i32*, i32** %6, align 8
  store i32* %116, i32** %16, align 8
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %7, align 4
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %144, %111
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %118
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %16, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %127, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %122
  %135 = load i32*, i32** %16, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 255
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @FALSE, align 4
  store i32 %142, i32* %7, align 4
  br label %147

143:                                              ; preds = %134, %122
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %118

147:                                              ; preds = %141, %118
  br label %206

148:                                              ; preds = %105
  %149 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %150 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @IsEqualGUID(i32 %151, i32* @GUID_WICPixelFormat2bppIndexed)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %148
  %155 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %156 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @IsEqualGUID(i32 %157, i32* @GUID_WICPixelFormat4bppIndexed)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %162 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @IsEqualGUID(i32 %163, i32* @GUID_WICPixelFormat8bppIndexed)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %196

166:                                              ; preds = %160, %154, %148
  %167 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %168 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  store i32* %170, i32** %18, align 8
  %171 = load i32*, i32** %6, align 8
  store i32* %171, i32** %19, align 8
  %172 = load i32, i32* @TRUE, align 4
  store i32 %172, i32* %7, align 4
  store i32 0, i32* %17, align 4
  br label %173

173:                                              ; preds = %192, %166
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %173
  %178 = load i32*, i32** %18, align 8
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %19, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %182, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %177
  %190 = load i32, i32* @FALSE, align 4
  store i32 %190, i32* %7, align 4
  br label %195

191:                                              ; preds = %177
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %17, align 4
  br label %173

195:                                              ; preds = %189, %173
  br label %205

196:                                              ; preds = %160
  %197 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %198 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* %5, align 4
  %202 = call i64 @memcmp(i64 %199, i32* %200, i32 %201)
  %203 = icmp eq i64 %202, 0
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %196, %195
  br label %206

206:                                              ; preds = %205, %147
  br label %207

207:                                              ; preds = %206, %98
  br label %208

208:                                              ; preds = %207, %59
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %208
  %212 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %213 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %212, i32 0, i32 1
  %214 = load %struct.bitmap_data*, %struct.bitmap_data** %213, align 8
  %215 = icmp ne %struct.bitmap_data* %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %218 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %217, i32 0, i32 1
  %219 = load %struct.bitmap_data*, %struct.bitmap_data** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32*, i32** %6, align 8
  %222 = call i32 @compare_bits(%struct.bitmap_data* %219, i32 %220, i32* %221)
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %216, %211, %208
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %273, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* @winetest_debug, align 4
  %228 = icmp sgt i32 %227, 1
  br i1 %228, label %229, label %273

229:                                              ; preds = %226
  %230 = load %struct.bitmap_data*, %struct.bitmap_data** %4, align 8
  %231 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sdiv i32 %232, 8
  store i32 %233, i32* %21, align 4
  %234 = load i32, i32* %21, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %229
  %237 = load i32, i32* %5, align 4
  store i32 %237, i32* %21, align 4
  br label %238

238:                                              ; preds = %236, %229
  %239 = load i32, i32* %5, align 4
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %239)
  store i32 0, i32* %20, align 4
  br label %241

241:                                              ; preds = %268, %238
  %242 = load i32, i32* %20, align 4
  %243 = load i32, i32* %5, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %271

245:                                              ; preds = %241
  %246 = load i32*, i32** %6, align 8
  %247 = load i32, i32* %20, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %20, align 4
  %253 = add nsw i32 %252, 1
  %254 = srem i32 %253, 32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %245
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %267

258:                                              ; preds = %245
  %259 = load i32, i32* %20, align 4
  %260 = add nsw i32 %259, 1
  %261 = load i32, i32* %21, align 4
  %262 = srem i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %258
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %258
  br label %267

267:                                              ; preds = %266, %256
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %20, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %20, align 4
  br label %241

271:                                              ; preds = %241
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %226, %223
  %274 = load i32, i32* %7, align 4
  ret i32 %274
}

declare dso_local i64 @IsEqualGUID(i32, i32*) #1

declare dso_local i32 @near_equal(float, float) #1

declare dso_local i64 @memcmp(i64, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
