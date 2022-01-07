; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_gamma-w32gdi.c_w32gdi_start.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_gamma-w32gdi.c_w32gdi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"Unable to open device context.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@COLORMGMTCAPS = common dso_local global i32 0, align 4
@CM_GAMMA_RAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Display device does not support gamma ramps.\0A\00", align 1
@GAMMA_RAMP_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to save current gamma ramp.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @w32gdi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w32gdi_start(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = call i32* @GetDC(i32* null)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fputs(i32 %11, i32 %12)
  store i32 -1, i32* %2, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @COLORMGMTCAPS, align 4
  %17 = call i32 @GetDeviceCaps(i32* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CM_GAMMA_RAMP, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fputs(i32 %22, i32 %23)
  store i32 -1, i32* %2, align 4
  br label %59

25:                                               ; preds = %14
  %26 = load i32, i32* @GAMMA_RAMP_SIZE, align 4
  %27 = mul nsw i32 3, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i32* @malloc(i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ReleaseDC(i32* null, i32* %40)
  store i32 -1, i32* %2, align 4
  br label %59

42:                                               ; preds = %25
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @GetDeviceGammaRamp(i32* %43, i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %42
  %51 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fputs(i32 %51, i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @ReleaseDC(i32* null, i32* %54)
  store i32 -1, i32* %2, align 4
  br label %59

56:                                               ; preds = %42
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @ReleaseDC(i32* null, i32* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %50, %38, %21, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @GetDeviceCaps(i32*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ReleaseDC(i32*, i32*) #1

declare dso_local i32 @GetDeviceGammaRamp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
