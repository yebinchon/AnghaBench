; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_cursoricon.c_check_DrawIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_cursoricon.c_check_DrawIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM_CXICON = common dso_local global i32 0, align 4
@SM_CYICON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [130 x i8] c"Overlaying Mask %d on Color %06X with DrawIcon. Expected a close match to %06X (modern), or %06X (legacy). Got %06X from line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [113 x i8] c"Overlaying Mask %d on Color %06X with DrawIcon. Expected unchanged background color %06X. Got %06X from line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32)* @check_DrawIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_DrawIcon(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @create_test_icon(i32 %19, i32 1, i32 1, i32 %20, i32 %21, i32* %11, i32 4)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %8
  br label %114

26:                                               ; preds = %8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @SetPixelV(i32 %27, i64 0, i64 0, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SM_CXICON, align 4
  %32 = call i64 @GetSystemMetrics(i32 %31)
  %33 = sub nsw i64 %32, 1
  %34 = load i32, i32* @SM_CYICON, align 4
  %35 = call i64 @GetSystemMetrics(i32 %34)
  %36 = sub nsw i64 %35, 1
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @SetPixelV(i32 %30, i64 %33, i64 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SM_CXICON, align 4
  %41 = call i64 @GetSystemMetrics(i32 %40)
  %42 = load i32, i32* @SM_CYICON, align 4
  %43 = call i64 @GetSystemMetrics(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @SetPixelV(i32 %39, i64 %41, i64 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @DrawIcon(i32 %46, i32 0, i32 0, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @GetPixel(i32 %49, i64 0, i64 0)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @color_match(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %26
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @color_match(i32 %56, i32 %57)
  %59 = call i64 @broken(i32 %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %55, %26
  %62 = phi i1 [ true, %26 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @ok(i32 %63, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @SM_CXICON, align 4
  %73 = call i64 @GetSystemMetrics(i32 %72)
  %74 = sub nsw i64 %73, 1
  %75 = load i32, i32* @SM_CYICON, align 4
  %76 = call i64 @GetSystemMetrics(i32 %75)
  %77 = sub nsw i64 %76, 1
  %78 = call i32 @GetPixel(i32 %71, i64 %74, i64 %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @color_match(i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %61
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @color_match(i32 %84, i32 %85)
  %87 = call i64 @broken(i32 %86)
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %83, %61
  %90 = phi i1 [ true, %61 ], [ %88, %83 ]
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @ok(i32 %91, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @SM_CXICON, align 4
  %101 = call i64 @GetSystemMetrics(i32 %100)
  %102 = load i32, i32* @SM_CYICON, align 4
  %103 = call i64 @GetSystemMetrics(i32 %102)
  %104 = call i32 @GetPixel(i32 %99, i64 %101, i64 %103)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @color_match(i32 %105, i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @ok(i32 %107, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %89, %25
  ret void
}

declare dso_local i32 @create_test_icon(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SetPixelV(i32, i64, i64, i32) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32 @DrawIcon(i32, i32, i32, i32) #1

declare dso_local i32 @GetPixel(i32, i64, i64) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @color_match(i32, i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
