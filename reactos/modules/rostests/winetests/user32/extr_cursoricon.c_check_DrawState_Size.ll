; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_cursoricon.c_check_DrawState_Size.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_cursoricon.c_check_DrawState_Size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DST_ICON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [190 x i8] c"DrawState failed to draw a 1x1 Icon in the correct size, independent of the width and height settings passed to it, for Icon with: Overlaying Mask %d on Color %06X with flags %08X. Line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [215 x i8] c"DrawState failed to draw a 1x1 Icon in the correct size, if the width and height parameters passed to it are bigger than the real Icon size, for Icon with: Overlaying Mask %d on Color %06X with flags %08X. Line %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [186 x i8] c"DrawState failed to draw a 1x1 Icon in the correct size, if the width and height parameters passed to it are 0, for Icon with: Overlaying Mask %d on Color %06X with flags %08X. Line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @check_DrawState_Size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_DrawState_Size(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @create_test_icon(i32 %19, i32 1, i32 1, i32 %20, i32 %21, i32* %10, i32 4)
  store i64 %22, i64* %18, align 8
  store i32 16777215, i32* %16, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %16, align 4
  %25 = call i32 @SetPixelV(i32 %23, i32 0, i32 0, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %16, align 4
  %28 = call i32 @SetPixelV(i32 %26, i32 2, i32 2, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i64, i64* %18, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @DST_ICON, align 4
  %34 = load i32, i32* %13, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @DrawStateA(i32 %29, i32 %30, i32* null, i32 %32, i32 0, i32 1, i32 1, i32 0, i32 0, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @GetPixel(i32 %37, i32 0, i32 0)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @color_match(i32 %39, i32 %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @GetPixel(i32 %43, i32 2, i32 2)
  store i32 %44, i32* %15, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @color_match(i32 %47, i32 %48)
  %50 = and i32 %46, %49
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i64, i64* %18, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @DST_ICON, align 4
  %57 = load i32, i32* %13, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @DrawStateA(i32 %52, i32 %53, i32* null, i32 %55, i32 0, i32 1, i32 1, i32 2, i32 2, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @GetPixel(i32 %60, i32 0, i32 0)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @color_match(i32 %62, i32 %63)
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @GetPixel(i32 %66, i32 2, i32 2)
  store i32 %67, i32* %15, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @color_match(i32 %70, i32 %71)
  %73 = and i32 %69, %72
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %7
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @DST_ICON, align 4
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %89, i32 %90)
  br label %117

92:                                               ; preds = %78, %7
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @DST_ICON, align 4
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([215 x i8], [215 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100, i32 %103, i32 %104)
  br label %116

106:                                              ; preds = %92
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @DST_ICON, align 4
  %112 = load i32, i32* %13, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %106, %96
  br label %117

117:                                              ; preds = %116, %82
  ret void
}

declare dso_local i64 @create_test_icon(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SetPixelV(i32, i32, i32, i32) #1

declare dso_local i32 @DrawStateA(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetPixel(i32, i32, i32) #1

declare dso_local i32 @color_match(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
