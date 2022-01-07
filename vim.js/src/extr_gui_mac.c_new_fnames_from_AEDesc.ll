; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_mac.c_new_fnames_from_AEDesc.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_mac.c_new_fnames_from_AEDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typeFSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @new_fnames_from_AEDesc(i32* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32** null, i32*** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = call i64 @AECountItems(i32* %15, i64* %16)
  %18 = load i64*, i64** %7, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32**, i32*** %8, align 8
  store i32** %23, i32*** %4, align 8
  br label %70

24:                                               ; preds = %3
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %26, 8
  %28 = call i64 @alloc(i64 %27)
  %29 = inttoptr i64 %28 to i32**
  store i32** %29, i32*** %8, align 8
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %39, %24
  %31 = load i64, i64* %10, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32**, i32*** %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %30

42:                                               ; preds = %30
  store i64 1, i64* %10, align 8
  br label %43

43:                                               ; preds = %65, %42
  %44 = load i64, i64* %10, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %44, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* @typeFSS, align 4
  %52 = ptrtoint i32* %11 to i32
  %53 = call i64 @AEGetNthPtr(i32* %49, i64 %50, i32 %51, i32* %13, i32* %14, i32 %52, i32 4, i64* %12)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32**, i32*** %8, align 8
  store i32** %57, i32*** %4, align 8
  br label %70

58:                                               ; preds = %48
  %59 = load i32, i32* %11, align 4
  %60 = call i32* @FullPathFromFSSpec_save(i32 %59)
  %61 = load i32**, i32*** %8, align 8
  %62 = load i64, i64* %10, align 8
  %63 = sub nsw i64 %62, 1
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  store i32* %60, i32** %64, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %43

68:                                               ; preds = %43
  %69 = load i32**, i32*** %8, align 8
  store i32** %69, i32*** %4, align 8
  br label %70

70:                                               ; preds = %68, %56, %22
  %71 = load i32**, i32*** %4, align 8
  ret i32** %71
}

declare dso_local i64 @AECountItems(i32*, i64*) #1

declare dso_local i64 @alloc(i64) #1

declare dso_local i64 @AEGetNthPtr(i32*, i64, i32, i32*, i32*, i32, i32, i64*) #1

declare dso_local i32* @FullPathFromFSSpec_save(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
