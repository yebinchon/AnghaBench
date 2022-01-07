; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_blit_sharp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_blit_sharp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, %struct.TYPE_3__*, i8*, i32 (i8*, i32, i32, i8*, i32, i32*)**, i32*)* @blit_sharp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blit_sharp(i32 %0, i32 %1, i32 %2, i32* %3, %struct.TYPE_3__* %4, i8* %5, i32 (i8*, i32, i32, i8*, i32, i32*)** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32 (i8*, i32, i32, i8*, i32, i32*)**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 (i8*, i32, i32, i8*, i32, i32*)** %6, i32 (i8*, i32, i32, i8*, i32, i32*)*** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @fz_clampi(i32 %22, i32 %25, i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = call i32 @fz_clampi(i32 %35, i32 %38, i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %68, %71
  %73 = add nsw i32 %63, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %54, i64 %74
  store i8* %75, i8** %17, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %51
  %79 = load i32 (i8*, i32, i32, i8*, i32, i32*)**, i32 (i8*, i32, i32, i8*, i32, i32*)*** %15, align 8
  %80 = load i32 (i8*, i32, i32, i8*, i32, i32*)*, i32 (i8*, i32, i32, i8*, i32, i32*)** %79, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i8*, i8** %14, align 8
  %89 = load i32, i32* %18, align 4
  %90 = load i32*, i32** %16, align 8
  %91 = call i32 %80(i8* %81, i32 %84, i32 %87, i8* %88, i32 %89, i32* %90)
  br label %98

92:                                               ; preds = %51
  %93 = load i8*, i8** %17, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @memset(i8* %93, i32 255, i32 %96)
  br label %98

98:                                               ; preds = %92, %78
  br label %99

99:                                               ; preds = %98, %8
  ret void
}

declare dso_local i32 @fz_clampi(i32, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
