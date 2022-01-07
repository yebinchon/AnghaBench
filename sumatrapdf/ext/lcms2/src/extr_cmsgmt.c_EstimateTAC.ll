; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgmt.c_EstimateTAC.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgmt.c_EstimateTAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32*, i32 }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i8*)* @EstimateTAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EstimateTAC(i32 %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  %16 = load i32, i32* @cmsMAXCHANNELS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @cmsDoTransform(i32 %20, i32 %23, i32* %24, i64* %19, i32 1)
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %26

26:                                               ; preds = %38, %4
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i64, i64* %19, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %12, align 8
  br label %26

41:                                               ; preds = %26
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  store i64 0, i64* %12, align 8
  br label %51

51:                                               ; preds = %67, %47
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %57
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %51

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* @TRUE, align 4
  %73 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %73)
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cmsDoTransform(i32, i32, i32*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
