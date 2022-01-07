; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_copypixels_to_8bppGray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_copypixels_to_8bppGray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FormatConverter = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@format_8bppGray = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@format_32bppGrayFloat = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.FormatConverter*, %struct.TYPE_5__*, i32, i32, float*, i32)* @copypixels_to_8bppGray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copypixels_to_8bppGray(%struct.FormatConverter* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, float* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.FormatConverter*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float, align 4
  store %struct.FormatConverter* %0, %struct.FormatConverter** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float* %4, float** %12, align 8
  store i32 %5, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @format_8bppGray, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %6
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %38 = getelementptr inbounds %struct.FormatConverter, %struct.FormatConverter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load float*, float** %12, align 8
  %44 = call i32 @IWICBitmapSource_CopyPixels(i32 %39, %struct.TYPE_5__* %40, i32 %41, i32 %42, float* %43)
  store i32 %44, i32* %7, align 4
  br label %236

45:                                               ; preds = %33
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %7, align 4
  br label %236

47:                                               ; preds = %6
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @format_32bppGrayFloat, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %137

51:                                               ; preds = %47
  %52 = load i32, i32* @S_OK, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %135

55:                                               ; preds = %51
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 4, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  store i32 %64, i32* %17, align 4
  %65 = call i32 (...) @GetProcessHeap()
  %66 = load i32, i32* %17, align 4
  %67 = call float* @HeapAlloc(i32 %65, i32 0, i32 %66)
  store float* %67, float** %15, align 8
  %68 = load float*, float** %15, align 8
  %69 = icmp ne float* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %55
  %71 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %71, i32* %7, align 4
  br label %236

72:                                               ; preds = %55
  %73 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %74 = getelementptr inbounds %struct.FormatConverter, %struct.FormatConverter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load float*, float** %15, align 8
  %80 = call i32 @IWICBitmapSource_CopyPixels(i32 %75, %struct.TYPE_5__* %76, i32 %77, i32 %78, float* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @SUCCEEDED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %131

84:                                               ; preds = %72
  %85 = load float*, float** %15, align 8
  store float* %85, float** %20, align 8
  %86 = load float*, float** %12, align 8
  store float* %86, float** %21, align 8
  store i64 0, i64* %19, align 8
  br label %87

87:                                               ; preds = %127, %84
  %88 = load i64, i64* %19, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %130

94:                                               ; preds = %87
  %95 = load float*, float** %20, align 8
  store float* %95, float** %22, align 8
  %96 = load float*, float** %21, align 8
  store float* %96, float** %23, align 8
  store i64 0, i64* %18, align 8
  br label %97

97:                                               ; preds = %115, %94
  %98 = load i64, i64* %18, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %98, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load float*, float** %22, align 8
  %106 = getelementptr inbounds float, float* %105, i32 1
  store float* %106, float** %22, align 8
  %107 = load float, float* %105, align 4
  %108 = call float @to_sRGB_component(float %107)
  %109 = fmul float %108, 2.550000e+02
  %110 = fadd float %109, 0x3FE051EB80000000
  %111 = call i64 @floorf(float %110)
  %112 = sitofp i64 %111 to float
  %113 = load float*, float** %23, align 8
  %114 = getelementptr inbounds float, float* %113, i32 1
  store float* %114, float** %23, align 8
  store float %112, float* %113, align 4
  br label %115

115:                                              ; preds = %104
  %116 = load i64, i64* %18, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %18, align 8
  br label %97

118:                                              ; preds = %97
  %119 = load i32, i32* %16, align 4
  %120 = load float*, float** %20, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds float, float* %120, i64 %121
  store float* %122, float** %20, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load float*, float** %21, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds float, float* %124, i64 %125
  store float* %126, float** %21, align 8
  br label %127

127:                                              ; preds = %118
  %128 = load i64, i64* %19, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %19, align 8
  br label %87

130:                                              ; preds = %87
  br label %131

131:                                              ; preds = %130, %72
  %132 = call i32 (...) @GetProcessHeap()
  %133 = load float*, float** %15, align 8
  %134 = call i32 @HeapFree(i32 %132, i32 0, float* %133)
  br label %135

135:                                              ; preds = %131, %51
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %7, align 4
  br label %236

137:                                              ; preds = %47
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 3, %140
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %142, %145
  store i32 %146, i32* %17, align 4
  %147 = call i32 (...) @GetProcessHeap()
  %148 = load i32, i32* %17, align 4
  %149 = call float* @HeapAlloc(i32 %147, i32 0, i32 %148)
  store float* %149, float** %15, align 8
  %150 = load float*, float** %15, align 8
  %151 = icmp ne float* %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %137
  %153 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %153, i32* %7, align 4
  br label %236

154:                                              ; preds = %137
  %155 = load %struct.FormatConverter*, %struct.FormatConverter** %8, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load float*, float** %15, align 8
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @copypixels_to_24bppBGR(%struct.FormatConverter* %155, %struct.TYPE_5__* %156, i32 %157, i32 %158, float* %159, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i64 @SUCCEEDED(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %231

165:                                              ; preds = %154
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %167 = icmp ne %struct.TYPE_5__* %166, null
  br i1 %167, label %168, label %231

168:                                              ; preds = %165
  %169 = load float*, float** %15, align 8
  store float* %169, float** %26, align 8
  %170 = load float*, float** %12, align 8
  store float* %170, float** %27, align 8
  store i64 0, i64* %25, align 8
  br label %171

171:                                              ; preds = %227, %168
  %172 = load i64, i64* %25, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = icmp slt i64 %172, %176
  br i1 %177, label %178, label %230

178:                                              ; preds = %171
  %179 = load float*, float** %26, align 8
  store float* %179, float** %28, align 8
  store i64 0, i64* %24, align 8
  br label %180

180:                                              ; preds = %215, %178
  %181 = load i64, i64* %24, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %181, %185
  br i1 %186, label %187, label %218

187:                                              ; preds = %180
  %188 = load float*, float** %28, align 8
  %189 = getelementptr inbounds float, float* %188, i64 2
  %190 = load float, float* %189, align 4
  %191 = fmul float %190, 0x3FCB367A00000000
  %192 = load float*, float** %28, align 8
  %193 = getelementptr inbounds float, float* %192, i64 1
  %194 = load float, float* %193, align 4
  %195 = fmul float %194, 0x3FE6E2EB20000000
  %196 = fadd float %191, %195
  %197 = load float*, float** %28, align 8
  %198 = getelementptr inbounds float, float* %197, i64 0
  %199 = load float, float* %198, align 4
  %200 = fmul float %199, 0x3FB27BB300000000
  %201 = fadd float %196, %200
  %202 = fdiv float %201, 2.550000e+02
  store float %202, float* %29, align 4
  %203 = load float, float* %29, align 4
  %204 = call float @to_sRGB_component(float %203)
  %205 = fmul float %204, 2.550000e+02
  store float %205, float* %29, align 4
  %206 = load float, float* %29, align 4
  %207 = fadd float %206, 0x3FE051EB80000000
  %208 = call i64 @floorf(float %207)
  %209 = sitofp i64 %208 to float
  %210 = load float*, float** %27, align 8
  %211 = load i64, i64* %24, align 8
  %212 = getelementptr inbounds float, float* %210, i64 %211
  store float %209, float* %212, align 4
  %213 = load float*, float** %28, align 8
  %214 = getelementptr inbounds float, float* %213, i64 3
  store float* %214, float** %28, align 8
  br label %215

215:                                              ; preds = %187
  %216 = load i64, i64* %24, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %24, align 8
  br label %180

218:                                              ; preds = %180
  %219 = load i32, i32* %16, align 4
  %220 = load float*, float** %26, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds float, float* %220, i64 %221
  store float* %222, float** %26, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load float*, float** %27, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds float, float* %224, i64 %225
  store float* %226, float** %27, align 8
  br label %227

227:                                              ; preds = %218
  %228 = load i64, i64* %25, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %25, align 8
  br label %171

230:                                              ; preds = %171
  br label %231

231:                                              ; preds = %230, %165, %154
  %232 = call i32 (...) @GetProcessHeap()
  %233 = load float*, float** %15, align 8
  %234 = call i32 @HeapFree(i32 %232, i32 0, float* %233)
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %231, %152, %135, %70, %45, %36
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

declare dso_local i32 @IWICBitmapSource_CopyPixels(i32, %struct.TYPE_5__*, i32, i32, float*) #1

declare dso_local float* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i64 @floorf(float) #1

declare dso_local float @to_sRGB_component(float) #1

declare dso_local i32 @HeapFree(i32, i32, float*) #1

declare dso_local i32 @copypixels_to_24bppBGR(%struct.FormatConverter*, %struct.TYPE_5__*, i32, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
