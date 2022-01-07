; ModuleID = '/home/carl/AnghaBench/robotgo/base/extr_base64.c_base64decode.c'
source_filename = "/home/carl/AnghaBench/robotgo/base/extr_base64.c_base64decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b64_decode_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @base64decode(i64* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add i64 %14, 3
  %16 = udiv i64 %15, 4
  %17 = mul i64 %16, 3
  store i64 %17, i64* %13, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = icmp ne i64* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  store i64 0, i64* %11, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %22 = load i64, i64* %13, align 8
  %23 = add i64 %22, 1
  %24 = call i64* @malloc(i64 %23)
  store i64* %24, i64** %12, align 8
  %25 = load i64*, i64** %12, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i64* null, i64** %4, align 8
  br label %98

28:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %84, %28
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %29
  %34 = load i32*, i32** @b64_decode_table, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %83

42:                                               ; preds = %33
  %43 = load i64, i64* %10, align 8
  %44 = urem i64 %43, 4
  switch i64 %44, label %81 [
    i64 1, label %45
    i64 2, label %57
    i64 3, label %70
  ]

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 2
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 48
  %50 = ashr i32 %49, 4
  %51 = or i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = load i64*, i64** %12, align 8
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %11, align 8
  %56 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %52, i64* %56, align 8
  br label %81

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 15
  %60 = shl i32 %59, 4
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 60
  %63 = ashr i32 %62, 2
  %64 = or i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %12, align 8
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %11, align 8
  %69 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %65, i64* %69, align 8
  br label %81

70:                                               ; preds = %42
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 3
  %73 = shl i32 %72, 6
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %12, align 8
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %11, align 8
  %80 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %76, i64* %80, align 8
  br label %81

81:                                               ; preds = %42, %70, %57, %45
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %81, %33
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %29

87:                                               ; preds = %29
  %88 = load i64*, i64** %7, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i64, i64* %11, align 8
  %92 = load i64*, i64** %7, align 8
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i64*, i64** %12, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 0, i64* %96, align 8
  %97 = load i64*, i64** %12, align 8
  store i64* %97, i64** %4, align 8
  br label %98

98:                                               ; preds = %93, %27
  %99 = load i64*, i64** %4, align 8
  ret i64* %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
