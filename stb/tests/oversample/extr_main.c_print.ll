; ModuleID = '/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_print.c'
source_filename = "/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@font_tex = common dso_local global i32 0, align 4
@GL_QUADS = common dso_local global i32 0, align 4
@chardata = common dso_local global i32* null, align 8
@BITMAP_W = common dso_local global i32 0, align 4
@BITMAP_H = common dso_local global i32 0, align 4
@integer_align = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(float %0, float %1, i32 %2, i8* %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @GL_TEXTURE_2D, align 4
  %11 = call i32 @glEnable(i32 %10)
  %12 = load i32, i32* @GL_TEXTURE_2D, align 4
  %13 = load i32, i32* @font_tex, align 4
  %14 = call i32 @glBindTexture(i32 %12, i32 %13)
  %15 = load i32, i32* @GL_QUADS, align 4
  %16 = call i32 @glBegin(i32 %15)
  br label %17

17:                                               ; preds = %38, %4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load i32*, i32** @chardata, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BITMAP_W, align 4
  %28 = load i32, i32* @BITMAP_H, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %38

36:                                               ; preds = %21
  %37 = load i32, i32* @integer_align, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ 0, %35 ], [ %37, %36 ]
  %40 = call i32 @stbtt_GetPackedQuad(i32 %26, i32 %27, i32 %28, i32 %32, float* %5, float* %6, %struct.TYPE_3__* %9, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @drawBoxTC(i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56)
  br label %17

58:                                               ; preds = %17
  %59 = call i32 (...) @glEnd()
  ret void
}

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @stbtt_GetPackedQuad(i32, i32, i32, i32, float*, float*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @drawBoxTC(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
