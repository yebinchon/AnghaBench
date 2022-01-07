; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_wlocale_win32.c__WLocale_strcmp_aux.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_wlocale_win32.c__WLocale_strcmp_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CSTR_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64, i32*, i64)* @_WLocale_strcmp_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_WLocale_strcmp_aux(%struct.TYPE_5__* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i32, i32* @CSTR_EQUAL, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %41, %5
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %10, align 8
  %20 = icmp ugt i64 %19, 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ true, %15 ], [ %20, %18 ]
  br i1 %22, label %23, label %48

23:                                               ; preds = %21
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @trim_size_t_to_DWORD(i64 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @trim_size_t_to_DWORD(i64 %26)
  store i64 %27, i64* %13, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @CompareStringW(i32 %31, i32 0, i32* %32, i64 %33, i32* %34, i64 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @CSTR_EQUAL, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %48

41:                                               ; preds = %23
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %10, align 8
  br label %15

48:                                               ; preds = %40, %21
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i64 @trim_size_t_to_DWORD(i64) #1

declare dso_local i32 @CompareStringW(i32, i32, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
