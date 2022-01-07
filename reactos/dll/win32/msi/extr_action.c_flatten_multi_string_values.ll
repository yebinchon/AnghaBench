; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_flatten_multi_string_values.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_flatten_multi_string_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64**, i32, i64**, i32, i32*)* @flatten_multi_string_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @flatten_multi_string_values(i64** %0, i32 %1, i64** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store i64** %0, i64*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64** %2, i64*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  store i32 8, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %35, %5
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i64**, i64*** %7, align 8
  %22 = load i32, i32* %14, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64*, i64** %21, i64 %23
  %25 = load i64*, i64** %24, align 8
  %26 = call i32 @strlenW(i64* %25)
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %31 to i64
  %33 = add i64 %32, %29
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %14, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %14, align 4
  br label %16

38:                                               ; preds = %16
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i64**, i64*** %9, align 8
  %45 = load i32, i32* %14, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %44, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = call i32 @strlenW(i64* %48)
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = add i64 %55, %52
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %14, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %39

61:                                               ; preds = %39
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i64* @msi_alloc(i32 %63)
  store i64* %64, i64** %13, align 8
  store i64* %64, i64** %12, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i64* null, i64** %6, align 8
  br label %114

67:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load i64*, i64** %13, align 8
  %74 = load i64**, i64*** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64*, i64** %74, i64 %76
  %78 = load i64*, i64** %77, align 8
  %79 = call i32 @strcpyW(i64* %73, i64* %78)
  %80 = load i64*, i64** %13, align 8
  %81 = call i32 @strlenW(i64* %80)
  %82 = add nsw i32 %81, 1
  %83 = load i64*, i64** %13, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64* %85, i64** %13, align 8
  br label %86

86:                                               ; preds = %72
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %68

89:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %90
  %95 = load i64*, i64** %13, align 8
  %96 = load i64**, i64*** %9, align 8
  %97 = load i32, i32* %14, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64*, i64** %96, i64 %98
  %100 = load i64*, i64** %99, align 8
  %101 = call i32 @strcpyW(i64* %95, i64* %100)
  %102 = load i64*, i64** %13, align 8
  %103 = call i32 @strlenW(i64* %102)
  %104 = add nsw i32 %103, 1
  %105 = load i64*, i64** %13, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  store i64* %107, i64** %13, align 8
  br label %108

108:                                              ; preds = %94
  %109 = load i32, i32* %14, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %90

111:                                              ; preds = %90
  %112 = load i64*, i64** %13, align 8
  store i64 0, i64* %112, align 8
  %113 = load i64*, i64** %12, align 8
  store i64* %113, i64** %6, align 8
  br label %114

114:                                              ; preds = %111, %66
  %115 = load i64*, i64** %6, align 8
  ret i64* %115
}

declare dso_local i32 @strlenW(i64*) #1

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i32 @strcpyW(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
