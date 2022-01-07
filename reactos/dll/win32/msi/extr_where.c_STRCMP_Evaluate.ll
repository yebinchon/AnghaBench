; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_STRCMP_Evaluate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_STRCMP_Evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex_expr = type { i64, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@ERROR_CONTINUE = common dso_local global i64 0, align 8
@OP_EQ = common dso_local global i64 0, align 8
@OP_NE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*, %struct.complex_expr*, i32*, i32*)* @STRCMP_Evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @STRCMP_Evaluate(i32* %0, i64* %1, %struct.complex_expr* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.complex_expr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.complex_expr* %2, %struct.complex_expr** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @TRUE, align 4
  %17 = load i32*, i32** %10, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %21 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = call i64 @STRING_evaluate(i32* %18, i64* %19, i32 %22, i32* %23, i32** %13)
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* @ERROR_CONTINUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i64, i64* %15, align 8
  store i64 %29, i64* %6, align 8
  br label %107

30:                                               ; preds = %5
  %31 = load i32*, i32** %7, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %34 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @STRING_evaluate(i32* %31, i64* %32, i32 %35, i32* %36, i32** %14)
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @ERROR_CONTINUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i64, i64* %15, align 8
  store i64 %42, i64* %6, align 8
  br label %107

43:                                               ; preds = %30
  %44 = load i32*, i32** %13, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = icmp eq i32* %44, %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50, %47
  %55 = load i32*, i32** %14, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57, %54, %43
  store i32 0, i32* %12, align 4
  br label %82

62:                                               ; preds = %57, %50
  %63 = load i32*, i32** %13, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32*, i32** %14, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 1, i32* %12, align 4
  br label %81

69:                                               ; preds = %65, %62
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 -1, i32* %12, align 4
  br label %80

76:                                               ; preds = %72, %69
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @strcmpW(i32* %77, i32* %78)
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %76, %75
  br label %81

81:                                               ; preds = %80, %68
  br label %82

82:                                               ; preds = %81, %61
  %83 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %84 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @OP_EQ, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %88, %82
  %92 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %93 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @OP_NE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi i1 [ false, %91 ], [ %99, %97 ]
  br label %102

102:                                              ; preds = %100, %88
  %103 = phi i1 [ true, %88 ], [ %101, %100 ]
  %104 = zext i1 %103 to i32
  %105 = load i32*, i32** %10, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %102, %41, %28
  %108 = load i64, i64* %6, align 8
  ret i64 %108
}

declare dso_local i64 @STRING_evaluate(i32*, i64*, i32, i32*, i32**) #1

declare dso_local i32 @strcmpW(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
