; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_get_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_get_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdata = common dso_local global i64 0, align 8
@g_width = common dso_local global i32 0, align 4
@g_server_bpp = common dso_local global i32 0, align 4
@g_server_Bpp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_rect(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %5
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i64, i64* @sdata, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i64, i64* @sdata, align 8
  %40 = load i32, i32* @g_width, align 4
  %41 = load i32, i32* @g_server_bpp, align 4
  %42 = call i32 @get_ptr(i32 %35, i32 %38, i64 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @g_server_Bpp, align 4
  %45 = mul nsw i32 %43, %44
  %46 = call i32 @copy_mem(i32* %34, i32 %42, i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @g_server_Bpp, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32* %52, i32** %10, align 8
  br label %53

53:                                               ; preds = %33
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %29

56:                                               ; preds = %29
  br label %82

57:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @g_server_Bpp, align 4
  %70 = mul nsw i32 %68, %69
  %71 = call i32 @vga_getscansegment(i32* %63, i32 %64, i32 %67, i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @g_server_Bpp, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  store i32* %77, i32** %10, align 8
  br label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %58

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81, %56
  ret void
}

declare dso_local i32 @copy_mem(i32*, i32, i32) #1

declare dso_local i32 @get_ptr(i32, i32, i64, i32, i32) #1

declare dso_local i32 @vga_getscansegment(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
