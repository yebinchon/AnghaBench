; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_get_method_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_get_method_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@COL_FLAG_METHOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_method_name(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.table* @grab_table(i32* %10)
  store %struct.table* %11, %struct.table** %6, align 8
  %12 = icmp ne %struct.table* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %58

14:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %52, %14
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.table*, %struct.table** %6, align 8
  %18 = getelementptr inbounds %struct.table, %struct.table* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load %struct.table*, %struct.table** %6, align 8
  %23 = getelementptr inbounds %struct.table, %struct.table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @COL_FLAG_METHOD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %21
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.table*, %struct.table** %6, align 8
  %38 = getelementptr inbounds %struct.table, %struct.table* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @SysAllocString(i32 %43)
  store i32* %44, i32** %9, align 8
  %45 = load %struct.table*, %struct.table** %6, align 8
  %46 = call i32 @release_table(%struct.table* %45)
  %47 = load i32*, i32** %9, align 8
  store i32* %47, i32** %3, align 8
  br label %58

48:                                               ; preds = %32
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %48, %21
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %15

55:                                               ; preds = %15
  %56 = load %struct.table*, %struct.table** %6, align 8
  %57 = call i32 @release_table(%struct.table* %56)
  store i32* null, i32** %3, align 8
  br label %58

58:                                               ; preds = %55, %36, %13
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local %struct.table* @grab_table(i32*) #1

declare dso_local i32* @SysAllocString(i32) #1

declare dso_local i32 @release_table(%struct.table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
