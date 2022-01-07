; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_evaluate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.expr = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid expression type\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.expr*, i32*, i32*)* @WHERE_evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WHERE_evaluate(%struct.TYPE_8__* %0, i32* %1, %struct.expr* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.expr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.expr* %2, %struct.expr** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.expr*, %struct.expr** %9, align 8
  %15 = icmp ne %struct.expr* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @TRUE, align 4
  %18 = load i32*, i32** %10, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %19, i32* %6, align 4
  br label %102

20:                                               ; preds = %5
  %21 = load %struct.expr*, %struct.expr** %9, align 8
  %22 = getelementptr inbounds %struct.expr, %struct.expr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %99 [
    i32 134, label %24
    i32 133, label %40
    i32 129, label %56
    i32 132, label %63
    i32 130, label %72
    i32 131, label %81
    i32 128, label %90
  ]

24:                                               ; preds = %20
  %25 = load %struct.expr*, %struct.expr** %9, align 8
  %26 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @expr_fetch_value(i32* %27, i32* %28, i32* %13)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @ERROR_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %102

35:                                               ; preds = %24
  %36 = load i32, i32* %13, align 4
  %37 = sub nsw i32 %36, 32768
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %39, i32* %6, align 4
  br label %102

40:                                               ; preds = %20
  %41 = load %struct.expr*, %struct.expr** %9, align 8
  %42 = getelementptr inbounds %struct.expr, %struct.expr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @expr_fetch_value(i32* %43, i32* %44, i32* %13)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @ERROR_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %102

51:                                               ; preds = %40
  %52 = load i32, i32* %13, align 4
  %53 = sub i32 %52, -2147483648
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %102

56:                                               ; preds = %20
  %57 = load %struct.expr*, %struct.expr** %9, align 8
  %58 = getelementptr inbounds %struct.expr, %struct.expr* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %62, i32* %6, align 4
  br label %102

63:                                               ; preds = %20
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load %struct.expr*, %struct.expr** %9, align 8
  %67 = getelementptr inbounds %struct.expr, %struct.expr* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @INT_evaluate_binary(%struct.TYPE_8__* %64, i32* %65, i32* %68, i32* %69, i32* %70)
  store i32 %71, i32* %6, align 4
  br label %102

72:                                               ; preds = %20
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.expr*, %struct.expr** %9, align 8
  %76 = getelementptr inbounds %struct.expr, %struct.expr* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @INT_evaluate_unary(%struct.TYPE_8__* %73, i32* %74, i32* %77, i32* %78, i32* %79)
  store i32 %80, i32* %6, align 4
  br label %102

81:                                               ; preds = %20
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.expr*, %struct.expr** %9, align 8
  %85 = getelementptr inbounds %struct.expr, %struct.expr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32*, i32** %10, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @STRCMP_Evaluate(%struct.TYPE_8__* %82, i32* %83, i32* %86, i32* %87, i32* %88)
  store i32 %89, i32* %6, align 4
  br label %102

90:                                               ; preds = %20
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = call i32 @MSI_RecordGetInteger(i32* %91, i32 %95)
  %97 = load i32*, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %98, i32* %6, align 4
  br label %102

99:                                               ; preds = %20
  %100 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %90, %81, %72, %63, %56, %51, %49, %35, %33, %16
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @expr_fetch_value(i32*, i32*, i32*) #1

declare dso_local i32 @INT_evaluate_binary(%struct.TYPE_8__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @INT_evaluate_unary(%struct.TYPE_8__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @STRCMP_Evaluate(%struct.TYPE_8__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
