; ModuleID = '/home/carl/AnghaBench/vlc/src/extras/extr_libc.c_vlc_ureduce.c'
source_filename = "/home/carl/AnghaBench/vlc/src/extras/extr_libc.c_vlc_ureduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_ureduce(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 1, i32* %25, align 4
  store i32 1, i32* %6, align 4
  br label %95

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @GCD(i32 %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %9, align 4
  %32 = udiv i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = udiv i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32 @INT64_C(i32 -1)
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %44, %40
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %82, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = udiv i32 %50, %51
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %16, align 4
  %55 = mul i32 %53, %54
  %56 = load i32, i32* %14, align 4
  %57 = add i32 %55, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %17, align 4
  %60 = mul i32 %58, %59
  %61 = load i32, i32* %15, align 4
  %62 = add i32 %60, %61
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %49
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %49
  br label %86

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = urem i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %17, align 4
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %19, align 4
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %20, align 4
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %86

82:                                               ; preds = %71
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %18, align 4
  store i32 %85, i32* %10, align 4
  br label %49

86:                                               ; preds = %81, %70
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %86, %44
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %89, %23
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @GCD(i32, i32) #1

declare dso_local i32 @INT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
