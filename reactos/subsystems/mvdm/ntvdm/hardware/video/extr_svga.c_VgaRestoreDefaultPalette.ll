; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/video/extr_svga.c_VgaRestoreDefaultPalette.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/video/extr_svga.c_VgaRestoreDefaultPalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i8* }

@VgaDefaultPalette = common dso_local global i32* null, align 8
@VgaDacRegisters = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @VgaRestoreDefaultPalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VgaRestoreDefaultPalette(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %75, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %78

11:                                               ; preds = %7
  %12 = load i32*, i32** @VgaDefaultPalette, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @GetRValue(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  store i8* %16, i8** %20, align 8
  %21 = load i32*, i32** @VgaDefaultPalette, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @GetGValue(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i8* %25, i8** %29, align 8
  %30 = load i32*, i32** @VgaDefaultPalette, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @GetBValue(i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %34, i8** %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load i32*, i32** @VgaDefaultPalette, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @GetRValue(i32 %46)
  %48 = call i32 @VGA_COLOR_TO_DAC(i8* %47)
  %49 = load i32*, i32** @VgaDacRegisters, align 8
  %50 = load i64, i64* %6, align 8
  %51 = mul i64 %50, 3
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load i32*, i32** @VgaDefaultPalette, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @GetGValue(i32 %56)
  %58 = call i32 @VGA_COLOR_TO_DAC(i8* %57)
  %59 = load i32*, i32** @VgaDacRegisters, align 8
  %60 = load i64, i64* %6, align 8
  %61 = mul i64 %60, 3
  %62 = add i64 %61, 1
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32*, i32** @VgaDefaultPalette, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @GetBValue(i32 %67)
  %69 = call i32 @VGA_COLOR_TO_DAC(i8* %68)
  %70 = load i32*, i32** @VgaDacRegisters, align 8
  %71 = load i64, i64* %6, align 8
  %72 = mul i64 %71, 3
  %73 = add i64 %72, 2
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %11
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %6, align 8
  br label %7

78:                                               ; preds = %7
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @GetRValue(i32) #1

declare dso_local i8* @GetGValue(i32) #1

declare dso_local i8* @GetBValue(i32) #1

declare dso_local i32 @VGA_COLOR_TO_DAC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
