; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_free_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_free_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32, %struct.table*, i32, i64, i64 }
%struct.column = type { i32 }

@TABLE_FLAG_DYNAMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"destroying %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_table(%struct.table* %0) #0 {
  %2 = alloca %struct.table*, align 8
  store %struct.table* %0, %struct.table** %2, align 8
  %3 = load %struct.table*, %struct.table** %2, align 8
  %4 = icmp ne %struct.table* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %40

6:                                                ; preds = %1
  %7 = load %struct.table*, %struct.table** %2, align 8
  %8 = call i32 @clear_table(%struct.table* %7)
  %9 = load %struct.table*, %struct.table** %2, align 8
  %10 = getelementptr inbounds %struct.table, %struct.table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TABLE_FLAG_DYNAMIC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %6
  %16 = load %struct.table*, %struct.table** %2, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.table* %16)
  %18 = load %struct.table*, %struct.table** %2, align 8
  %19 = getelementptr inbounds %struct.table, %struct.table* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.table*
  %22 = call i32 @heap_free(%struct.table* %21)
  %23 = load %struct.table*, %struct.table** %2, align 8
  %24 = getelementptr inbounds %struct.table, %struct.table* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.column*
  %27 = load %struct.table*, %struct.table** %2, align 8
  %28 = getelementptr inbounds %struct.table, %struct.table* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @free_columns(%struct.column* %26, i32 %29)
  %31 = load %struct.table*, %struct.table** %2, align 8
  %32 = getelementptr inbounds %struct.table, %struct.table* %31, i32 0, i32 2
  %33 = load %struct.table*, %struct.table** %32, align 8
  %34 = call i32 @heap_free(%struct.table* %33)
  %35 = load %struct.table*, %struct.table** %2, align 8
  %36 = getelementptr inbounds %struct.table, %struct.table* %35, i32 0, i32 1
  %37 = call i32 @list_remove(i32* %36)
  %38 = load %struct.table*, %struct.table** %2, align 8
  %39 = call i32 @heap_free(%struct.table* %38)
  br label %40

40:                                               ; preds = %5, %15, %6
  ret void
}

declare dso_local i32 @clear_table(%struct.table*) #1

declare dso_local i32 @TRACE(i8*, %struct.table*) #1

declare dso_local i32 @heap_free(%struct.table*) #1

declare dso_local i32 @free_columns(%struct.column*, i32) #1

declare dso_local i32 @list_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
