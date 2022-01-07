; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_printer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, i64 }
%struct.expr = type { i32 }
%struct.record_printer = type { i32, i8*, i64, i8*, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@fill_printer.fmtW = internal constant [10 x i8] c"Printer%d\00", align 1
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@PRINTER_ENUM_LOCAL = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_printer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_printer(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.record_printer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [20 x i8], align 16
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %15 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %15, i32* %7, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %17 = call i32 @EnumPrintersW(i32 %16, i32* null, i32 2, i32* null, i64 0, i64* %12, i64* %11)
  %18 = call i64 (...) @GetLastError()
  %19 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %22, i32* %3, align 4
  br label %148

23:                                               ; preds = %2
  %24 = load i64, i64* %12, align 8
  %25 = call %struct.TYPE_10__* @heap_alloc(i64 %24)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %8, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %28, i32* %3, align 4
  br label %148

29:                                               ; preds = %23
  %30 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = bitcast %struct.TYPE_10__* %31 to i32*
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @EnumPrintersW(i32 %30, i32* null, i32 2, i32* %32, i64 %33, i64* %12, i64* %11)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = call i32 @heap_free(%struct.TYPE_10__* %37)
  %39 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %39, i32* %3, align 4
  br label %148

40:                                               ; preds = %29
  %41 = load %struct.table*, %struct.table** %4, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @resize_table(%struct.table* %41, i64 %42, i32 72)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = call i32 @heap_free(%struct.TYPE_10__* %46)
  %48 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %48, i32* %3, align 4
  br label %148

49:                                               ; preds = %40
  store i64 0, i64* %9, align 8
  br label %50

50:                                               ; preds = %136, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %139

54:                                               ; preds = %50
  %55 = load %struct.table*, %struct.table** %4, align 8
  %56 = getelementptr inbounds %struct.table, %struct.table* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %57, %58
  %60 = inttoptr i64 %59 to %struct.record_printer*
  store %struct.record_printer* %60, %struct.record_printer** %6, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.record_printer*, %struct.record_printer** %6, align 8
  %67 = getelementptr inbounds %struct.record_printer, %struct.record_printer* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @sprintfW(i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @fill_printer.fmtW, i64 0, i64 0), i64 %69)
  %71 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %72 = call i8* @heap_strdupW(i8* %71)
  %73 = load %struct.record_printer*, %struct.record_printer** %6, align 8
  %74 = getelementptr inbounds %struct.record_printer, %struct.record_printer* %73, i32 0, i32 7
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @heap_strdupW(i8* %79)
  %81 = load %struct.record_printer*, %struct.record_printer** %6, align 8
  %82 = getelementptr inbounds %struct.record_printer, %struct.record_printer* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.record_printer*, %struct.record_printer** %6, align 8
  %93 = getelementptr inbounds %struct.record_printer, %struct.record_printer* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load %struct.record_printer*, %struct.record_printer** %6, align 8
  %95 = getelementptr inbounds %struct.record_printer, %struct.record_printer* %94, i32 0, i32 0
  store i32 -1, i32* %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @heap_strdupW(i8* %100)
  %102 = load %struct.record_printer*, %struct.record_printer** %6, align 8
  %103 = getelementptr inbounds %struct.record_printer, %struct.record_printer* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @heap_strdupW(i8* %108)
  %110 = load %struct.record_printer*, %struct.record_printer** %6, align 8
  %111 = getelementptr inbounds %struct.record_printer, %struct.record_printer* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.record_printer*, %struct.record_printer** %6, align 8
  %113 = getelementptr inbounds %struct.record_printer, %struct.record_printer* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @heap_strdupW(i8* %118)
  %120 = load %struct.record_printer*, %struct.record_printer** %6, align 8
  %121 = getelementptr inbounds %struct.record_printer, %struct.record_printer* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.table*, %struct.table** %4, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.expr*, %struct.expr** %5, align 8
  %125 = call i32 @match_row(%struct.table* %122, i64 %123, %struct.expr* %124, i32* %7)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %54
  %128 = load %struct.table*, %struct.table** %4, align 8
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @free_row_values(%struct.table* %128, i64 %129)
  br label %136

131:                                              ; preds = %54
  %132 = load i64, i64* %10, align 8
  %133 = add i64 %132, 72
  store i64 %133, i64* %10, align 8
  %134 = load i64, i64* %13, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %13, align 8
  br label %136

136:                                              ; preds = %131, %127
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %9, align 8
  br label %50

139:                                              ; preds = %50
  %140 = load i64, i64* %13, align 8
  %141 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %140)
  %142 = load i64, i64* %13, align 8
  %143 = load %struct.table*, %struct.table** %4, align 8
  %144 = getelementptr inbounds %struct.table, %struct.table* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %146 = call i32 @heap_free(%struct.TYPE_10__* %145)
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %139, %45, %36, %27, %21
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @EnumPrintersW(i32, i32*, i32, i32*, i64, i64*, i64*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local %struct.TYPE_10__* @heap_alloc(i64) #1

declare dso_local i32 @heap_free(%struct.TYPE_10__*) #1

declare dso_local i32 @resize_table(%struct.table*, i64, i32) #1

declare dso_local i32 @sprintfW(i8*, i8*, i64) #1

declare dso_local i8* @heap_strdupW(i8*) #1

declare dso_local i32 @match_row(%struct.table*, i64, %struct.expr*, i32*) #1

declare dso_local i32 @free_row_values(%struct.table*, i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
