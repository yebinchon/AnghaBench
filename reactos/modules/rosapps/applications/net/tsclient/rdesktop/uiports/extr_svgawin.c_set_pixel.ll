; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_set_pixel.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_set_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clip_startx = common dso_local global i32 0, align 4
@clip_endx = common dso_local global i32 0, align 4
@clip_starty = common dso_local global i32 0, align 4
@clip_endy = common dso_local global i32 0, align 4
@g_width = common dso_local global i32 0, align 4
@g_height = common dso_local global i32 0, align 4
@sdata = common dso_local global i32* null, align 8
@g_server_Bpp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_pixel(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @clip_startx, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %97

12:                                               ; preds = %4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @clip_endx, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %97

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @clip_starty, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %97

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @clip_endy, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %97

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @g_width, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %96

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @g_height, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %96

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %58

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 15
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %7, align 4
  br label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 12
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @get_pixel(i32 %52, i32 %53)
  %55 = call i32 @rop(i32 %50, i32 %51, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49, %46
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32*, i32** @sdata, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %58
  %62 = load i32, i32* @g_server_Bpp, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** @sdata, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @g_width, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %66, i64 %72
  store i32 %65, i32* %73, align 4
  br label %88

74:                                               ; preds = %61
  %75 = load i32, i32* @g_server_Bpp, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** @sdata, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @g_width, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  store i32 %78, i32* %86, align 4
  br label %87

87:                                               ; preds = %77, %74
  br label %88

88:                                               ; preds = %87, %64
  br label %95

89:                                               ; preds = %58
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @vga_setcolor(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @vga_drawpixel(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %88
  br label %96

96:                                               ; preds = %95, %34, %31, %27, %24
  br label %97

97:                                               ; preds = %96, %20, %16, %12, %4
  ret void
}

declare dso_local i32 @rop(i32, i32, i32) #1

declare dso_local i32 @get_pixel(i32, i32) #1

declare dso_local i32 @vga_setcolor(i32) #1

declare dso_local i32 @vga_drawpixel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
