; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_fz_add_css_font_faces.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_fz_add_css_font_faces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i64 }

@.str = private unnamed_addr constant [11 x i8] c"@font-face\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_add_css_font_faces(i32* %0, i32* %1, i32* %2, i8* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %11, align 8
  br label %16

16:                                               ; preds = %59, %5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %63

19:                                               ; preds = %16
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %58, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %12, align 8
  br label %30

30:                                               ; preds = %53, %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @strcmp(i64 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @fz_add_css_font_face(i32* %45, i32* %46, i32* %47, i8* %48, i32 %51)
  br label %57

53:                                               ; preds = %38, %33
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %12, align 8
  br label %30

57:                                               ; preds = %44, %30
  br label %58

58:                                               ; preds = %57, %19
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %11, align 8
  br label %16

63:                                               ; preds = %16
  ret void
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @fz_add_css_font_face(i32*, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
