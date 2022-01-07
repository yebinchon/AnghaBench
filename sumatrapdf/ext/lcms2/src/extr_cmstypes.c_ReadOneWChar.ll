; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadOneWChar.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadOneWChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, %struct.TYPE_7__*, i64)* }
%struct.TYPE_8__ = type { i64*, i32* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i64, i64**)* @ReadOneWChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadOneWChar(i32 %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, i64 %3, i64** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64** %4, i64*** %11, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %10, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i64**, i64*** %11, align 8
  store i64* null, i64** %21, align 8
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %6, align 4
  br label %80

23:                                               ; preds = %5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32 (i32, %struct.TYPE_7__*, i64)*, i32 (i32, %struct.TYPE_7__*, i64)** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 %26(i32 %27, %struct.TYPE_7__* %28, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %6, align 4
  br label %80

39:                                               ; preds = %23
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  %51 = mul i64 %50, 8
  %52 = call i64 @_cmsMallocZero(i32 %48, i64 %51)
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64**, i64*** %11, align 8
  store i64* %53, i64** %54, align 8
  %55 = load i64**, i64*** %11, align 8
  %56 = load i64*, i64** %55, align 8
  %57 = icmp eq i64* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %39
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %6, align 4
  br label %80

60:                                               ; preds = %39
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64**, i64*** %11, align 8
  %65 = load i64*, i64** %64, align 8
  %66 = call i32 @_cmsReadWCharArray(i32 %61, %struct.TYPE_7__* %62, i64 %63, i64* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = load i64**, i64*** %11, align 8
  %71 = load i64*, i64** %70, align 8
  %72 = call i32 @_cmsFree(i32 %69, i64* %71)
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %6, align 4
  br label %80

74:                                               ; preds = %60
  %75 = load i64**, i64*** %11, align 8
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %74, %68, %58, %37, %20
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i64 @_cmsMallocZero(i32, i64) #1

declare dso_local i32 @_cmsReadWCharArray(i32, %struct.TYPE_7__*, i64, i64*) #1

declare dso_local i32 @_cmsFree(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
