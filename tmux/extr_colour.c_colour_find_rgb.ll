; ModuleID = '/home/carl/AnghaBench/tmux/extr_colour.c_colour_find_rgb.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_colour.c_colour_find_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@colour_find_rgb.q2c = internal constant [6 x i32] [i32 0, i32 95, i32 135, i32 175, i32 215, i32 255], align 16
@COLOUR_FLAG_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @colour_find_rgb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @colour_to_6cube(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* @colour_find_rgb.q2c, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @colour_to_6cube(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* @colour_find_rgb.q2c, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @colour_to_6cube(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* @colour_find_rgb.q2c, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %3
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 36, %49
  %51 = add nsw i32 16, %50
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 6, %52
  %54 = add nsw i32 %51, %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* @COLOUR_FLAG_256, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %4, align 4
  br label %109

59:                                               ; preds = %44, %40, %3
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %62, %63
  %65 = sdiv i32 %64, 3
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp sgt i32 %66, 238
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i32 23, i32* %17, align 4
  br label %73

69:                                               ; preds = %59
  %70 = load i32, i32* %16, align 4
  %71 = sub nsw i32 %70, 3
  %72 = sdiv i32 %71, 10
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %69, %68
  %74 = load i32, i32* %17, align 4
  %75 = mul nsw i32 10, %74
  %76 = add nsw i32 8, %75
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @colour_dist_sq(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @colour_dist_sq(i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %73
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 232, %94
  store i32 %95, i32* %15, align 4
  br label %105

96:                                               ; preds = %73
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 36, %97
  %99 = add nsw i32 16, %98
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 6, %100
  %102 = add nsw i32 %99, %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %96, %93
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @COLOUR_FLAG_256, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %48
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @colour_to_6cube(i32) #1

declare dso_local i32 @colour_dist_sq(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
