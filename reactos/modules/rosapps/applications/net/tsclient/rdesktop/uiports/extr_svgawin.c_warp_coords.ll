; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_warp_coords.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_warp_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clip_startx = common dso_local global i32 0, align 4
@clip_starty = common dso_local global i32 0, align 4
@clip_endx = common dso_local global i32 0, align 4
@clip_endy = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @warp_coords(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* @clip_startx, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i32, i32* @clip_startx, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %21, %23
  store i32 %24, i32* %14, align 4
  br label %26

25:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* @clip_starty, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @clip_starty, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %32, %34
  store i32 %35, i32* %15, align 4
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* @clip_endx, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* @clip_endx, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sub nsw i32 %47, %54
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %37
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %59, %61
  %63 = load i32, i32* @clip_endy, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %57
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %69, %71
  %73 = load i32, i32* @clip_endy, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sub nsw i32 %67, %74
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %65, %57
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32*, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i32, i32* @False, align 4
  store i32 %92, i32* %7, align 4
  br label %129

93:                                               ; preds = %77
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @False, align 4
  store i32 %98, i32* %7, align 4
  br label %129

99:                                               ; preds = %93
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32*, i32** %8, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %99
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32*, i32** %12, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %99
  %119 = load i32*, i32** %13, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32*, i32** %13, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %121, %118
  %128 = load i32, i32* @True, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %97, %91
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
