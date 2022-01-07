; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_ssstars.c_render.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_ssstars.c_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { float, float, i64, float, float }

@Settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE = common dso_local global i32 0, align 4
@fAngle = common dso_local global float 0.000000e+00, align 4
@GL_QUADS = common dso_local global i32 0, align 4
@Vertex = common dso_local global %struct.TYPE_3__* null, align 8
@NEAR_PLANE = common dso_local global i64 0, align 8
@GAP = common dso_local global i64 0, align 8
@FAR_PLANE = common dso_local global i64 0, align 8
@RAND_MAX = common dso_local global float 0.000000e+00, align 4
@FIELD_WIDTH = common dso_local global float 0.000000e+00, align 4
@FIELD_HEIGHT = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Settings, i32 0, i32 2), align 8
  %7 = sitofp i64 %6 to float
  %8 = fdiv float %7, 1.000000e+02
  store float %8, float* %3, align 4
  %9 = load i32, i32* @GL_TEXTURE_2D, align 4
  %10 = call i32 @glEnable(i32 %9)
  %11 = load i32, i32* @GL_SRC_ALPHA, align 4
  %12 = load i32, i32* @GL_ONE, align 4
  %13 = call i32 @glBlendFunc(i32 %11, i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Settings, i32 0, i32 0), align 8
  switch i32 %14, label %33 [
    i32 129, label %15
    i32 128, label %21
  ]

15:                                               ; preds = %0
  %16 = load float, float* %3, align 4
  %17 = load float, float* @fAngle, align 4
  %18 = fadd float %17, %16
  store float %18, float* @fAngle, align 4
  %19 = load float, float* @fAngle, align 4
  %20 = call i32 @glRotatef(float %19, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  br label %33

21:                                               ; preds = %0
  %22 = load float, float* %3, align 4
  %23 = fdiv float %22, 7.500000e+01
  %24 = load float, float* @fAngle, align 4
  %25 = fadd float %24, %23
  store float %25, float* @fAngle, align 4
  %26 = load float, float* @fAngle, align 4
  %27 = call i32 @cos(float %26)
  %28 = sitofp i32 %27 to double
  %29 = fmul double 5.000000e+01, %28
  %30 = fptrunc double %29 to float
  store float %30, float* %2, align 4
  %31 = load float, float* %2, align 4
  %32 = call i32 @glRotatef(float %31, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  br label %33

33:                                               ; preds = %0, %21, %15
  %34 = call i32 @glColor3ub(i32 255, i32 255, i32 255)
  %35 = load i32, i32* @GL_QUADS, align 4
  %36 = call i32 @glBegin(i32 %35)
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %201, %33
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Settings, i32 0, i32 1), align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %204

41:                                               ; preds = %37
  %42 = call i32 @glTexCoord2f(float 0.000000e+00, float 0.000000e+00)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %44 = load i32, i32* %1, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load float, float* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %50 = load i32, i32* %1, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %56 = load i32, i32* %1, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @glVertex3f(float %48, float %54, i64 %60)
  %62 = call i32 @glTexCoord2f(float 1.000000e+00, float 0.000000e+00)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %64 = load i32, i32* %1, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load float, float* %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %70 = load i32, i32* %1, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %76 = load i32, i32* %1, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @glVertex3f(float %68, float %74, i64 %80)
  %82 = call i32 @glTexCoord2f(float 1.000000e+00, float 1.000000e+00)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %84 = load i32, i32* %1, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load float, float* %87, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %90 = load i32, i32* %1, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load float, float* %93, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %96 = load i32, i32* %1, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @glVertex3f(float %88, float %94, i64 %100)
  %102 = call i32 @glTexCoord2f(float 0.000000e+00, float 1.000000e+00)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %104 = load i32, i32* %1, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load float, float* %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %110 = load i32, i32* %1, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  %114 = load float, float* %113, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %116 = load i32, i32* %1, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @glVertex3f(float %108, float %114, i64 %120)
  %122 = load float, float* %3, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %124 = load i32, i32* %1, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = sitofp i64 %128 to float
  %130 = fadd float %129, %122
  %131 = fptosi float %130 to i64
  store i64 %131, i64* %127, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %133 = load i32, i32* %1, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @NEAR_PLANE, align 8
  %139 = load i64, i64* @GAP, align 8
  %140 = add nsw i64 %138, %139
  %141 = icmp sgt i64 %137, %140
  br i1 %141, label %151, label %142

142:                                              ; preds = %41
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %144 = load i32, i32* %1, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @FAR_PLANE, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %200

151:                                              ; preds = %142, %41
  %152 = call i64 (...) @rand()
  %153 = sitofp i64 %152 to float
  %154 = load float, float* @RAND_MAX, align 4
  %155 = fdiv float %153, %154
  %156 = fsub float %155, 5.000000e-01
  %157 = load float, float* @FIELD_WIDTH, align 4
  %158 = fmul float %156, %157
  store float %158, float* %4, align 4
  %159 = call i64 (...) @rand()
  %160 = sitofp i64 %159 to float
  %161 = load float, float* @RAND_MAX, align 4
  %162 = fdiv float %160, %161
  %163 = fsub float %162, 5.000000e-01
  %164 = load float, float* @FIELD_HEIGHT, align 4
  %165 = fmul float %163, %164
  store float %165, float* %5, align 4
  %166 = load float, float* %4, align 4
  %167 = fadd float -1.000000e+00, %166
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %169 = load i32, i32* %1, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store float %167, float* %172, align 8
  %173 = load float, float* %5, align 4
  %174 = fadd float -1.000000e+00, %173
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %176 = load i32, i32* %1, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  store float %174, float* %179, align 4
  %180 = load float, float* %4, align 4
  %181 = fadd float 1.000000e+00, %180
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %183 = load i32, i32* %1, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  store float %181, float* %186, align 8
  %187 = load float, float* %5, align 4
  %188 = fadd float 1.000000e+00, %187
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %190 = load i32, i32* %1, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 4
  store float %188, float* %193, align 4
  %194 = load i64, i64* @FAR_PLANE, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vertex, align 8
  %196 = load i32, i32* %1, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  store i64 %194, i64* %199, align 8
  br label %200

200:                                              ; preds = %151, %142
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %1, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %1, align 4
  br label %37

204:                                              ; preds = %37
  %205 = call i32 (...) @glEnd()
  %206 = load i32, i32* @GL_TEXTURE_2D, align 4
  %207 = call i32 @glDisable(i32 %206)
  ret void
}

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glRotatef(float, float, float, float) #1

declare dso_local i32 @cos(float) #1

declare dso_local i32 @glColor3ub(i32, i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glTexCoord2f(float, float) #1

declare dso_local i32 @glVertex3f(float, float, i64) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
