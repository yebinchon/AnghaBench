; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_reverse.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_reverse(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @js_getlength(i32* %9, i32 0)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sdiv i32 %11, 2
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %62, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @js_hasindex(i32* %22, i32 0, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @js_hasindex(i32* %25, i32 0, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @js_setindex(i32* %34, i32 0, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @js_setindex(i32* %37, i32 0, i32 %38)
  br label %62

40:                                               ; preds = %30, %17
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @js_setindex(i32* %44, i32 0, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @js_delindex(i32* %47, i32 0, i32 %48)
  br label %61

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @js_setindex(i32* %54, i32 0, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @js_delindex(i32* %57, i32 0, i32 %58)
  br label %60

60:                                               ; preds = %53, %50
  br label %61

61:                                               ; preds = %60, %43
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %13

65:                                               ; preds = %13
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @js_copy(i32* %66, i32 0)
  ret void
}

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i32 @js_hasindex(i32*, i32, i32) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

declare dso_local i32 @js_delindex(i32*, i32, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
