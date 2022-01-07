; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_eval_cond.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_eval_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32 }
%struct.expr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@CIM_UINT64 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@CIM_STRING = common dso_local global i32 0, align 4
@CIM_BOOLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid expression type\0A\00", align 1
@WBEM_E_INVALID_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eval_cond(%struct.table* %0, i32 %1, %struct.expr* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.expr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.table* %0, %struct.table** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.expr* %2, %struct.expr** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.expr*, %struct.expr** %9, align 8
  %13 = icmp ne %struct.expr* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = load i32*, i32** %10, align 8
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @CIM_UINT64, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %6, align 4
  br label %82

19:                                               ; preds = %5
  %20 = load %struct.expr*, %struct.expr** %9, align 8
  %21 = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %78 [
    i32 132, label %23
    i32 128, label %32
    i32 130, label %41
    i32 129, label %51
    i32 131, label %60
    i32 133, label %69
  ]

23:                                               ; preds = %19
  %24 = load %struct.table*, %struct.table** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.expr*, %struct.expr** %9, align 8
  %27 = getelementptr inbounds %struct.expr, %struct.expr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @eval_binary(%struct.table* %24, i32 %25, i32* %28, i32* %29, i32* %30)
  store i32 %31, i32* %6, align 4
  br label %82

32:                                               ; preds = %19
  %33 = load %struct.table*, %struct.table** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.expr*, %struct.expr** %9, align 8
  %36 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @eval_unary(%struct.table* %33, i32 %34, i32* %37, i32* %38, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %82

41:                                               ; preds = %19
  %42 = load %struct.table*, %struct.table** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.expr*, %struct.expr** %9, align 8
  %45 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @eval_propval(%struct.table* %42, i32 %43, i32 %47, i32* %48, i32* %49)
  store i32 %50, i32* %6, align 4
  br label %82

51:                                               ; preds = %19
  %52 = load %struct.expr*, %struct.expr** %9, align 8
  %53 = getelementptr inbounds %struct.expr, %struct.expr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @CIM_STRING, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @S_OK, align 4
  store i32 %59, i32* %6, align 4
  br label %82

60:                                               ; preds = %19
  %61 = load %struct.expr*, %struct.expr** %9, align 8
  %62 = getelementptr inbounds %struct.expr, %struct.expr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @CIM_UINT64, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %6, align 4
  br label %82

69:                                               ; preds = %19
  %70 = load %struct.expr*, %struct.expr** %9, align 8
  %71 = getelementptr inbounds %struct.expr, %struct.expr* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @CIM_BOOLEAN, align 4
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @S_OK, align 4
  store i32 %77, i32* %6, align 4
  br label %82

78:                                               ; preds = %19
  %79 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78
  %81 = load i32, i32* @WBEM_E_INVALID_QUERY, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %69, %60, %51, %41, %32, %23, %14
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @eval_binary(%struct.table*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @eval_unary(%struct.table*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @eval_propval(%struct.table*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
