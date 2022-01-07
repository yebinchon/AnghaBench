; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_os.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_os.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, i64 }
%struct.expr = type { i32 }
%struct.record_operatingsystem = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64* }

@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@os_installdateW = common dso_local global i32 0, align 4
@os_serialnumberW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_os to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_os(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.record_operatingsystem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i64, align 8
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %10 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %10, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %11 = load %struct.table*, %struct.table** %4, align 8
  %12 = call i32 @resize_table(%struct.table* %11, i32 1, i32 104)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %15, i32* %3, align 4
  br label %131

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 24, i32* %17, align 8
  %18 = bitcast %struct.TYPE_5__* %8 to i32*
  %19 = call i32 @GetVersionExW(i32* %18)
  %20 = load %struct.table*, %struct.table** %4, align 8
  %21 = getelementptr inbounds %struct.table, %struct.table* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.record_operatingsystem*
  store %struct.record_operatingsystem* %23, %struct.record_operatingsystem** %6, align 8
  %24 = call i32 @get_osbuildnumber(%struct.TYPE_5__* %8)
  %25 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %26 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %25, i32 0, i32 23
  store i32 %24, i32* %26, align 8
  %27 = call i32 @get_oscaption(%struct.TYPE_5__* %8)
  %28 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %29 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %28, i32 0, i32 14
  store i32 %27, i32* %29, align 8
  %30 = call i32 (...) @get_codeset()
  %31 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %32 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %31, i32 0, i32 22
  store i32 %30, i32* %32, align 4
  %33 = call i32 (...) @get_countrycode()
  %34 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %35 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %34, i32 0, i32 21
  store i32 %33, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %16
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %43 = load i64*, i64** %42, align 8
  %44 = call i32* @heap_strdupW(i64* %43)
  br label %46

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32* [ %44, %41 ], [ null, %45 ]
  %48 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %49 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %48, i32 0, i32 20
  store i32* %47, i32** %49, align 8
  %50 = call i32 (...) @get_available_physical_memory()
  %51 = sdiv i32 %50, 1024
  %52 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %53 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @os_installdateW, align 4
  %55 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %56 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %55, i32 0, i32 19
  store i32 %54, i32* %56, align 4
  %57 = call i32 (...) @get_lastbootuptime()
  %58 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %59 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %58, i32 0, i32 18
  store i32 %57, i32* %59, align 8
  %60 = call i32 (...) @get_localdatetime()
  %61 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %62 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %61, i32 0, i32 17
  store i32 %60, i32* %62, align 4
  %63 = call i32 (...) @get_locale()
  %64 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %65 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %64, i32 0, i32 16
  store i32 %63, i32* %65, align 8
  %66 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %67 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @get_osname(i32 %68)
  %70 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %71 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %70, i32 0, i32 15
  store i32 %69, i32* %71, align 4
  %72 = call i32 (...) @get_osarchitecture()
  %73 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %74 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %73, i32 0, i32 13
  store i32 %72, i32* %74, align 4
  %75 = call i32 (...) @GetSystemDefaultLangID()
  %76 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %77 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 8
  %78 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %79 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %78, i32 0, i32 1
  store i32 2461140, i32* %79, align 4
  %80 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %81 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %80, i32 0, i32 2
  store i32 18, i32* %81, align 8
  %82 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %83 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %82, i32 0, i32 3
  store i32 -1, i32* %83, align 4
  %84 = load i32, i32* @os_serialnumberW, align 4
  %85 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %86 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %90 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %94 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 4
  %95 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %96 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %95, i32 0, i32 4
  store i32 272, i32* %96, align 8
  %97 = call i32 (...) @get_systemdirectory()
  %98 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %99 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = call i32 (...) @get_total_physical_memory()
  %101 = sdiv i32 %100, 1024
  %102 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %103 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %105 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %108 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = call i32 @get_osversion(%struct.TYPE_5__* %8)
  %110 = load %struct.record_operatingsystem*, %struct.record_operatingsystem** %6, align 8
  %111 = getelementptr inbounds %struct.record_operatingsystem, %struct.record_operatingsystem* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  %112 = load %struct.table*, %struct.table** %4, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load %struct.expr*, %struct.expr** %5, align 8
  %115 = call i32 @match_row(%struct.table* %112, i64 %113, %struct.expr* %114, i32* %7)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %46
  %118 = load %struct.table*, %struct.table** %4, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @free_row_values(%struct.table* %118, i64 %119)
  br label %124

121:                                              ; preds = %46
  %122 = load i64, i64* %9, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %9, align 8
  br label %124

124:                                              ; preds = %121, %117
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %125)
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.table*, %struct.table** %4, align 8
  %129 = getelementptr inbounds %struct.table, %struct.table* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %124, %14
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #1

declare dso_local i32 @GetVersionExW(i32*) #1

declare dso_local i32 @get_osbuildnumber(%struct.TYPE_5__*) #1

declare dso_local i32 @get_oscaption(%struct.TYPE_5__*) #1

declare dso_local i32 @get_codeset(...) #1

declare dso_local i32 @get_countrycode(...) #1

declare dso_local i32* @heap_strdupW(i64*) #1

declare dso_local i32 @get_available_physical_memory(...) #1

declare dso_local i32 @get_lastbootuptime(...) #1

declare dso_local i32 @get_localdatetime(...) #1

declare dso_local i32 @get_locale(...) #1

declare dso_local i32 @get_osname(i32) #1

declare dso_local i32 @get_osarchitecture(...) #1

declare dso_local i32 @GetSystemDefaultLangID(...) #1

declare dso_local i32 @get_systemdirectory(...) #1

declare dso_local i32 @get_total_physical_memory(...) #1

declare dso_local i32 @get_osversion(%struct.TYPE_5__*) #1

declare dso_local i32 @match_row(%struct.table*, i64, %struct.expr*, i32*) #1

declare dso_local i32 @free_row_values(%struct.table*, i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
