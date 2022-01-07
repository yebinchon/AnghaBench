; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_iso2022jp_flush.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_iso2022jp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@iso2022jp_esc = common dso_local global %struct.TYPE_5__* null, align 8
@ISO2022JP_CS_ASCII = common dso_local global i64 0, align 8
@ISO2022_SI = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@iso2022_SI_seq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @iso2022jp_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022jp_flush(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @iso2022jp_esc, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ISO2022JP_CS_ASCII, align 8
  %15 = load i64, i64* @ISO2022_SI, align 8
  %16 = call i64 @ISO2022_MODE(i64 %14, i64 %15)
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %95

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @ISO2022_MODE_SHIFT(i64 %21)
  %23 = load i64, i64* @ISO2022_SI, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @ISO2022_MODE_CS(i64 %31)
  %33 = load i64, i64* @ISO2022JP_CS_ASCII, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = load i64, i64* @ISO2022JP_CS_ASCII, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %35, %28
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @E2BIG, align 4
  %49 = call i32 @seterror(i32 %48)
  store i32 %49, i32* %4, align 4
  br label %96

50:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @ISO2022_MODE_SHIFT(i64 %53)
  %55 = load i64, i64* @ISO2022_SI, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @iso2022_SI_seq, align 4
  %60 = call i32 @memcpy(i32* %58, i32 %59, i32 1)
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @ISO2022_MODE_CS(i64 %66)
  %68 = load i64, i64* @ISO2022JP_CS_ASCII, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %63
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = load i64, i64* @ISO2022JP_CS_ASCII, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = load i64, i64* @ISO2022JP_CS_ASCII, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memcpy(i32* %74, i32 %79, i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = load i64, i64* @ISO2022JP_CS_ASCII, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %70, %63
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %93, %47
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @ISO2022_MODE(i64, i64) #1

declare dso_local i64 @ISO2022_MODE_SHIFT(i64) #1

declare dso_local i64 @ISO2022_MODE_CS(i64) #1

declare dso_local i32 @seterror(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
