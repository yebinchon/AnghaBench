; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_process.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32 }
%struct.expr = type { i32 }
%struct.record_process = type { i32, i64, i32, i32, i32, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32 }

@fill_process.fmtW = internal constant [3 x i8] c"%u\00", align 1
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@TH32CS_SNAPPROCESS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@process_get_owner = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_process(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca [11 x i8], align 1
  %7 = alloca %struct.record_process*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %13 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* @TH32CS_SNAPPROCESS, align 4
  %15 = call i64 @CreateToolhelp32Snapshot(i32 %14, i32 0)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %20, i32* %3, align 4
  br label %124

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 32, i32* %22, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @Process32FirstW(i64 %23, %struct.TYPE_4__* %8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %120

27:                                               ; preds = %21
  %28 = load %struct.table*, %struct.table** %4, align 8
  %29 = call i32 @resize_table(%struct.table* %28, i32 8, i32 72)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %120

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %109, %32
  %34 = load %struct.table*, %struct.table** %4, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @resize_table(%struct.table* %34, i32 %36, i32 72)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %120

40:                                               ; preds = %33
  %41 = load %struct.table*, %struct.table** %4, align 8
  %42 = getelementptr inbounds %struct.table, %struct.table* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to %struct.record_process*
  store %struct.record_process* %47, %struct.record_process** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @heap_strdupW(i8* %49)
  %51 = load %struct.record_process*, %struct.record_process** %7, align 8
  %52 = getelementptr inbounds %struct.record_process, %struct.record_process* %51, i32 0, i32 9
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @get_cmdline(i32 %54)
  %56 = load %struct.record_process*, %struct.record_process** %7, align 8
  %57 = getelementptr inbounds %struct.record_process, %struct.record_process* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @heap_strdupW(i8* %59)
  %61 = load %struct.record_process*, %struct.record_process** %7, align 8
  %62 = getelementptr inbounds %struct.record_process, %struct.record_process* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sprintfW(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fill_process.fmtW, i64 0, i64 0), i32 %65)
  %67 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %68 = call i8* @heap_strdupW(i8* %67)
  %69 = load %struct.record_process*, %struct.record_process** %7, align 8
  %70 = getelementptr inbounds %struct.record_process, %struct.record_process* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @heap_strdupW(i8* %72)
  %74 = load %struct.record_process*, %struct.record_process** %7, align 8
  %75 = getelementptr inbounds %struct.record_process, %struct.record_process* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.record_process*, %struct.record_process** %7, align 8
  %79 = getelementptr inbounds %struct.record_process, %struct.record_process* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.record_process*, %struct.record_process** %7, align 8
  %83 = getelementptr inbounds %struct.record_process, %struct.record_process* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.record_process*, %struct.record_process** %7, align 8
  %87 = getelementptr inbounds %struct.record_process, %struct.record_process* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.record_process*, %struct.record_process** %7, align 8
  %89 = getelementptr inbounds %struct.record_process, %struct.record_process* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @process_get_owner, align 4
  %91 = load %struct.record_process*, %struct.record_process** %7, align 8
  %92 = getelementptr inbounds %struct.record_process, %struct.record_process* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.table*, %struct.table** %4, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.expr*, %struct.expr** %5, align 8
  %96 = call i32 @match_row(%struct.table* %93, i32 %94, %struct.expr* %95, i32* %10)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %40
  %99 = load %struct.table*, %struct.table** %4, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @free_row_values(%struct.table* %99, i32 %100)
  br label %109

102:                                              ; preds = %40
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 72
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %102, %98
  %110 = load i64, i64* %9, align 8
  %111 = call i64 @Process32NextW(i64 %110, %struct.TYPE_4__* %8)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %33, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.table*, %struct.table** %4, align 8
  %118 = getelementptr inbounds %struct.table, %struct.table* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %113, %39, %31, %26
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @CloseHandle(i64 %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %19
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @CreateToolhelp32Snapshot(i32, i32) #1

declare dso_local i32 @Process32FirstW(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #1

declare dso_local i8* @heap_strdupW(i8*) #1

declare dso_local i32 @get_cmdline(i32) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @match_row(%struct.table*, i32, %struct.expr*, i32*) #1

declare dso_local i32 @free_row_values(%struct.table*, i32) #1

declare dso_local i64 @Process32NextW(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
