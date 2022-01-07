; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_compute_stereo_samples.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_compute_stereo_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@channel_position = common dso_local global i32** null, align 8
@PLAYBACK_LEFT = common dso_local global i32 0, align 4
@PLAYBACK_RIGHT = common dso_local global i32 0, align 4
@temp = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*, i32, float**, i32, i32)* @compute_stereo_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_stereo_samples(i16* %0, i32 %1, float** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x float], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i16* %0, i16** %6, align 8
  store i32 %1, i32* %7, align 4
  store float** %2, float*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 16, i32* %15, align 4
  %19 = call i32 (...) @check_endianness()
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %222, %5
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %225

24:                                               ; preds = %20
  %25 = load i32, i32* %14, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %16, align 4
  %27 = getelementptr inbounds [32 x float], [32 x float]* %11, i64 0, i64 0
  %28 = call i32 @memset(float* %27, i32 0, i32 128)
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %14, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %34, %24
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %183, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %186

43:                                               ; preds = %39
  %44 = load i32**, i32*** @channel_position, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PLAYBACK_LEFT, align 4
  %54 = load i32, i32* @PLAYBACK_RIGHT, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @PLAYBACK_LEFT, align 4
  %59 = load i32, i32* @PLAYBACK_RIGHT, align 4
  %60 = or i32 %58, %59
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %112

62:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %108, %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %63
  %68 = load float**, float*** %8, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float*, float** %68, i64 %70
  %72 = load float*, float** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %72, i64 %78
  %80 = load float, float* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = mul nsw i32 %81, 2
  %83 = add nsw i32 %82, 0
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [32 x float], [32 x float]* %11, i64 0, i64 %84
  %86 = load float, float* %85, align 4
  %87 = fadd float %86, %80
  store float %87, float* %85, align 4
  %88 = load float**, float*** %8, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float*, float** %88, i64 %90
  %92 = load float*, float** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %92, i64 %98
  %100 = load float, float* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = mul nsw i32 %101, 2
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [32 x float], [32 x float]* %11, i64 0, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fadd float %106, %100
  store float %107, float* %105, align 4
  br label %108

108:                                              ; preds = %67
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %63

111:                                              ; preds = %63
  br label %182

112:                                              ; preds = %43
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* @PLAYBACK_LEFT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %146

116:                                              ; preds = %112
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %142, %116
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %117
  %122 = load float**, float*** %8, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float*, float** %122, i64 %124
  %126 = load float*, float** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %126, i64 %132
  %134 = load float, float* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = mul nsw i32 %135, 2
  %137 = add nsw i32 %136, 0
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [32 x float], [32 x float]* %11, i64 0, i64 %138
  %140 = load float, float* %139, align 4
  %141 = fadd float %140, %134
  store float %141, float* %139, align 4
  br label %142

142:                                              ; preds = %121
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %117

145:                                              ; preds = %117
  br label %181

146:                                              ; preds = %112
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @PLAYBACK_RIGHT, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %180

150:                                              ; preds = %146
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %176, %150
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %179

155:                                              ; preds = %151
  %156 = load float**, float*** %8, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float*, float** %156, i64 %158
  %160 = load float*, float** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %160, i64 %166
  %168 = load float, float* %167, align 4
  %169 = load i32, i32* %12, align 4
  %170 = mul nsw i32 %169, 2
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [32 x float], [32 x float]* %11, i64 0, i64 %172
  %174 = load float, float* %173, align 4
  %175 = fadd float %174, %168
  store float %175, float* %173, align 4
  br label %176

176:                                              ; preds = %155
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %151

179:                                              ; preds = %151
  br label %180

180:                                              ; preds = %179, %146
  br label %181

181:                                              ; preds = %180, %145
  br label %182

182:                                              ; preds = %181, %111
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %39

186:                                              ; preds = %39
  store i32 0, i32* %12, align 4
  br label %187

187:                                              ; preds = %218, %186
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %15, align 4
  %190 = shl i32 %189, 1
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %221

192:                                              ; preds = %187
  %193 = load i32, i32* @temp, align 4
  %194 = call i32 @FASTDEF(i32 %193)
  %195 = load i32, i32* @temp, align 4
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [32 x float], [32 x float]* %11, i64 0, i64 %197
  %199 = load float, float* %198, align 4
  %200 = call i32 @FAST_SCALED_FLOAT_TO_INT(i32 %195, float %199, i32 15)
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %201, 32768
  %203 = icmp ugt i32 %202, 65535
  br i1 %203, label %204, label %209

204:                                              ; preds = %192
  %205 = load i32, i32* %18, align 4
  %206 = icmp slt i32 %205, 0
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i32 -32768, i32 32767
  store i32 %208, i32* %18, align 4
  br label %209

209:                                              ; preds = %204, %192
  %210 = load i32, i32* %18, align 4
  %211 = trunc i32 %210 to i16
  %212 = load i16*, i16** %6, align 8
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i16, i16* %212, i64 %216
  store i16 %211, i16* %217, align 2
  br label %218

218:                                              ; preds = %209
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %187

221:                                              ; preds = %187
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 16
  store i32 %224, i32* %14, align 4
  br label %20

225:                                              ; preds = %20
  ret void
}

declare dso_local i32 @check_endianness(...) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @FASTDEF(i32) #1

declare dso_local i32 @FAST_SCALED_FLOAT_TO_INT(i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
