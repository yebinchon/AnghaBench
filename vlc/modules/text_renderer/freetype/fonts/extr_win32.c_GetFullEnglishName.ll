; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_win32.c_GetFullEnglishName.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_win32.c_GetFullEnglishName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_3__*)* @GetFullEnglishName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @GetFullEnglishName(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i64* null, i64** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32* @CreateFontIndirect(i32* %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i64* null, i64** %2, align 8
  br label %107

22:                                               ; preds = %1
  %23 = call i32* @CreateCompatibleDC(i32* null)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @DeleteObject(i32* %27)
  store i64* null, i64** %2, align 8
  br label %107

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @SelectObject(i32* %30, i32* %31)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %8, align 8
  %35 = call i32 @ntoh32(i32 1851878757)
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @GetFontData(i32* %36, i32 %37, i32 0, i32* null, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %96

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  %44 = call i32* @malloc(i32 %43)
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %96

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @GetFontData(i32* %49, i32 %50, i32 0, i32* %51, i32 %52)
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %96

56:                                               ; preds = %48
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @GetSfntNameString(i32* %57, i32 %58, i32 3, i32 1, i32 4, i32 1033, i32** %11, i32* %12)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %96

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i64* @vlc_alloc(i32 %66, i32 8)
  store i64* %67, i64** %14, align 8
  %68 = load i64*, i64** %14, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %96

71:                                               ; preds = %62
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %15, align 4
  %79 = mul nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = call i64 @U16_AT(i32* %81)
  %83 = load i64*, i64** %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %72

90:                                               ; preds = %72
  %91 = load i64*, i64** %14, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 0, i64* %94, align 8
  %95 = load i64*, i64** %14, align 8
  store i64* %95, i64** %7, align 8
  br label %96

96:                                               ; preds = %90, %70, %61, %55, %47, %41
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @free(i32* %97)
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @SelectObject(i32* %99, i32* %100)
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @DeleteObject(i32* %102)
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @DeleteDC(i32* %104)
  %106 = load i64*, i64** %7, align 8
  store i64* %106, i64** %2, align 8
  br label %107

107:                                              ; preds = %96, %26, %21
  %108 = load i64*, i64** %2, align 8
  ret i64* %108
}

declare dso_local i32* @CreateFontIndirect(i32*) #1

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @SelectObject(i32*, i32*) #1

declare dso_local i32 @ntoh32(i32) #1

declare dso_local i32 @GetFontData(i32*, i32, i32, i32*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @GetSfntNameString(i32*, i32, i32, i32, i32, i32, i32**, i32*) #1

declare dso_local i64* @vlc_alloc(i32, i32) #1

declare dso_local i64 @U16_AT(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @DeleteDC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
