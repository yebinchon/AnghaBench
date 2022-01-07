; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_networkadapter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_networkadapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, i64 }
%struct.expr = type { i32 }
%struct.record_networkadapter = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_9__ = type { i64, i8*, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@fill_networkadapter.fmtW = internal constant [3 x i8] c"%u\00", align 1
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@ERROR_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@IF_TYPE_SOFTWARE_LOOPBACK = common dso_local global i64 0, align 8
@compsys_manufacturerW = common dso_local global i32 0, align 4
@networkadapter_pnpdeviceidW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_networkadapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_networkadapter(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca [11 x i8], align 1
  %7 = alloca %struct.record_networkadapter*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %17 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* @AF_UNSPEC, align 4
  %19 = call i64 @GetAdaptersAddresses(i32 %18, i32 0, i32* null, %struct.TYPE_9__* null, i64* %13)
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %14, align 8
  %21 = load i64, i64* @ERROR_BUFFER_OVERFLOW, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %24, i32* %3, align 4
  br label %177

25:                                               ; preds = %2
  %26 = load i64, i64* %13, align 8
  %27 = call %struct.TYPE_9__* @heap_alloc(i64 %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %9, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %30, i32* %3, align 4
  br label %177

31:                                               ; preds = %25
  %32 = load i32, i32* @AF_UNSPEC, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = call i64 @GetAdaptersAddresses(i32 %32, i32 0, i32* null, %struct.TYPE_9__* %33, i64* %13)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = call i32 @heap_free(%struct.TYPE_9__* %37)
  %39 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %39, i32* %3, align 4
  br label %177

40:                                               ; preds = %31
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %8, align 8
  br label %42

42:                                               ; preds = %55, %40
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IF_TYPE_SOFTWARE_LOOPBACK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64, i64* %12, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %8, align 8
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.table*, %struct.table** %4, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @resize_table(%struct.table* %60, i64 %61, i32 56)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = call i32 @heap_free(%struct.TYPE_9__* %65)
  %67 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %67, i32* %3, align 4
  br label %177

68:                                               ; preds = %59
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %8, align 8
  br label %70

70:                                               ; preds = %164, %68
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = icmp ne %struct.TYPE_9__* %71, null
  br i1 %72, label %73, label %168

73:                                               ; preds = %70
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IF_TYPE_SOFTWARE_LOOPBACK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %164

80:                                               ; preds = %73
  %81 = load %struct.table*, %struct.table** %4, align 8
  %82 = getelementptr inbounds %struct.table, %struct.table* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = add nsw i64 %83, %84
  %86 = inttoptr i64 %85 to %struct.record_networkadapter*
  store %struct.record_networkadapter* %86, %struct.record_networkadapter** %7, align 8
  %87 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sprintfW(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fill_networkadapter.fmtW, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @get_adaptertype(i64 %96, i32* %15)
  %98 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %99 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 8
  %100 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %101 = call i8* @heap_strdupW(i8* %100)
  %102 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %103 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %102, i32 0, i32 9
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %110 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %117 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @get_mac_address(i32 %120, i32 %123)
  %125 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %126 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @compsys_manufacturerW, align 4
  %128 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %129 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @heap_strdupW(i8* %132)
  %134 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %135 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @get_connection_status(i32 %138)
  %140 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %141 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %144 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @networkadapter_pnpdeviceidW, align 4
  %146 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %147 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.record_networkadapter*, %struct.record_networkadapter** %7, align 8
  %149 = getelementptr inbounds %struct.record_networkadapter, %struct.record_networkadapter* %148, i32 0, i32 1
  store i32 1000000, i32* %149, align 4
  %150 = load %struct.table*, %struct.table** %4, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load %struct.expr*, %struct.expr** %5, align 8
  %153 = call i32 @match_row(%struct.table* %150, i64 %151, %struct.expr* %152, i32* %16)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %80
  %156 = load %struct.table*, %struct.table** %4, align 8
  %157 = load i64, i64* %10, align 8
  %158 = call i32 @free_row_values(%struct.table* %156, i64 %157)
  br label %164

159:                                              ; preds = %80
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %160, 56
  store i64 %161, i64* %11, align 8
  %162 = load i64, i64* %10, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %10, align 8
  br label %164

164:                                              ; preds = %159, %155, %79
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 6
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  store %struct.TYPE_9__* %167, %struct.TYPE_9__** %8, align 8
  br label %70

168:                                              ; preds = %70
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %169)
  %171 = load i64, i64* %10, align 8
  %172 = load %struct.table*, %struct.table** %4, align 8
  %173 = getelementptr inbounds %struct.table, %struct.table* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %175 = call i32 @heap_free(%struct.TYPE_9__* %174)
  %176 = load i32, i32* %16, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %168, %64, %36, %29, %23
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i64 @GetAdaptersAddresses(i32, i32, i32*, %struct.TYPE_9__*, i64*) #1

declare dso_local %struct.TYPE_9__* @heap_alloc(i64) #1

declare dso_local i32 @heap_free(%struct.TYPE_9__*) #1

declare dso_local i32 @resize_table(%struct.table*, i64, i32) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @get_adaptertype(i64, i32*) #1

declare dso_local i8* @heap_strdupW(i8*) #1

declare dso_local i32 @get_mac_address(i32, i32) #1

declare dso_local i32 @get_connection_status(i32) #1

declare dso_local i32 @match_row(%struct.table*, i64, %struct.expr*, i32*) #1

declare dso_local i32 @free_row_values(%struct.table*, i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
