; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/string/extr_witow.c__i64tow.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/string/extr_witow.c__i64tow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @_i64tow(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [65 x i64], align 16
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = getelementptr inbounds [65 x i64], [65 x i64]* %8, i64 0, i64 0
  store i64* %14, i64** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 36
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @EDOM, align 4
  %22 = call i32 @_set_errno(i32 %21)
  store i64* null, i64** %4, align 8
  br label %111

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ult i32 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = sub i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %71, %39
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i64*, i64** %9, align 8
  %45 = getelementptr inbounds [65 x i64], [65 x i64]* %8, i64 0, i64 0
  %46 = icmp eq i64* %44, %45
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ true, %40 ], [ %46, %43 ]
  br i1 %48, label %49, label %72

49:                                               ; preds = %47
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %7, align 4
  %52 = urem i32 %50, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = udiv i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 10
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 48
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %9, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  br label %71

64:                                               ; preds = %49
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 97
  %67 = sub nsw i32 %66, 10
  %68 = sext i32 %67 to i64
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  br label %71

71:                                               ; preds = %64, %58
  br label %40

72:                                               ; preds = %47
  %73 = load i64*, i64** %6, align 8
  %74 = icmp eq i64* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load i64*, i64** %9, align 8
  %77 = getelementptr inbounds [65 x i64], [65 x i64]* %8, i64 0, i64 0
  %78 = ptrtoint i64* %76 to i64
  %79 = ptrtoint i64* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = add nsw i64 %84, 1
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call i64 @malloc(i32 %87)
  %89 = inttoptr i64 %88 to i64*
  store i64* %89, i64** %6, align 8
  br label %90

90:                                               ; preds = %75, %72
  %91 = load i64*, i64** %6, align 8
  store i64* %91, i64** %13, align 8
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i64*, i64** %13, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %13, align 8
  store i64 45, i64* %95, align 8
  br label %97

97:                                               ; preds = %94, %90
  br label %98

98:                                               ; preds = %102, %97
  %99 = load i64*, i64** %9, align 8
  %100 = getelementptr inbounds [65 x i64], [65 x i64]* %8, i64 0, i64 0
  %101 = icmp ugt i64* %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i64*, i64** %9, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 -1
  store i64* %104, i64** %9, align 8
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %13, align 8
  %107 = getelementptr inbounds i64, i64* %106, i32 1
  store i64* %107, i64** %13, align 8
  store i64 %105, i64* %106, align 8
  br label %98

108:                                              ; preds = %98
  %109 = load i64*, i64** %13, align 8
  store i64 0, i64* %109, align 8
  %110 = load i64*, i64** %6, align 8
  store i64* %110, i64** %4, align 8
  br label %111

111:                                              ; preds = %108, %20
  %112 = load i64*, i64** %4, align 8
  ret i64* %112
}

declare dso_local i32 @_set_errno(i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
