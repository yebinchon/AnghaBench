; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/butterflies/extr_butterflies.c_Display.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/butterflies/extr_butterflies.c_Display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, float, float, float, float, i64, i64, i32, i32 }

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@texture = common dso_local global i32* null, align 8
@obj = common dso_local global %struct.TYPE_2__* null, align 8
@dRotate = common dso_local global i64 0, align 8
@GL_TRIANGLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Display() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %3 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @glClear(i32 %4)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %161, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 50
  br i1 %8, label %9, label %164

9:                                                ; preds = %6
  %10 = call i32 (...) @glLoadIdentity()
  %11 = load i32, i32* @GL_TEXTURE_2D, align 4
  %12 = load i32*, i32** @texture, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %12, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @glBindTexture(i32 %11, i32 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load float, float* %32, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @glTranslatef(i32 %27, float %33, i32 %39)
  %41 = call i32 @glRotatef(float 4.500000e+01, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %42 = load i64, i64* @dRotate, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %9
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load float, float* %49, align 4
  %51 = call i32 @glRotatef(float %50, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  br label %52

52:                                               ; preds = %44, %9
  %53 = load i32, i32* @GL_TRIANGLES, align 4
  %54 = call i32 @glBegin(i32 %53)
  %55 = call i32 @glTexCoord2f(float 1.000000e+00, float 1.000000e+00)
  %56 = call i32 @glVertex3f(float 1.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %57 = call i32 @glTexCoord2f(float 0.000000e+00, float 1.000000e+00)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load float, float* %62, align 8
  %64 = call i32 @glVertex3f(float -1.000000e+00, float 1.000000e+00, float %63)
  %65 = call i32 @glTexCoord2f(float 0.000000e+00, float 0.000000e+00)
  %66 = call i32 @glVertex3f(float -1.000000e+00, float -1.000000e+00, float 0.000000e+00)
  %67 = call i32 @glTexCoord2f(float 1.000000e+00, float 1.000000e+00)
  %68 = call i32 @glVertex3f(float 1.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %69 = call i32 @glTexCoord2f(float 0.000000e+00, float 0.000000e+00)
  %70 = call i32 @glVertex3f(float -1.000000e+00, float -1.000000e+00, float 0.000000e+00)
  %71 = call i32 @glTexCoord2f(float 1.000000e+00, float 0.000000e+00)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load float, float* %76, align 8
  %78 = call i32 @glVertex3f(float 1.000000e+00, float -1.000000e+00, float %77)
  %79 = call i32 (...) @glEnd()
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = sitofp i64 %85 to float
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load float, float* %91, align 8
  %93 = fsub float %92, %86
  store float %93, float* %91, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = sitofp i64 %99 to float
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load float, float* %105, align 4
  %107 = fadd float %106, %100
  store float %107, float* %105, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 4
  %113 = load float, float* %112, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load float, float* %118, align 8
  %120 = fadd float %119, %113
  store float %120, float* %118, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load float, float* %125, align 8
  %127 = fcmp olt float %126, -1.800000e+01
  br i1 %127, label %128, label %131

128:                                              ; preds = %52
  %129 = load i32, i32* %1, align 4
  %130 = call i32 @SetObject(i32 %129)
  br label %131

131:                                              ; preds = %128, %52
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %133 = load i32, i32* %1, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 3
  %137 = load float, float* %136, align 8
  %138 = fcmp ogt float %137, 1.000000e+00
  br i1 %138, label %147, label %139

139:                                              ; preds = %131
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = load float, float* %144, align 8
  %146 = fcmp olt float %145, -1.000000e+00
  br i1 %146, label %147, label %160

147:                                              ; preds = %139, %131
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %149 = load i32, i32* %1, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 4
  %153 = load float, float* %152, align 4
  %154 = fneg float %153
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 4
  store float %154, float* %159, align 4
  br label %160

160:                                              ; preds = %147, %139
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %1, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %1, align 4
  br label %6

164:                                              ; preds = %6
  %165 = call i32 @Sleep(i32 15)
  %166 = call i32 (...) @glFlush()
  ret void
}

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTranslatef(i32, float, i32) #1

declare dso_local i32 @glRotatef(float, float, float, float) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glTexCoord2f(float, float) #1

declare dso_local i32 @glVertex3f(float, float, float) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @SetObject(i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @glFlush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
