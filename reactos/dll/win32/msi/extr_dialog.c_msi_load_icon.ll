; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_load_icon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_load_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LR_LOADFROMFILE = common dso_local global i32 0, align 4
@LR_DEFAULTSIZE = common dso_local global i32 0, align 4
@msidbControlAttributesFixedSize = common dso_local global i32 0, align 4
@msidbControlAttributesIconSize16 = common dso_local global i32 0, align 4
@msidbControlAttributesIconSize32 = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @msi_load_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_load_icon(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @LR_LOADFROMFILE, align 4
  %11 = load i32, i32* @LR_DEFAULTSIZE, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @msidbControlAttributesFixedSize, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load i32, i32* @LR_DEFAULTSIZE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @msidbControlAttributesIconSize16, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 16
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 16
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %17
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @msidbControlAttributesIconSize32, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 32
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @IMAGE_ICON, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @msi_load_image(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  ret i32 %49
}

declare dso_local i32 @msi_load_image(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
