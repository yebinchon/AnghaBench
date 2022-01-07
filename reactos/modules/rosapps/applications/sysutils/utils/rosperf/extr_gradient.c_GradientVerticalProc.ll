; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_gradient.c_GradientVerticalProc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_gradient.c_GradientVerticalProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i64 }

@GradientVerticalProc.gcap = internal global %struct.TYPE_9__ { i32 0, i32 1 }, align 4
@GRADIENT_FILL_RECT_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GradientVerticalProc(i8* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.TYPE_7__], align 16
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %70, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %13
  %18 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  store i64 0, i64* %19, align 16
  %20 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul i32 65280, %22
  %24 = load i32, i32* %6, align 4
  %25 = udiv i32 %23, %24
  %26 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 16
  %28 = load i32, i32* %7, align 4
  %29 = mul i32 65280, %28
  %30 = load i32, i32* %6, align 4
  %31 = udiv i32 %29, %30
  %32 = sub i32 65280, %31
  %33 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i32 65280, i32* %36, align 8
  %37 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 16
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = mul i32 65280, %49
  %51 = load i32, i32* %6, align 4
  %52 = udiv i32 %50, %51
  %53 = sub i32 65280, %52
  %54 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 65280, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul i32 65280, %58
  %60 = load i32, i32* %6, align 4
  %61 = udiv i32 %59, %60
  %62 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %68 = load i32, i32* @GRADIENT_FILL_RECT_V, align 4
  %69 = call i32 @GradientFill(i32 %66, %struct.TYPE_7__* %67, i32 2, %struct.TYPE_9__* @GradientVerticalProc.gcap, i32 1, i32 %68)
  br label %70

70:                                               ; preds = %17
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %13

73:                                               ; preds = %13
  ret void
}

declare dso_local i32 @GradientFill(i32, %struct.TYPE_7__*, i32, %struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
