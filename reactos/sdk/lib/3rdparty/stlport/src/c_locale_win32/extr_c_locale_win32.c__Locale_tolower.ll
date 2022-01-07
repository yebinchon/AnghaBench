; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_tolower.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_tolower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LCMAP_LINGUISTIC_CASING = common dso_local global i32 0, align 4
@LCMAP_LOWERCASE = common dso_local global i32 0, align 4
@MB_PRECOMPOSED = common dso_local global i32 0, align 4
@WC_COMPOSITECHECK = common dso_local global i32 0, align 4
@WC_SEPCHARS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Locale_tolower(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = alloca [2 x i32], align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %12, align 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @__GetDefaultCP(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LCMAP_LINGUISTIC_CASING, align 4
  %28 = load i32, i32* @LCMAP_LOWERCASE, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %32 = call i32 @LCMapStringA(i32 %26, i32 %29, i8* %30, i32 2, i8* %31, i32 2)
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %88

36:                                               ; preds = %2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @MB_PRECOMPOSED, align 4
  %41 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %43 = call i32 @MultiByteToWideChar(i64 %39, i32 %40, i8* %41, i32 2, i32* %42, i32 2)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @__GetDefaultCP(i32 %47)
  %49 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %50 = load i32, i32* @WC_SEPCHARS, align 4
  %51 = or i32 %49, %50
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @WideCharToMultiByte(i64 %48, i32 %51, i32* %52, i32 2, i8* %53, i32 2, i32* null, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @LCMAP_LINGUISTIC_CASING, align 4
  %61 = load i32, i32* @LCMAP_LOWERCASE, align 4
  %62 = or i32 %60, %61
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %65 = call i32 @LCMapStringA(i32 %59, i32 %62, i8* %63, i32 2, i8* %64, i32 2)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @__GetDefaultCP(i32 %69)
  %71 = load i32, i32* @MB_PRECOMPOSED, align 4
  %72 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %74 = call i32 @MultiByteToWideChar(i64 %70, i32 %71, i8* %72, i32 2, i32* %73, i32 2)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %79 = load i32, i32* @WC_SEPCHARS, align 4
  %80 = or i32 %78, %79
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %83 = load i32, i32* @FALSE, align 4
  %84 = call i32 @WideCharToMultiByte(i64 %77, i32 %80, i32* %81, i32 2, i8* %82, i32 2, i32* null, i32 %83)
  %85 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %36, %22
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @__GetDefaultCP(i32) #1

declare dso_local i32 @LCMapStringA(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i64, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i64, i32, i32*, i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
