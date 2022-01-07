; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_dolby.c_DoWork.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_dolby.c_DoWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_11__*, %struct.TYPE_13__*)* @DoWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @DoWork(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %5, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to float*
  store float* %23, float** %6, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = call i64 @aout_FormatNbChannels(i32* %29)
  store i64 %30, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = mul i64 4, %31
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call %struct.TYPE_13__* @block_Alloc(i32 %35)
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %11, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %2
  br label %225

40:                                               ; preds = %2
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to float*
  store float* %44, float** %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load float*, float** %12, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memset(float* %63, i32 0, i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %40
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %9, align 8
  br label %75

75:                                               ; preds = %72, %40
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %88, %83
  store i64 0, i64* %10, align 8
  br label %92

92:                                               ; preds = %221, %91
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %224

96:                                               ; preds = %92
  %97 = load float*, float** %6, align 8
  %98 = load i64, i64* %10, align 8
  %99 = mul i64 %98, 2
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  store float %101, float* %13, align 4
  %102 = load float*, float** %6, align 8
  %103 = load i64, i64* %10, align 8
  %104 = mul i64 %103, 2
  %105 = add i64 %104, 1
  %106 = getelementptr inbounds float, float* %102, i64 %105
  %107 = load float, float* %106, align 4
  store float %107, float* %14, align 4
  %108 = load float, float* %13, align 4
  %109 = load float, float* %14, align 4
  %110 = fsub float %108, %109
  %111 = load i64, i64* %9, align 8
  %112 = uitofp i64 %111 to float
  %113 = fdiv float %110, %112
  store float %113, float* %15, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %96
  %119 = load float, float* %13, align 4
  %120 = load float, float* %14, align 4
  %121 = fadd float %119, %120
  store float %121, float* %16, align 4
  %122 = load float, float* %16, align 4
  %123 = fdiv float %122, 2.000000e+00
  %124 = load float, float* %13, align 4
  %125 = fsub float %124, %123
  store float %125, float* %13, align 4
  %126 = load float, float* %16, align 4
  %127 = fdiv float %126, 2.000000e+00
  %128 = load float, float* %14, align 4
  %129 = fsub float %128, %127
  store float %129, float* %14, align 4
  %130 = load float, float* %16, align 4
  %131 = load float*, float** %12, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %8, align 8
  %134 = mul i64 %132, %133
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %134, %137
  %139 = getelementptr inbounds float, float* %131, i64 %138
  store float %130, float* %139, align 4
  br label %140

140:                                              ; preds = %118, %96
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp uge i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load float, float* %13, align 4
  %147 = load float*, float** %12, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %8, align 8
  %150 = mul i64 %148, %149
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %150, %153
  %155 = getelementptr inbounds float, float* %147, i64 %154
  store float %146, float* %155, align 4
  br label %156

156:                                              ; preds = %145, %140
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp uge i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load float, float* %14, align 4
  %163 = load float*, float** %12, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* %8, align 8
  %166 = mul i64 %164, %165
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %166, %169
  %171 = getelementptr inbounds float, float* %163, i64 %170
  store float %162, float* %171, align 4
  br label %172

172:                                              ; preds = %161, %156
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp sge i64 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %172
  %178 = load float, float* %15, align 4
  %179 = load float*, float** %12, align 8
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %8, align 8
  %182 = mul i64 %180, %181
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %182, %185
  %187 = getelementptr inbounds float, float* %179, i64 %186
  store float %178, float* %187, align 4
  br label %188

188:                                              ; preds = %177, %172
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp sge i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %188
  %194 = load float, float* %15, align 4
  %195 = load float*, float** %12, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %8, align 8
  %198 = mul i64 %196, %197
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %198, %201
  %203 = getelementptr inbounds float, float* %195, i64 %202
  store float %194, float* %203, align 4
  br label %204

204:                                              ; preds = %193, %188
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp sge i64 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load float, float* %15, align 4
  %211 = load float*, float** %12, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load i64, i64* %8, align 8
  %214 = mul i64 %212, %213
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %214, %217
  %219 = getelementptr inbounds float, float* %211, i64 %218
  store float %210, float* %219, align 4
  br label %220

220:                                              ; preds = %209, %204
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %10, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %10, align 8
  br label %92

224:                                              ; preds = %92
  br label %225

225:                                              ; preds = %224, %39
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %227 = call i32 @block_Release(%struct.TYPE_13__* %226)
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  ret %struct.TYPE_13__* %228
}

declare dso_local i64 @aout_FormatNbChannels(i32*) #1

declare dso_local %struct.TYPE_13__* @block_Alloc(i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
