; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_eval_unary.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_eval_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.complex_expr = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@OP_NOT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"unknown operator %u\0A\00", align 1
@WBEM_E_INVALID_QUERY = common dso_local global i64 0, align 8
@CIM_TYPE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.table*, i64, %struct.complex_expr*, i32*, i64*)* @eval_unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval_unary(%struct.table* %0, i64 %1, %struct.complex_expr* %2, i32* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.complex_expr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.complex_expr* %2, %struct.complex_expr** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %16 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @OP_NOT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %5
  %21 = load %struct.table*, %struct.table** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %24 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i64*, i64** %11, align 8
  %27 = call i64 @eval_cond(%struct.table* %21, i64 %22, %struct.TYPE_8__* %25, i32* %14, i64* %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i64, i64* %12, align 8
  store i64 %32, i64* %6, align 8
  br label %97

33:                                               ; preds = %20
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* @S_OK, align 8
  store i64 %39, i64* %6, align 8
  br label %97

40:                                               ; preds = %5
  %41 = load %struct.table*, %struct.table** %7, align 8
  %42 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %43 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @get_column_index(%struct.table* %41, i32 %49, i64* %13)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %6, align 8
  br label %97

56:                                               ; preds = %40
  %57 = load %struct.table*, %struct.table** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i64 @get_value(%struct.table* %57, i64 %58, i64 %59, i32* %14)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i64, i64* %12, align 8
  store i64 %65, i64* %6, align 8
  br label %97

66:                                               ; preds = %56
  %67 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %68 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %79 [
    i32 129, label %70
    i32 128, label %76
  ]

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  br label %85

76:                                               ; preds = %66
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  br label %85

79:                                               ; preds = %66
  %80 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %81 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i64, i64* @WBEM_E_INVALID_QUERY, align 8
  store i64 %84, i64* %6, align 8
  br label %97

85:                                               ; preds = %76, %70
  %86 = load %struct.table*, %struct.table** %7, align 8
  %87 = getelementptr inbounds %struct.table, %struct.table* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CIM_TYPE_MASK, align 8
  %94 = and i64 %92, %93
  %95 = load i64*, i64** %11, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i64, i64* @S_OK, align 8
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %85, %79, %64, %54, %33, %31
  %98 = load i64, i64* %6, align 8
  ret i64 %98
}

declare dso_local i64 @eval_cond(%struct.table*, i64, %struct.TYPE_8__*, i32*, i64*) #1

declare dso_local i64 @get_column_index(%struct.table*, i32, i64*) #1

declare dso_local i64 @get_value(%struct.table*, i64, i64, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
