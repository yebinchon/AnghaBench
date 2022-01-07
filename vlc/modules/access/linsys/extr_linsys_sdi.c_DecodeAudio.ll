; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_DecodeAudio.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_DecodeAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { float, float, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no audio %u/%u\00", align 1
@SAMPLERATE_TOLERANCE = common dso_local global float 0.000000e+00, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"left samplerate out of tolerance for audio %u/%u (%u vs. %u)\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"right samplerate out of tolerance for audio %u/%u (%u vs. %u)\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @DecodeAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeAudio(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %3, align 4
  br label %222

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 8
  %22 = fcmp une float %21, 0.000000e+00
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = fcmp une float %26, 0.000000e+00
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @msg_Warn(%struct.TYPE_11__* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %3, align 4
  br label %222

38:                                               ; preds = %23, %18
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sitofp i32 %44 to float
  %46 = load float, float* @SAMPLERATE_TOLERANCE, align 4
  %47 = fsub float 1.000000e+00, %46
  %48 = fmul float %45, %47
  %49 = fcmp olt float %41, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load float, float* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sitofp i32 %56 to float
  %58 = load float, float* @SAMPLERATE_TOLERANCE, align 4
  %59 = fadd float 1.000000e+00, %58
  %60 = fmul float %57, %59
  %61 = fcmp ogt float %53, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %50, %38
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load float, float* %71, align 8
  %73 = fpext float %72 to double
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @msg_Warn(%struct.TYPE_11__* %63, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, double %73, i32 %76)
  %78 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %78, i32* %3, align 4
  br label %222

79:                                               ; preds = %50
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load float, float* %81, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sitofp i32 %85 to float
  %87 = load float, float* @SAMPLERATE_TOLERANCE, align 4
  %88 = fsub float 1.000000e+00, %87
  %89 = fmul float %86, %88
  %90 = fcmp olt float %82, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %79
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sitofp i32 %97 to float
  %99 = load float, float* @SAMPLERATE_TOLERANCE, align 4
  %100 = fadd float 1.000000e+00, %99
  %101 = fmul float %98, %100
  %102 = fcmp ogt float %94, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %91, %79
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load float, float* %112, align 4
  %114 = fpext float %113 to double
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @msg_Warn(%struct.TYPE_11__* %104, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %110, double %114, i32 %117)
  %119 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %119, i32* %3, align 4
  br label %222

120:                                              ; preds = %91
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = mul i64 %125, 2
  %127 = trunc i64 %126 to i32
  %128 = call %struct.TYPE_13__* @block_Alloc(i32 %127)
  store %struct.TYPE_13__* %128, %struct.TYPE_13__** %7, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %130 = icmp ne %struct.TYPE_13__* %129, null
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %120
  %136 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %136, i32* %3, align 4
  br label %222

137:                                              ; preds = %120
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @vlc_tick_from_samples(i32 %143, i32 %146)
  %148 = add nsw i64 %140, %147
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  store i64 %148, i64* %152, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  store i32* %156, i32** %8, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load float, float* %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sitofp i32 %162 to float
  %164 = fcmp oeq float %159, %163
  br i1 %164, label %165, label %187

165:                                              ; preds = %137
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load float, float* %167, align 4
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = sitofp i32 %171 to float
  %173 = fcmp oeq float %168, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %165
  %175 = load i32*, i32** %8, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = mul i64 %182, 4
  %184 = mul i64 %183, 2
  %185 = trunc i64 %184 to i32
  %186 = call i32 @memcpy(i32* %175, i32* %178, i32 %185)
  br label %212

187:                                              ; preds = %165, %137
  %188 = load i32*, i32** %8, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load float, float* %196, align 8
  %198 = call i32 @ResampleAudio(i32* %188, i32* %191, i32 %194, float %197)
  %199 = load i32*, i32** %8, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = load float, float* %209, align 4
  %211 = call i32 @ResampleAudio(i32* %200, i32* %204, i32 %207, float %210)
  br label %212

212:                                              ; preds = %187, %174
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %220 = call i32 @es_out_Send(i32 %215, i32 %218, %struct.TYPE_13__* %219)
  %221 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %212, %135, %103, %62, %28, %16
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*, i32, i32, ...) #1

declare dso_local %struct.TYPE_13__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlc_tick_from_samples(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ResampleAudio(i32*, i32*, i32, float) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
