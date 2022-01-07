; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_free_row_values.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_free_row_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@COL_FLAG_DYNAMIC = common dso_local global i32 0, align 4
@COL_TYPE_MASK = common dso_local global i64 0, align 8
@CIM_STRING = common dso_local global i64 0, align 8
@CIM_DATETIME = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@CIM_FLAG_ARRAY = common dso_local global i64 0, align 8
@CIM_TYPE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_row_values(%struct.table* %0, i64 %1) #0 {
  %3 = alloca %struct.table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.table* %0, %struct.table** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %78, %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.table*, %struct.table** %3, align 8
  %11 = getelementptr inbounds %struct.table, %struct.table* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %81

14:                                               ; preds = %8
  %15 = load %struct.table*, %struct.table** %3, align 8
  %16 = getelementptr inbounds %struct.table, %struct.table* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @COL_FLAG_DYNAMIC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %78

26:                                               ; preds = %14
  %27 = load %struct.table*, %struct.table** %3, align 8
  %28 = getelementptr inbounds %struct.table, %struct.table* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @COL_TYPE_MASK, align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @CIM_STRING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %26
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @CIM_DATETIME, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40, %26
  %45 = load %struct.table*, %struct.table** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @get_value(%struct.table* %45, i64 %46, i64 %47, i64* %7)
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i64, i64* %7, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @heap_free(i8* %53)
  br label %55

55:                                               ; preds = %51, %44
  br label %77

56:                                               ; preds = %40
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @CIM_FLAG_ARRAY, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load %struct.table*, %struct.table** %3, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @get_value(%struct.table* %62, i64 %63, i64 %64, i64* %7)
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i64, i64* %7, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @CIM_TYPE_MASK, align 8
  %73 = and i64 %71, %72
  %74 = call i32 @destroy_array(i8* %70, i64 %73)
  br label %75

75:                                               ; preds = %68, %61
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %25
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %5, align 8
  br label %8

81:                                               ; preds = %8
  ret void
}

declare dso_local i64 @get_value(%struct.table*, i64, i64, i64*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @destroy_array(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
