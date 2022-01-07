; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_patblt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_patblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@mousex = common dso_local global i32 0, align 4
@mousey = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_patblt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_3__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [8 x i32], align 16
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = call i64 @warp_coords(i32* %10, i32* %11, i32* %12, i32* %13, i32* null, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %131

22:                                               ; preds = %8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i64 @contains_mouse(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @mousex, align 4
  %31 = load i32, i32* @mousey, align 4
  %32 = call i32 @draw_cursor_under(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %124 [
    i32 0, label %37
    i32 3, label %45
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @fill_rect(i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %124

45:                                               ; preds = %33
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sub nsw i32 7, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 %60
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  br label %46

65:                                               ; preds = %46
  store i32 0, i32* %17, align 4
  br label %66

66:                                               ; preds = %120, %65
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %123

70:                                               ; preds = %66
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %116, %70
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %119

75:                                               ; preds = %71
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %77, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %79, %82
  %84 = srem i32 %83, 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %85, %86
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = srem i32 %91, 8
  %93 = call i32 @is_pixel_on(i32* %76, i32 %84, i32 %92, i32 8, i32 1)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %75
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @set_pixel(i32 %98, i32 %101, i32 %102, i32 %103)
  br label %115

105:                                              ; preds = %75
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @set_pixel(i32 %108, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %105, %95
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %71

119:                                              ; preds = %71
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  br label %66

123:                                              ; preds = %66
  br label %124

124:                                              ; preds = %33, %123, %37
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @False, align 4
  %130 = call i32 @cache_rect(i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %124, %8
  ret void
}

declare dso_local i64 @warp_coords(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @contains_mouse(i32, i32, i32, i32) #1

declare dso_local i32 @draw_cursor_under(i32, i32) #1

declare dso_local i32 @fill_rect(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @is_pixel_on(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @set_pixel(i32, i32, i32, i32) #1

declare dso_local i32 @cache_rect(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
