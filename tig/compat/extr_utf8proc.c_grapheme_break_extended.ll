; ModuleID = '/home/carl/AnghaBench/tig/compat/extr_utf8proc.c_grapheme_break_extended.c'
source_filename = "/home/carl/AnghaBench/tig/compat/extr_utf8proc.c_grapheme_break_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF8PROC_BOUNDCLASS_START = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_REGIONAL_INDICATOR = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_OTHER = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_EXTENDED_PICTOGRAPHIC = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_EXTEND = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_ZWJ = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_E_ZWG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @grapheme_break_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grapheme_break_extended(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UTF8PROC_BOUNDCLASS_START, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  br label %21

19:                                               ; preds = %11, %3
  %20 = load i32, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %18, %16 ], [ %20, %19 ]
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @grapheme_break_simple(i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %69

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @UTF8PROC_BOUNDCLASS_REGIONAL_INDICATOR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @UTF8PROC_BOUNDCLASS_OTHER, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %68

40:                                               ; preds = %33, %28
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UTF8PROC_BOUNDCLASS_EXTENDED_PICTOGRAPHIC, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @UTF8PROC_BOUNDCLASS_EXTEND, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @UTF8PROC_BOUNDCLASS_EXTENDED_PICTOGRAPHIC, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  br label %63

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @UTF8PROC_BOUNDCLASS_ZWJ, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @UTF8PROC_BOUNDCLASS_E_ZWG, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %49
  br label %67

64:                                               ; preds = %40
  %65 = load i32, i32* %5, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %63
  br label %68

68:                                               ; preds = %67, %37
  br label %69

69:                                               ; preds = %68, %21
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @grapheme_break_simple(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
