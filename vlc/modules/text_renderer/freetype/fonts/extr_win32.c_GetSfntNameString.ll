; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_win32.c_GetSfntNameString.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_win32.c_GetSfntNameString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i64, i64, i64, i32**, i32*)* @GetSfntNameString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetSfntNameString(i32* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32** %6, i32*** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = call i32 @U16_AT(i32* %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = call i32 @U16_AT(i32* %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %19, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %20, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  store i32* %36, i32** %21, align 8
  store i32 12, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %37

37:                                               ; preds = %85, %8
  %38 = load i32, i32* %23, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %37
  %42 = load i32*, i32** %21, align 8
  %43 = load i32, i32* %23, align 4
  %44 = mul nsw i32 %43, 12
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32*, i32** %20, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i64 @GetSfntNameEntry(i32* %46, i32* %47, i32* %51, %struct.TYPE_3__* %24)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %55, i32* %9, align 4
  br label %90

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %17, align 8
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load i32**, i32*** %16, align 8
  store i32* %81, i32** %82, align 8
  %83 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %83, i32* %9, align 4
  br label %90

84:                                               ; preds = %71, %66, %61, %56
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %23, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %23, align 4
  br label %37

88:                                               ; preds = %37
  %89 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %88, %76, %54
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @U16_AT(i32*) #1

declare dso_local i64 @GetSfntNameEntry(i32*, i32*, i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
