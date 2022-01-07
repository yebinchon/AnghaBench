; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/video/extr_svga.c_VgaTranslateAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/video/extr_svga.c_VgaTranslateAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VgaGcRegisters = common dso_local global i32* null, align 8
@SVGA_GC_EXT_MODE_REG = common dso_local global i64 0, align 8
@SVGA_GC_EXT_MODE_WND_B = common dso_local global i32 0, align 4
@SVGA_GC_OFFSET_1_REG = common dso_local global i64 0, align 8
@SVGA_GC_OFFSET_0_REG = common dso_local global i64 0, align 8
@VgaSeqRegisters = common dso_local global i32* null, align 8
@VGA_SEQ_MEM_REG = common dso_local global i64 0, align 8
@VGA_SEQ_MEM_C4 = common dso_local global i32 0, align 4
@VGA_GC_MODE_REG = common dso_local global i64 0, align 8
@VGA_GC_MODE_OE = common dso_local global i32 0, align 4
@SVGA_GC_EXT_MODE_GRAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @VgaTranslateAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VgaTranslateAddress(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 (...) @VgaGetVideoBaseAddress()
  %7 = sub nsw i32 %5, %6
  %8 = call i32 @LOWORD(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32*, i32** @VgaGcRegisters, align 8
  %10 = load i64, i64* @SVGA_GC_EXT_MODE_REG, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SVGA_GC_EXT_MODE_WND_B, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 32768
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32*, i32** @VgaGcRegisters, align 8
  %22 = load i64, i64* @SVGA_GC_OFFSET_1_REG, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  br label %30

25:                                               ; preds = %16, %1
  %26 = load i32*, i32** @VgaGcRegisters, align 8
  %27 = load i64, i64* @SVGA_GC_OFFSET_0_REG, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %24, %20 ], [ %29, %25 ]
  store i32 %31, i32* %4, align 4
  %32 = load i32*, i32** @VgaSeqRegisters, align 8
  %33 = load i64, i64* @VGA_SEQ_MEM_REG, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VGA_SEQ_MEM_C4, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, -4
  store i32 %41, i32* %3, align 4
  br label %54

42:                                               ; preds = %30
  %43 = load i32*, i32** @VgaGcRegisters, align 8
  %44 = load i64, i64* @VGA_GC_MODE_REG, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VGA_GC_MODE_OE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, -2
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %42
  br label %54

54:                                               ; preds = %53, %39
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = load i32*, i32** @VgaGcRegisters, align 8
  %60 = load i64, i64* @SVGA_GC_EXT_MODE_REG, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SVGA_GC_EXT_MODE_GRAN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 14, i32 12
  %68 = shl i32 %58, %67
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %57, %54
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @VgaGetVideoBaseAddress(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
