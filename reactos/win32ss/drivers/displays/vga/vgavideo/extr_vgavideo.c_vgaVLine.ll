; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_vgaVLine.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_vgaVLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xconv = common dso_local global i64* null, align 8
@y80 = common dso_local global i64* null, align 8
@GRA_I = common dso_local global i64 0, align 8
@GRA_D = common dso_local global i64 0, align 8
@maskbit = common dso_local global i32* null, align 8
@vidmem = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgaVLine(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64*, i64** @xconv, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64*, i64** @y80, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %14, %18
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* @GRA_I, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @WRITE_PORT_UCHAR(i32 %21, i32 8)
  %23 = load i64, i64* @GRA_D, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** @maskbit, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WRITE_PORT_UCHAR(i32 %24, i32 %28)
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %49, %4
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %33, %34
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load i64, i64* @vidmem, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %38, %39
  %41 = call i32 @READ_REGISTER_UCHAR(i64 %40)
  %42 = load i64, i64* @vidmem, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @WRITE_REGISTER_UCHAR(i64 %44, i32 %45)
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 80
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %37
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %31

52:                                               ; preds = %31
  %53 = load i32, i32* @TRUE, align 4
  ret i32 %53
}

declare dso_local i32 @WRITE_PORT_UCHAR(i32, i32) #1

declare dso_local i32 @READ_REGISTER_UCHAR(i64) #1

declare dso_local i32 @WRITE_REGISTER_UCHAR(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
