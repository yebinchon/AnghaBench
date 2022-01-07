; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/extr_vidbios.c_VgaChangePalette.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/extr_vidbios.c_VgaChangePalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VgaPalette = common dso_local global i32* null, align 8
@EgaPalette__HiRes = common dso_local global i32* null, align 8
@EgaPalette__16Colors = common dso_local global i32* null, align 8
@CgaPalette2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @VgaChangePalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VgaChangePalette(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 19
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32*, i32** @VgaPalette, align 8
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** @VgaPalette, align 8
  %11 = call i32 @ARRAYSIZE(i32* %10)
  store i32 %11, i32* %5, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32*, i32** @EgaPalette__HiRes, align 8
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** @EgaPalette__HiRes, align 8
  %18 = call i32 @ARRAYSIZE(i32* %17)
  store i32 %18, i32* %5, align 4
  br label %23

19:                                               ; preds = %12
  %20 = load i32*, i32** @EgaPalette__16Colors, align 8
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** @EgaPalette__16Colors, align 8
  %22 = call i32 @ARRAYSIZE(i32* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %23, %8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @VgaSetPalette(i32* %25, i32 %26)
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @VgaSetPalette(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
