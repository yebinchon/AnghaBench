; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_apply_wide_font_attr.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_apply_wide_font_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @apply_wide_font_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_wide_font_attr(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %8, align 8
  br label %11

11:                                               ; preds = %65, %3
  %12 = load i32*, i32** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = icmp ult i32* %12, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %11
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @utf_ptr2char(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 128
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @utf_char2cells(i32 %27)
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  store i32* %31, i32** %7, align 8
  br label %32

32:                                               ; preds = %30, %26, %23
  br label %64

33:                                               ; preds = %18
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 128
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @utf_char2cells(i32 %37)
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @utf_iscomposing(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %46 = call i32 @pango_attr_font_desc_new(i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @INSERT_PANGO_ATTR(i32 %46, i32* %47, i32 %54, i32 %61)
  store i32* null, i32** %7, align 8
  br label %63

63:                                               ; preds = %44, %40, %36
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @utf_byte2len(i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %8, align 8
  br label %11

72:                                               ; preds = %11
  %73 = load i32*, i32** %7, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %77 = call i32 @pango_attr_font_desc_new(i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @INSERT_PANGO_ATTR(i32 %77, i32* %78, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @utf_ptr2char(i32*) #1

declare dso_local i32 @utf_char2cells(i32) #1

declare dso_local i32 @utf_iscomposing(i32) #1

declare dso_local i32 @INSERT_PANGO_ATTR(i32, i32*, i32, i32) #1

declare dso_local i32 @pango_attr_font_desc_new(i32) #1

declare dso_local i32 @utf_byte2len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
