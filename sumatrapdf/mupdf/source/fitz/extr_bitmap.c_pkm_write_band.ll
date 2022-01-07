; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bitmap.c_pkm_write_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bitmap.c_pkm_write_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"wrong number of color components in bitmap\00", align 1
@pkm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i32, i32, i8*)* @pkm_write_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkm_write_band(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %13, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %6
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %40 = call i32 @fz_throw(i32* %38, i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %6
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %18, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %18, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %14, align 4
  %53 = ashr i32 %52, 1
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %93, %47
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %18, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %19, align 4
  br label %62

62:                                               ; preds = %65, %59
  %63 = load i32, i32* %19, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i32*, i32** @pkm, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %12, align 8
  %71 = load i8, i8* %69, align 1
  %72 = zext i8 %71 to i32
  %73 = mul nsw i32 8, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  %76 = call i32 @fz_write_data(i32* %66, i32* %67, i32* %75, i32 8)
  %77 = load i32, i32* %19, align 4
  %78 = sub nsw i32 %77, 2
  store i32 %78, i32* %19, align 4
  br label %62

79:                                               ; preds = %62
  %80 = load i32, i32* %19, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** @pkm, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = mul nsw i32 8, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = call i32 @fz_write_data(i32* %83, i32* %84, i32* %91, i32 4)
  br label %93

93:                                               ; preds = %82, %79
  %94 = load i32, i32* %17, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %12, align 8
  br label %55

98:                                               ; preds = %55
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_write_data(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
