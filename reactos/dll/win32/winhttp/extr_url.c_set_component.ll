; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_url.c_set_component.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_url.c_set_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ICU_DECODE = common dso_local global i32 0, align 4
@ICU_ESCAPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i32*, i64*, i32, i32, i32*)* @set_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_component(i64** %0, i32* %1, i64* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i64** %0, i64*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load i64**, i64*** %8, align 8
  %15 = load i64*, i64** %14, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %22, i32* %7, align 4
  br label %84

23:                                               ; preds = %17, %6
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %28, i32* %7, align 4
  br label %84

29:                                               ; preds = %23
  %30 = load i64**, i64*** %8, align 8
  %31 = load i64*, i64** %30, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @ICU_DECODE, align 4
  %43 = load i32, i32* @ICU_ESCAPE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %48, i32* %7, align 4
  br label %84

49:                                               ; preds = %40, %36, %33
  %50 = load i64*, i64** %10, align 8
  %51 = load i64**, i64*** %8, align 8
  store i64* %50, i64** %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %82

54:                                               ; preds = %29
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = load i32*, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %65, i32* %7, align 4
  br label %84

66:                                               ; preds = %54
  %67 = load i64**, i64*** %8, align 8
  %68 = load i64*, i64** %67, align 8
  %69 = load i64*, i64** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memcpy(i64* %68, i64* %69, i32 %73)
  %75 = load i64**, i64*** %8, align 8
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %66, %49
  %83 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %59, %47, %27, %21
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
