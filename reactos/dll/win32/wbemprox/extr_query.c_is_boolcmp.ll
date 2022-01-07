; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_is_boolcmp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_is_boolcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex_expr = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@CIM_BOOLEAN = common dso_local global i64 0, align 8
@EXPR_PROPVAL = common dso_local global i64 0, align 8
@EXPR_SVAL = common dso_local global i64 0, align 8
@EXPR_BVAL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.complex_expr*, i64, i64)* @is_boolcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_boolcmp(%struct.complex_expr* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.complex_expr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.complex_expr* %0, %struct.complex_expr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @CIM_BOOLEAN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %3
  %12 = load %struct.complex_expr*, %struct.complex_expr** %5, align 8
  %13 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EXPR_PROPVAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %11
  %20 = load %struct.complex_expr*, %struct.complex_expr** %5, align 8
  %21 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EXPR_SVAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.complex_expr*, %struct.complex_expr** %5, align 8
  %29 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EXPR_BVAL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27, %19
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %4, align 4
  br label %70

37:                                               ; preds = %27, %11, %3
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @CIM_BOOLEAN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load %struct.complex_expr*, %struct.complex_expr** %5, align 8
  %43 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EXPR_PROPVAL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %41
  %50 = load %struct.complex_expr*, %struct.complex_expr** %5, align 8
  %51 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EXPR_SVAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.complex_expr*, %struct.complex_expr** %5, align 8
  %59 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EXPR_BVAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57, %49
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %4, align 4
  br label %70

67:                                               ; preds = %57, %41, %37
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %65, %35
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
