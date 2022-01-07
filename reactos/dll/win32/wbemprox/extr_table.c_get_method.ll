; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_get_method.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_get_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@COL_FLAG_METHOD = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@WBEM_E_INVALID_METHOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_method(%struct.table* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.table* %0, %struct.table** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %66, %3
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.table*, %struct.table** %5, align 8
  %15 = getelementptr inbounds %struct.table, %struct.table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %12
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %62, %18
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.table*, %struct.table** %5, align 8
  %22 = getelementptr inbounds %struct.table, %struct.table* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %19
  %26 = load %struct.table*, %struct.table** %5, align 8
  %27 = getelementptr inbounds %struct.table, %struct.table* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @COL_FLAG_METHOD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %25
  %37 = load %struct.table*, %struct.table** %5, align 8
  %38 = getelementptr inbounds %struct.table, %struct.table* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @strcmpW(i32 %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %36
  %48 = load %struct.table*, %struct.table** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @get_value(%struct.table* %48, i64 %49, i64 %50, i64* %11)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @S_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %71

56:                                               ; preds = %47
  %57 = load i64, i64* %11, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32**, i32*** %7, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32, i32* @S_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %71

61:                                               ; preds = %36, %25
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %19

65:                                               ; preds = %19
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %8, align 8
  br label %12

69:                                               ; preds = %12
  %70 = load i32, i32* @WBEM_E_INVALID_METHOD, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %56, %54
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @strcmpW(i32, i32*) #1

declare dso_local i32 @get_value(%struct.table*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
