; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_img2webp.c_SetLoopCount.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_img2webp.c_SetLoopCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@WEBP_MUX_OK = common dso_local global i64 0, align 8
@ANIMATION_FLAG = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error during loop-count setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @SetLoopCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetLoopCount(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @WebPMuxCreate(i32* %11, i32 1)
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

16:                                               ; preds = %2
  %17 = load i32*, i32** %10, align 8
  %18 = call i64 @WebPMuxGetFeatures(i32* %17, i32* %8)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @WEBP_MUX_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ANIMATION_FLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %16
  br label %63

31:                                               ; preds = %25
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @WebPMuxGetAnimationParams(i32* %32, %struct.TYPE_4__* %9)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @WEBP_MUX_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i64 @WebPMuxSetAnimationParams(i32* %43, %struct.TYPE_4__* %9)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @WEBP_MUX_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %40, %31
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @WebPDataClear(i32* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i64 @WebPMuxAssemble(i32* %55, i32* %56)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @WEBP_MUX_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %52, %49
  br label %63

63:                                               ; preds = %62, %30
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @WebPMuxDelete(i32* %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @WebPMuxCreate(i32*, i32) #1

declare dso_local i64 @WebPMuxGetFeatures(i32*, i32*) #1

declare dso_local i64 @WebPMuxGetAnimationParams(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @WebPMuxSetAnimationParams(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @WebPDataClear(i32*) #1

declare dso_local i64 @WebPMuxAssemble(i32*, i32*) #1

declare dso_local i32 @WebPMuxDelete(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
