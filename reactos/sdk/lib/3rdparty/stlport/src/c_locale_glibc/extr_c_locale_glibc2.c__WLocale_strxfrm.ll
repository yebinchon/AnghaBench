; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__WLocale_strxfrm.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__WLocale_strxfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Locale_collate = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_WLocale_strxfrm(%struct._Locale_collate* %0, i64* %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct._Locale_collate*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct._Locale_collate* %0, %struct._Locale_collate** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* null, i64** %13, align 8
  %15 = load i64, i64* %11, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load i64*, i64** %8, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64*, i64** %8, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  store i64 0, i64* %6, align 8
  br label %59

24:                                               ; preds = %5
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %31, 1
  %33 = mul i64 %32, 8
  %34 = call i64* @malloc(i64 %33)
  store i64* %34, i64** %13, align 8
  %35 = load i64*, i64** %13, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @wcsncpy(i64* %35, i64* %36, i64 %37)
  %39 = load i64*, i64** %13, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 0, i64* %41, align 8
  %42 = load i64*, i64** %13, align 8
  store i64* %42, i64** %12, align 8
  br label %45

43:                                               ; preds = %24
  %44 = load i64*, i64** %10, align 8
  store i64* %44, i64** %12, align 8
  br label %45

45:                                               ; preds = %43, %30
  %46 = load i64*, i64** %8, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct._Locale_collate*, %struct._Locale_collate** %7, align 8
  %50 = ptrtoint %struct._Locale_collate* %49 to i32
  %51 = call i64 @wcsxfrm_l(i64* %46, i64* %47, i64 %48, i32 %50)
  store i64 %51, i64* %14, align 8
  %52 = load i64*, i64** %13, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i64*, i64** %13, align 8
  %56 = call i32 @free(i64* %55)
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i64, i64* %14, align 8
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %57, %23
  %60 = load i64, i64* %6, align 8
  ret i64 %60
}

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @wcsncpy(i64*, i64*, i64) #1

declare dso_local i64 @wcsxfrm_l(i64*, i64*, i64, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
