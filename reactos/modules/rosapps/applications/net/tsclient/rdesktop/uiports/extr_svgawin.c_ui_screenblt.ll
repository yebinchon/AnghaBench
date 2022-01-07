; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_screenblt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_screenblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mousex = common dso_local global i32 0, align 4
@mousey = common dso_local global i32 0, align 4
@g_server_Bpp = common dso_local global i32 0, align 4
@g_server_bpp = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_screenblt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %7
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %139

26:                                               ; preds = %21, %7
  %27 = call i64 @warp_coords(i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %139

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @contains_mouse(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @contains_mouse(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36, %29
  %44 = load i32, i32* @mousex, align 4
  %45 = load i32, i32* @mousey, align 4
  %46 = call i32 @draw_cursor_under(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 12
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @accel_screen_copy(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  br label %131

58:                                               ; preds = %47
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* @g_server_Bpp, align 4
  %63 = mul nsw i32 %61, %62
  %64 = call i64 @xmalloc(i32 %63)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %17, align 8
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %93, %58
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %89, %70
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @get_pixel(i32 %80, i32 %83)
  %85 = load i32*, i32** %17, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @g_server_bpp, align 4
  %88 = call i32 @set_pixel2(i32 %76, i32 %77, i32 %84, i32* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %71

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %66

96:                                               ; preds = %66
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %125, %96
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  br label %102

102:                                              ; preds = %121, %101
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32*, i32** %17, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @g_server_bpp, align 4
  %118 = call i32 @get_pixel2(i32 %113, i32 %114, i32* %115, i32 %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @set_pixel(i32 %109, i32 %112, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %106
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %102

124:                                              ; preds = %102
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %97

128:                                              ; preds = %97
  %129 = load i32*, i32** %17, align 8
  %130 = call i32 @xfree(i32* %129)
  br label %131

131:                                              ; preds = %128, %50
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @False, align 4
  %137 = call i32 @cache_rect(i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = call i32 (...) @draw_cache_rects()
  br label %139

139:                                              ; preds = %25, %131, %26
  ret void
}

declare dso_local i64 @warp_coords(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @contains_mouse(i32, i32, i32, i32) #1

declare dso_local i32 @draw_cursor_under(i32, i32) #1

declare dso_local i32 @accel_screen_copy(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @set_pixel2(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @get_pixel(i32, i32) #1

declare dso_local i32 @set_pixel(i32, i32, i32, i32) #1

declare dso_local i32 @get_pixel2(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @cache_rect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @draw_cache_rects(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
