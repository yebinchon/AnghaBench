; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_accel_draw_box.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_accel_draw_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdata = common dso_local global i64 0, align 8
@g_width = common dso_local global i32 0, align 4
@g_server_bpp = common dso_local global i32 0, align 4
@g_server_Bpp = common dso_local global i32 0, align 4
@has_put_image = common dso_local global i64 0, align 8
@ACCEL_PUTIMAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @accel_draw_box(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i64, i64* @sdata, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %6
  %19 = load i32*, i32** %11, align 8
  store i32* %19, i32** %14, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* @sdata, align 8
  %23 = load i32, i32* @g_width, align 4
  %24 = load i32, i32* @g_server_bpp, align 4
  %25 = call i32* @get_ptr(i32 %20, i32 %21, i64 %22, i32 %23, i32 %24)
  store i32* %25, i32** %15, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %47, %18
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load i32*, i32** %15, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @g_server_Bpp, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i32 @copy_mem(i32* %31, i32* %32, i32 %35)
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = load i32, i32* @g_width, align 4
  %43 = load i32, i32* @g_server_Bpp, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32* %46, i32** %15, align 8
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %26

50:                                               ; preds = %26
  br label %93

51:                                               ; preds = %6
  %52 = load i64, i64* @has_put_image, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @g_server_Bpp, align 4
  %58 = mul nsw i32 %56, %57
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* @ACCEL_PUTIMAGE, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @vga_accel(i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32* %66)
  br label %92

68:                                               ; preds = %54, %51
  %69 = load i32*, i32** %11, align 8
  store i32* %69, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %88, %68
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @g_server_Bpp, align 4
  %82 = mul nsw i32 %80, %81
  %83 = call i32 @vga_drawscansegment(i32* %75, i32 %76, i32 %79, i32 %82)
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32* %87, i32** %14, align 8
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %70

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %91, %60
  br label %93

93:                                               ; preds = %92, %50
  ret void
}

declare dso_local i32* @get_ptr(i32, i32, i64, i32, i32) #1

declare dso_local i32 @copy_mem(i32*, i32*, i32) #1

declare dso_local i32 @vga_accel(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vga_drawscansegment(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
