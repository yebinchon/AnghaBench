; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_check_halftone_palette.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_check_halftone_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@check_halftone_palette.halftone_values = internal constant [6 x i32] [i32 0, i32 51, i32 102, i32 153, i32 204, i32 255], align 16
@.str = private unnamed_addr constant [34 x i8] c"Expected %.8x, got %.8x, i=%u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @check_halftone_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_halftone_palette(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %125, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %128

11:                                               ; preds = %5
  store i32 -16777216, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, 8388608
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, 32768
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, 128
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %28
  br label %101

36:                                               ; preds = %11
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -4144960, i32* %4, align 4
  br label %100

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, 16711680
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 2
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, 65280
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, 255
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %57
  br label %99

65:                                               ; preds = %40
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 40
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %98

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = sub nsw i32 %70, 40
  %72 = srem i32 %71, 6
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* @check_halftone_palette.halftone_values, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %3, align 4
  %79 = sub nsw i32 %78, 40
  %80 = sdiv i32 %79, 6
  %81 = srem i32 %80, 6
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* @check_halftone_palette.halftone_values, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %3, align 4
  %89 = sub nsw i32 %88, 40
  %90 = sdiv i32 %89, 36
  %91 = srem i32 %90, 6
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* @check_halftone_palette.halftone_values, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 16
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %69, %68
  br label %99

99:                                               ; preds = %98, %64
  br label %100

100:                                              ; preds = %99, %39
  br label %101

101:                                              ; preds = %100, %35
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %102, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %119, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %101
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %5

128:                                              ; preds = %5
  ret void
}

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
