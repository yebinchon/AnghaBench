; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_codebook_decode_deinterleave_repeat.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_codebook_decode_deinterleave_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i32 }

@VORBIS_invalid_stream = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, float**, i32, i32*, i32*, i32, i32)* @codebook_decode_deinterleave_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codebook_decode_deinterleave_repeat(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, float** %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca float**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %11, align 8
  store float** %2, float*** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %18, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %22, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = load i32, i32* @VORBIS_invalid_stream, align 4
  %40 = call i32 @error(%struct.TYPE_10__* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %216

41:                                               ; preds = %8
  br label %42

42:                                               ; preds = %206, %41
  %43 = load i32, i32* %17, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %210

45:                                               ; preds = %42
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %47 = call float @CODEBOOK_ELEMENT_BASE(%struct.TYPE_11__* %46)
  store float %47, float* %23, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %51 = call i32 @DECODE_VQ(i32 %48, %struct.TYPE_10__* %49, %struct.TYPE_11__* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load i32, i32* %21, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br label %62

62:                                               ; preds = %56, %45
  %63 = phi i1 [ true, %45 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %21, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %9, align 4
  br label %216

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %68
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = load i32, i32* @VORBIS_invalid_stream, align 4
  %84 = call i32 @error(%struct.TYPE_10__* %82, i32 %83)
  store i32 %84, i32* %9, align 4
  br label %216

85:                                               ; preds = %62
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %86, %89
  %91 = load i32, i32* %22, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %13, align 4
  %95 = mul nsw i32 %93, %94
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %85
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %13, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %13, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sub nsw i32 %100, %105
  store i32 %106, i32* %22, align 4
  br label %107

107:                                              ; preds = %97, %85
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %21, align 4
  %112 = mul nsw i32 %111, %110
  store i32 %112, i32* %21, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %162

117:                                              ; preds = %107
  store i32 0, i32* %20, align 4
  br label %118

118:                                              ; preds = %158, %117
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %22, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %161

122:                                              ; preds = %118
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %20, align 4
  %126 = add nsw i32 %124, %125
  %127 = call float @CODEBOOK_ELEMENT_FAST(%struct.TYPE_11__* %123, i32 %126)
  %128 = load float, float* %23, align 4
  %129 = fadd float %127, %128
  store float %129, float* %24, align 4
  %130 = load float**, float*** %12, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float*, float** %130, i64 %132
  %134 = load float*, float** %133, align 8
  %135 = icmp ne float* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %122
  %137 = load float, float* %24, align 4
  %138 = load float**, float*** %12, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float*, float** %138, i64 %140
  %142 = load float*, float** %141, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %142, i64 %144
  %146 = load float, float* %145, align 4
  %147 = fadd float %146, %137
  store float %147, float* %145, align 4
  br label %148

148:                                              ; preds = %136, %122
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  store i32 0, i32* %18, align 4
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %19, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = load float, float* %24, align 4
  store float %157, float* %23, align 4
  br label %158

158:                                              ; preds = %156
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %20, align 4
  br label %118

161:                                              ; preds = %118
  br label %206

162:                                              ; preds = %107
  store i32 0, i32* %20, align 4
  br label %163

163:                                              ; preds = %202, %162
  %164 = load i32, i32* %20, align 4
  %165 = load i32, i32* %22, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %205

167:                                              ; preds = %163
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %169, %170
  %172 = call float @CODEBOOK_ELEMENT_FAST(%struct.TYPE_11__* %168, i32 %171)
  %173 = load float, float* %23, align 4
  %174 = fadd float %172, %173
  store float %174, float* %25, align 4
  %175 = load float**, float*** %12, align 8
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float*, float** %175, i64 %177
  %179 = load float*, float** %178, align 8
  %180 = icmp ne float* %179, null
  br i1 %180, label %181, label %193

181:                                              ; preds = %167
  %182 = load float, float* %25, align 4
  %183 = load float**, float*** %12, align 8
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float*, float** %183, i64 %185
  %187 = load float*, float** %186, align 8
  %188 = load i32, i32* %19, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = fadd float %191, %182
  store float %192, float* %190, align 4
  br label %193

193:                                              ; preds = %181, %167
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  store i32 0, i32* %18, align 4
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  br label %201

201:                                              ; preds = %198, %193
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %20, align 4
  br label %163

205:                                              ; preds = %163
  br label %206

206:                                              ; preds = %205, %161
  %207 = load i32, i32* %22, align 4
  %208 = load i32, i32* %17, align 4
  %209 = sub nsw i32 %208, %207
  store i32 %209, i32* %17, align 4
  br label %42

210:                                              ; preds = %42
  %211 = load i32, i32* %18, align 4
  %212 = load i32*, i32** %14, align 8
  store i32 %211, i32* %212, align 4
  %213 = load i32, i32* %19, align 4
  %214 = load i32*, i32** %15, align 8
  store i32 %213, i32* %214, align 4
  %215 = load i32, i32* @TRUE, align 4
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %210, %81, %78, %37
  %217 = load i32, i32* %9, align 4
  ret i32 %217
}

declare dso_local i32 @error(%struct.TYPE_10__*, i32) #1

declare dso_local float @CODEBOOK_ELEMENT_BASE(%struct.TYPE_11__*) #1

declare dso_local i32 @DECODE_VQ(i32, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local float @CODEBOOK_ELEMENT_FAST(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
