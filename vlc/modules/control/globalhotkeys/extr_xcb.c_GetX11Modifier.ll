; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/globalhotkeys/extr_xcb.c_GetX11Modifier.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/globalhotkeys/extr_xcb.c_GetX11Modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_MODIFIER_ALT = common dso_local global i32 0, align 4
@XK_Alt_L = common dso_local global i32 0, align 4
@XK_Alt_R = common dso_local global i32 0, align 4
@KEY_MODIFIER_SHIFT = common dso_local global i32 0, align 4
@XK_Shift_L = common dso_local global i32 0, align 4
@XK_Shift_R = common dso_local global i32 0, align 4
@KEY_MODIFIER_CTRL = common dso_local global i32 0, align 4
@XK_Control_L = common dso_local global i32 0, align 4
@XK_Control_R = common dso_local global i32 0, align 4
@KEY_MODIFIER_META = common dso_local global i32 0, align 4
@XK_Meta_L = common dso_local global i32 0, align 4
@XK_Meta_R = common dso_local global i32 0, align 4
@XK_Super_L = common dso_local global i32 0, align 4
@XK_Super_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @GetX11Modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetX11Modifier(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @KEY_MODIFIER_ALT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @XK_Alt_L, align 4
  %16 = call i32 @GetModifier(i32* %13, i32* %14, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @XK_Alt_R, align 4
  %20 = call i32 @GetModifier(i32* %17, i32* %18, i32 %19)
  %21 = or i32 %16, %20
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %12, %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @KEY_MODIFIER_SHIFT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @XK_Shift_L, align 4
  %33 = call i32 @GetModifier(i32* %30, i32* %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @XK_Shift_R, align 4
  %37 = call i32 @GetModifier(i32* %34, i32* %35, i32 %36)
  %38 = or i32 %33, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %29, %24
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @KEY_MODIFIER_CTRL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @XK_Control_L, align 4
  %50 = call i32 @GetModifier(i32* %47, i32* %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @XK_Control_R, align 4
  %54 = call i32 @GetModifier(i32* %51, i32* %52, i32 %53)
  %55 = or i32 %50, %54
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %46, %41
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @KEY_MODIFIER_META, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @XK_Meta_L, align 4
  %67 = call i32 @GetModifier(i32* %64, i32* %65, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @XK_Meta_R, align 4
  %71 = call i32 @GetModifier(i32* %68, i32* %69, i32 %70)
  %72 = or i32 %67, %71
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @XK_Super_L, align 4
  %76 = call i32 @GetModifier(i32* %73, i32* %74, i32 %75)
  %77 = or i32 %72, %76
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @XK_Super_R, align 4
  %81 = call i32 @GetModifier(i32* %78, i32* %79, i32 %80)
  %82 = or i32 %77, %81
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %63, %58
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @GetModifier(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
