; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_create_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_create_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_server_bpp = common dso_local global i32 0, align 4
@g_bpp = common dso_local global i32 0, align 4
@g_Bpp = common dso_local global i32 0, align 4
@g_gc_clean = common dso_local global i32 0, align 4
@MWPF_RGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ui_create_bitmap(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @GrNewPixmap(i32 %13, i32 %14, i32 0)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @g_server_bpp, align 4
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %18, label %66

18:                                               ; preds = %3
  %19 = load i32, i32* @g_bpp, align 4
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %66

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @g_Bpp, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32* @xmalloc(i32 %26)
  store i32* %27, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %62, %21
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %4, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %38, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @COLOR16TO32(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %50, i64 %56
  store i32 %49, i32* %57, align 4
  br label %58

58:                                               ; preds = %37
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %33

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %28

65:                                               ; preds = %28
  br label %66

66:                                               ; preds = %65, %18, %3
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* @g_gc_clean, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* @MWPF_RGB, align 4
  %73 = call i32 @GrArea(i64 %67, i32 %68, i32 0, i32 0, i32 %69, i32 %70, i32* %71, i32 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = icmp ne i32* %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @xfree(i32* %78)
  br label %80

80:                                               ; preds = %77, %66
  %81 = load i64, i64* %7, align 8
  %82 = inttoptr i64 %81 to i8*
  ret i8* %82
}

declare dso_local i64 @GrNewPixmap(i32, i32, i32) #1

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @COLOR16TO32(i32) #1

declare dso_local i32 @GrArea(i64, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @xfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
