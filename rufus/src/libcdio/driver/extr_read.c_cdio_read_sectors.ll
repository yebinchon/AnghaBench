; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_read.c_cdio_read_sectors.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_read.c_cdio_read_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRIVER_OP_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdio_read_sectors(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  switch i32 %12, label %43 [
    i32 132, label %13
    i32 131, label %19
    i32 130, label %25
    i32 129, label %31
    i32 128, label %37
  ]

13:                                               ; preds = %5
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @cdio_read_audio_sectors(i32* %14, i8* %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  br label %45

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @cdio_read_mode1_sectors(i32* %20, i8* %21, i32 %22, i32 0, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %45

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @cdio_read_mode1_sectors(i32* %26, i8* %27, i32 %28, i32 1, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %45

31:                                               ; preds = %5
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @cdio_read_mode2_sectors(i32* %32, i8* %33, i32 %34, i32 0, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %45

37:                                               ; preds = %5
  %38 = load i32*, i32** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @cdio_read_mode2_sectors(i32* %38, i8* %39, i32 %40, i32 1, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %5
  %44 = load i32, i32* @DRIVER_OP_ERROR, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %37, %31, %25, %19, %13
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @cdio_read_audio_sectors(i32*, i8*, i32, i32) #1

declare dso_local i32 @cdio_read_mode1_sectors(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @cdio_read_mode2_sectors(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
