; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_SetupQuadSphere.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_SetupQuadSphere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { float, float }
%struct.TYPE_7__ = type { float, float, float }
%struct.TYPE_10__ = type { float, float }

@nbLatBands = common dso_local global i32 0, align 4
@M_PI = common dso_local global i64 0, align 8
@nbLonBands = common dso_local global i32 0, align 4
@SPHERE_RADIUS = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, %struct.TYPE_10__*, i32*)* @SetupQuadSphere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetupQuadSphere(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32* %3, i32** %8, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @RECTWidth(i32 %29)
  %31 = sitofp i64 %30 to float
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load float, float* %33, align 4
  %35 = fdiv float %31, %34
  store float %35, float* %9, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @RECTHeight(i32 %37)
  %39 = sitofp i64 %38 to float
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = fdiv float %39, %42
  store float %43, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %145, %4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @nbLatBands, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %148

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = uitofp i32 %49 to float
  %51 = load i64, i64* @M_PI, align 8
  %52 = sitofp i64 %51 to float
  %53 = fmul float %50, %52
  %54 = load i32, i32* @nbLatBands, align 4
  %55 = uitofp i32 %54 to float
  %56 = fdiv float %53, %55
  store float %56, float* %12, align 4
  %57 = load float, float* %12, align 4
  %58 = call i32 @sincosf(float %57, float* %13, float* %14)
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %141, %48
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @nbLonBands, align 4
  %62 = icmp ule i32 %60, %61
  br i1 %62, label %63, label %144

63:                                               ; preds = %59
  %64 = load i32, i32* %15, align 4
  %65 = mul i32 %64, 2
  %66 = uitofp i32 %65 to float
  %67 = load i64, i64* @M_PI, align 8
  %68 = sitofp i64 %67 to float
  %69 = fmul float %66, %68
  %70 = load i32, i32* @nbLonBands, align 4
  %71 = uitofp i32 %70 to float
  %72 = fdiv float %69, %71
  store float %72, float* %16, align 4
  %73 = load float, float* %16, align 4
  %74 = call i32 @sincosf(float %73, float* %17, float* %18)
  %75 = load float, float* %18, align 4
  %76 = load float, float* %13, align 4
  %77 = fmul float %75, %76
  store float %77, float* %19, align 4
  %78 = load float, float* %14, align 4
  store float %78, float* %20, align 4
  %79 = load float, float* %17, align 4
  %80 = load float, float* %13, align 4
  %81 = fmul float %79, %80
  store float %81, float* %21, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @nbLonBands, align 4
  %84 = add i32 %83, 1
  %85 = mul i32 %82, %84
  %86 = load i32, i32* %15, align 4
  %87 = add i32 %85, %86
  store i32 %87, i32* %22, align 4
  %88 = load float, float* @SPHERE_RADIUS, align 4
  %89 = load float, float* %19, align 4
  %90 = fmul float %88, %89
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = load i32, i32* %22, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store float %90, float* %96, align 4
  %97 = load float, float* @SPHERE_RADIUS, align 4
  %98 = load float, float* %20, align 4
  %99 = fmul float %97, %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = load i32, i32* %22, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store float %99, float* %105, align 4
  %106 = load float, float* @SPHERE_RADIUS, align 4
  %107 = load float, float* %21, align 4
  %108 = fmul float %106, %107
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = load i32, i32* %22, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  store float %108, float* %114, align 4
  %115 = load float, float* %9, align 4
  %116 = load i32, i32* %15, align 4
  %117 = uitofp i32 %116 to float
  %118 = fmul float %115, %117
  %119 = load i32, i32* @nbLonBands, align 4
  %120 = uitofp i32 %119 to float
  %121 = fdiv float %118, %120
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = load i32, i32* %22, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store float %121, float* %127, align 4
  %128 = load float, float* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = uitofp i32 %129 to float
  %131 = fmul float %128, %130
  %132 = load i32, i32* @nbLatBands, align 4
  %133 = uitofp i32 %132 to float
  %134 = fdiv float %131, %133
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = load i32, i32* %22, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store float %134, float* %140, align 4
  br label %141

141:                                              ; preds = %63
  %142 = load i32, i32* %15, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %15, align 4
  br label %59

144:                                              ; preds = %59
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %11, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %44

148:                                              ; preds = %44
  store i32 0, i32* %23, align 4
  br label %149

149:                                              ; preds = %218, %148
  %150 = load i32, i32* %23, align 4
  %151 = load i32, i32* @nbLatBands, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %221

153:                                              ; preds = %149
  store i32 0, i32* %24, align 4
  br label %154

154:                                              ; preds = %214, %153
  %155 = load i32, i32* %24, align 4
  %156 = load i32, i32* @nbLonBands, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %217

158:                                              ; preds = %154
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* @nbLonBands, align 4
  %161 = add i32 %160, 1
  %162 = mul i32 %159, %161
  %163 = load i32, i32* %24, align 4
  %164 = add i32 %162, %163
  store i32 %164, i32* %25, align 4
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* @nbLonBands, align 4
  %167 = add i32 %165, %166
  %168 = add i32 %167, 1
  store i32 %168, i32* %26, align 4
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* @nbLatBands, align 4
  %171 = mul i32 %169, %170
  %172 = load i32, i32* %24, align 4
  %173 = add i32 %171, %172
  %174 = mul i32 %173, 3
  %175 = mul i32 %174, 2
  store i32 %175, i32* %27, align 4
  %176 = load i32, i32* %25, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %27, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %25, align 4
  %182 = add i32 %181, 1
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* %27, align 4
  %185 = add i32 %184, 1
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %182, i32* %187, align 4
  %188 = load i32, i32* %26, align 4
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* %27, align 4
  %191 = add i32 %190, 2
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %188, i32* %193, align 4
  %194 = load i32, i32* %26, align 4
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %27, align 4
  %197 = add i32 %196, 3
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %194, i32* %199, align 4
  %200 = load i32, i32* %25, align 4
  %201 = add i32 %200, 1
  %202 = load i32*, i32** %8, align 8
  %203 = load i32, i32* %27, align 4
  %204 = add i32 %203, 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  store i32 %201, i32* %206, align 4
  %207 = load i32, i32* %26, align 4
  %208 = add i32 %207, 1
  %209 = load i32*, i32** %8, align 8
  %210 = load i32, i32* %27, align 4
  %211 = add i32 %210, 5
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  store i32 %208, i32* %213, align 4
  br label %214

214:                                              ; preds = %158
  %215 = load i32, i32* %24, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %24, align 4
  br label %154

217:                                              ; preds = %154
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %23, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %23, align 4
  br label %149

221:                                              ; preds = %149
  ret void
}

declare dso_local i64 @RECTWidth(i32) #1

declare dso_local i64 @RECTHeight(i32) #1

declare dso_local i32 @sincosf(float, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
