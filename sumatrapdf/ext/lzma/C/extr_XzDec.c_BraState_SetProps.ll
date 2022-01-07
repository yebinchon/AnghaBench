; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_XzDec.c_BraState_SetProps.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_XzDec.c_BraState_SetProps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@XZ_ID_Delta = common dso_local global i32 0, align 4
@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BraState_SetProps(i8* %0, i64* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load i32*, i32** %9, align 8
  store i32* %14, i32** %9, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @XZ_ID_Delta, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %26, i32* %5, align 4
  br label %78

27:                                               ; preds = %22
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = add i32 %31, 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %76

35:                                               ; preds = %4
  %36 = load i64, i64* %8, align 8
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load i64*, i64** %7, align 8
  %40 = call i32 @GetUi32(i64* %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %65 [
    i32 129, label %44
    i32 132, label %44
    i32 128, label %44
    i32 131, label %51
    i32 130, label %58
  ]

44:                                               ; preds = %38, %38, %38
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %49, i32* %5, align 4
  br label %78

50:                                               ; preds = %44
  br label %65

51:                                               ; preds = %38
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %56, i32* %5, align 4
  br label %78

57:                                               ; preds = %51
  br label %65

58:                                               ; preds = %38
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 15
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %63, i32* %5, align 4
  br label %78

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %38, %64, %57, %50
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %75

69:                                               ; preds = %35
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %73, i32* %5, align 4
  br label %78

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %27
  %77 = load i32, i32* @SZ_OK, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %72, %62, %55, %48, %25
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @GetUi32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
