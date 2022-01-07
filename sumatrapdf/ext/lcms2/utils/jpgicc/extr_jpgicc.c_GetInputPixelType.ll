; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_GetInputPixelType.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_GetInputPixelType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@Decompressor = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@lIsITUFax = common dso_local global i64 0, align 8
@lIsPhotoshopApp13 = common dso_local global i32 0, align 4
@lIsEXIF = common dso_local global i32 0, align 4
@PT_Lab = common dso_local global i32 0, align 4
@PT_GRAY = common dso_local global i32 0, align 4
@PT_RGB = common dso_local global i32 0, align 4
@PT_CMYK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unsupported color space (0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @GetInputPixelType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetInputPixelType() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 4), align 4
  %8 = call i64 @IsITUFax(i32 %7)
  store i64 %8, i64* @lIsITUFax, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 4), align 4
  %10 = call i32 @HandlePhotoshopAPP13(i32 %9)
  store i32 %10, i32* @lIsPhotoshopApp13, align 4
  %11 = call i32 @HandleEXIF(%struct.TYPE_3__* @Decompressor)
  store i32 %11, i32* @lIsEXIF, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 0), align 4
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %13 = load i64, i64* @lIsITUFax, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @PT_Lab, align 4
  store i32 %16, i32* %2, align 4
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 1), align 4
  br label %41

17:                                               ; preds = %0
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 2), align 4
  switch i32 %18, label %37 [
    i32 131, label %19
    i32 130, label %21
    i32 128, label %23
    i32 132, label %25
    i32 129, label %31
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @PT_GRAY, align 4
  store i32 %20, i32* %2, align 4
  store i32 131, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 1), align 4
  br label %40

21:                                               ; preds = %17
  %22 = load i32, i32* @PT_RGB, align 4
  store i32 %22, i32* %2, align 4
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 1), align 4
  br label %40

23:                                               ; preds = %17
  %24 = load i32, i32* @PT_RGB, align 4
  store i32 %24, i32* %2, align 4
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 1), align 4
  br label %40

25:                                               ; preds = %17
  %26 = load i32, i32* @PT_CMYK, align 4
  store i32 %26, i32* %2, align 4
  store i32 132, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 3), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %25
  br label %40

31:                                               ; preds = %17
  %32 = load i32, i32* @PT_CMYK, align 4
  store i32 %32, i32* %2, align 4
  store i32 132, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 3), align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %31
  br label %40

37:                                               ; preds = %17
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Decompressor, i32 0, i32 2), align 4
  %39 = call i32 @FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %1, align 4
  br label %56

40:                                               ; preds = %36, %30, %23, %21, %19
  br label %41

41:                                               ; preds = %40, %15
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @EXTRA_SH(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @CHANNELS_SH(i32 %44)
  %46 = or i32 %43, %45
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @BYTES_SH(i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @COLORSPACE_SH(i32 %50)
  %52 = or i32 %49, %51
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @FLAVOR_SH(i32 %53)
  %55 = or i32 %52, %54
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %41, %37
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i64 @IsITUFax(i32) #1

declare dso_local i32 @HandlePhotoshopAPP13(i32) #1

declare dso_local i32 @HandleEXIF(%struct.TYPE_3__*) #1

declare dso_local i32 @FatalError(i8*, i32) #1

declare dso_local i32 @EXTRA_SH(i32) #1

declare dso_local i32 @CHANNELS_SH(i32) #1

declare dso_local i32 @BYTES_SH(i32) #1

declare dso_local i32 @COLORSPACE_SH(i32) #1

declare dso_local i32 @FLAVOR_SH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
