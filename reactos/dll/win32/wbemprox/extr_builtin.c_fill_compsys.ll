; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_compsys.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_compsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, i64 }
%struct.expr = type { i32 }
%struct.record_computersystem = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@compsys_descriptionW = common dso_local global i32 0, align 4
@compsys_domainW = common dso_local global i32 0, align 4
@compsys_manufacturerW = common dso_local global i32 0, align 4
@compsys_modelW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_compsys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_compsys(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.record_computersystem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %9 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %9, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load %struct.table*, %struct.table** %4, align 8
  %11 = call i32 @resize_table(%struct.table* %10, i32 1, i32 48)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %14, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.table*, %struct.table** %4, align 8
  %17 = getelementptr inbounds %struct.table, %struct.table* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.record_computersystem*
  store %struct.record_computersystem* %19, %struct.record_computersystem** %6, align 8
  %20 = load i32, i32* @compsys_descriptionW, align 4
  %21 = load %struct.record_computersystem*, %struct.record_computersystem** %6, align 8
  %22 = getelementptr inbounds %struct.record_computersystem, %struct.record_computersystem* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @compsys_domainW, align 4
  %24 = load %struct.record_computersystem*, %struct.record_computersystem** %6, align 8
  %25 = getelementptr inbounds %struct.record_computersystem, %struct.record_computersystem* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load %struct.record_computersystem*, %struct.record_computersystem** %6, align 8
  %27 = getelementptr inbounds %struct.record_computersystem, %struct.record_computersystem* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @compsys_manufacturerW, align 4
  %29 = load %struct.record_computersystem*, %struct.record_computersystem** %6, align 8
  %30 = getelementptr inbounds %struct.record_computersystem, %struct.record_computersystem* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @compsys_modelW, align 4
  %32 = load %struct.record_computersystem*, %struct.record_computersystem** %6, align 8
  %33 = getelementptr inbounds %struct.record_computersystem, %struct.record_computersystem* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = call i32 (...) @get_computername()
  %35 = load %struct.record_computersystem*, %struct.record_computersystem** %6, align 8
  %36 = getelementptr inbounds %struct.record_computersystem, %struct.record_computersystem* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = call i32 @get_logical_processor_count(i32* null)
  %38 = load %struct.record_computersystem*, %struct.record_computersystem** %6, align 8
  %39 = getelementptr inbounds %struct.record_computersystem, %struct.record_computersystem* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = call i32 (...) @get_processor_count()
  %41 = load %struct.record_computersystem*, %struct.record_computersystem** %6, align 8
  %42 = getelementptr inbounds %struct.record_computersystem, %struct.record_computersystem* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = call i32 (...) @get_total_physical_memory()
  %44 = load %struct.record_computersystem*, %struct.record_computersystem** %6, align 8
  %45 = getelementptr inbounds %struct.record_computersystem, %struct.record_computersystem* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = call i32 (...) @get_username()
  %47 = load %struct.record_computersystem*, %struct.record_computersystem** %6, align 8
  %48 = getelementptr inbounds %struct.record_computersystem, %struct.record_computersystem* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.table*, %struct.table** %4, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.expr*, %struct.expr** %5, align 8
  %52 = call i32 @match_row(%struct.table* %49, i64 %50, %struct.expr* %51, i32* %7)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %15
  %55 = load %struct.table*, %struct.table** %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @free_row_values(%struct.table* %55, i64 %56)
  br label %61

58:                                               ; preds = %15
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.table*, %struct.table** %4, align 8
  %66 = getelementptr inbounds %struct.table, %struct.table* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #1

declare dso_local i32 @get_computername(...) #1

declare dso_local i32 @get_logical_processor_count(i32*) #1

declare dso_local i32 @get_processor_count(...) #1

declare dso_local i32 @get_total_physical_memory(...) #1

declare dso_local i32 @get_username(...) #1

declare dso_local i32 @match_row(%struct.table*, i64, %struct.expr*, i32*) #1

declare dso_local i32 @free_row_values(%struct.table*, i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
