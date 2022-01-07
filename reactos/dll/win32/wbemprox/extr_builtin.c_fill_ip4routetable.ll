; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_ip4routetable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_ip4routetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, i64 }
%struct.expr = type { i32 }
%struct.record_ip4routetable = type { i8*, i32, i8* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_ip4routetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_ip4routetable(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.record_ip4routetable*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i64 @GetIpForwardTable(%struct.TYPE_7__* null, i64* %10, i32 %14)
  %16 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %19, i32* %3, align 4
  br label %118

20:                                               ; preds = %2
  %21 = load i64, i64* %10, align 8
  %22 = call %struct.TYPE_7__* @heap_alloc(i64 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %11, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %25, i32* %3, align 4
  br label %118

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i64 @GetIpForwardTable(%struct.TYPE_7__* %27, i64* %10, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = call i32 @heap_free(%struct.TYPE_7__* %32)
  %34 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %34, i32* %3, align 4
  br label %118

35:                                               ; preds = %26
  %36 = load %struct.table*, %struct.table** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @max(i64 %39, i32 1)
  %41 = call i32 @resize_table(%struct.table* %36, i32 %40, i32 24)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = call i32 @heap_free(%struct.TYPE_7__* %44)
  %46 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %46, i32* %3, align 4
  br label %118

47:                                               ; preds = %35
  store i64 0, i64* %7, align 8
  br label %48

48:                                               ; preds = %106, %47
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %109

54:                                               ; preds = %48
  %55 = load %struct.table*, %struct.table** %4, align 8
  %56 = getelementptr inbounds %struct.table, %struct.table* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %57, %58
  %60 = inttoptr i64 %59 to %struct.record_ip4routetable*
  store %struct.record_ip4routetable* %60, %struct.record_ip4routetable** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohl(i32 %67)
  %69 = call i8* @get_ip4_string(i32 %68)
  %70 = load %struct.record_ip4routetable*, %struct.record_ip4routetable** %6, align 8
  %71 = getelementptr inbounds %struct.record_ip4routetable, %struct.record_ip4routetable* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.record_ip4routetable*, %struct.record_ip4routetable** %6, align 8
  %80 = getelementptr inbounds %struct.record_ip4routetable, %struct.record_ip4routetable* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ntohl(i32 %87)
  %89 = call i8* @get_ip4_string(i32 %88)
  %90 = load %struct.record_ip4routetable*, %struct.record_ip4routetable** %6, align 8
  %91 = getelementptr inbounds %struct.record_ip4routetable, %struct.record_ip4routetable* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.table*, %struct.table** %4, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.expr*, %struct.expr** %5, align 8
  %95 = call i32 @match_row(%struct.table* %92, i64 %93, %struct.expr* %94, i32* %12)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %54
  %98 = load %struct.table*, %struct.table** %4, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @free_row_values(%struct.table* %98, i64 %99)
  br label %106

101:                                              ; preds = %54
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, 24
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %8, align 8
  br label %106

106:                                              ; preds = %101, %97
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %48

109:                                              ; preds = %48
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %110)
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.table*, %struct.table** %4, align 8
  %114 = getelementptr inbounds %struct.table, %struct.table* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = call i32 @heap_free(%struct.TYPE_7__* %115)
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %109, %43, %31, %24, %18
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @GetIpForwardTable(%struct.TYPE_7__*, i64*, i32) #1

declare dso_local %struct.TYPE_7__* @heap_alloc(i64) #1

declare dso_local i32 @heap_free(%struct.TYPE_7__*) #1

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i8* @get_ip4_string(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @match_row(%struct.table*, i64, %struct.expr*, i32*) #1

declare dso_local i32 @free_row_values(%struct.table*, i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
