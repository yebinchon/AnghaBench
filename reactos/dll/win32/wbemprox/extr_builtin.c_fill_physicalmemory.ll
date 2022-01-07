; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_physicalmemory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_physicalmemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, i64 }
%struct.expr = type { i32 }
%struct.record_physicalmemory = type { i32, i32 }

@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_physicalmemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_physicalmemory(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.record_physicalmemory*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %9 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %9, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load %struct.table*, %struct.table** %4, align 8
  %11 = call i32 @resize_table(%struct.table* %10, i32 1, i32 8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.table*, %struct.table** %4, align 8
  %17 = getelementptr inbounds %struct.table, %struct.table* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.record_physicalmemory*
  store %struct.record_physicalmemory* %19, %struct.record_physicalmemory** %6, align 8
  %20 = call i32 (...) @get_total_physical_memory()
  %21 = load %struct.record_physicalmemory*, %struct.record_physicalmemory** %6, align 8
  %22 = getelementptr inbounds %struct.record_physicalmemory, %struct.record_physicalmemory* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.record_physicalmemory*, %struct.record_physicalmemory** %6, align 8
  %24 = getelementptr inbounds %struct.record_physicalmemory, %struct.record_physicalmemory* %23, i32 0, i32 0
  store i32 9, i32* %24, align 4
  %25 = load %struct.table*, %struct.table** %4, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.expr*, %struct.expr** %5, align 8
  %28 = call i32 @match_row(%struct.table* %25, i64 %26, %struct.expr* %27, i32* %7)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %15
  %31 = load %struct.table*, %struct.table** %4, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @free_row_values(%struct.table* %31, i64 %32)
  br label %37

34:                                               ; preds = %15
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.table*, %struct.table** %4, align 8
  %42 = getelementptr inbounds %struct.table, %struct.table* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #1

declare dso_local i32 @get_total_physical_memory(...) #1

declare dso_local i32 @match_row(%struct.table*, i64, %struct.expr*, i32*) #1

declare dso_local i32 @free_row_values(%struct.table*, i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
