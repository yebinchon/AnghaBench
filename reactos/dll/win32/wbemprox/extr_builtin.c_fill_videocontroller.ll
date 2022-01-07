; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_videocontroller.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_videocontroller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i8*, i64 }
%struct.expr = type { i32 }
%struct.record_videocontroller = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i64, i8*, i8*, i64, i8*, i32 }
%struct.TYPE_5__ = type { i8*, i32, i8* }

@fill_videocontroller.fmtW = internal constant [23 x i8] c"%u x %u x %I64u colors\00", align 16
@videocontroller_deviceidW = common dso_local global i8* null, align 8
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@IID_IDXGIFactory = common dso_local global i32 0, align 4
@videocontroller_dactypeW = common dso_local global i32 0, align 4
@videocontroller_driverdateW = common dso_local global i32 0, align 4
@videocontroller_driverversionW = common dso_local global i32 0, align 4
@videocontroller_statusW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_videocontroller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_videocontroller(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.record_videocontroller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [44 x i8], align 16
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* inttoptr (i64 1024 to i8*), i8** %12, align 8
  store i8* inttoptr (i64 768 to i8*), i8** %13, align 8
  store i8* inttoptr (i64 536870912 to i8*), i8** %14, align 8
  %18 = load i8*, i8** @videocontroller_deviceidW, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.table*, %struct.table** %4, align 8
  %21 = call i32 @resize_table(%struct.table* %20, i32 1, i32 144)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %24, i32* %3, align 4
  br label %163

25:                                               ; preds = %2
  %26 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 24)
  %27 = bitcast i32** %8 to i8**
  %28 = call i32 @CreateDXGIFactory(i32* @IID_IDXGIFactory, i8** %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %52

33:                                               ; preds = %25
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @IDXGIFactory_EnumAdapters(i32* %34, i32 0, i32** %9)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %52

40:                                               ; preds = %33
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @IDXGIAdapter_GetDesc(i32* %41, %struct.TYPE_5__* %10)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @SUCCEEDED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %15, align 8
  br label %51

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %51, %39, %32
  %53 = load %struct.table*, %struct.table** %4, align 8
  %54 = getelementptr inbounds %struct.table, %struct.table* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.record_videocontroller*
  store %struct.record_videocontroller* %56, %struct.record_videocontroller** %6, align 8
  %57 = load i32, i32* @videocontroller_dactypeW, align 4
  %58 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %59 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %58, i32 0, i32 21
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %62 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %61, i32 0, i32 20
  store i8* %60, i8** %62, align 8
  %63 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %64 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %63, i32 0, i32 0
  store i32 3, i32* %64, align 8
  %65 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %66 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %65, i32 0, i32 19
  store i64 0, i64* %66, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = call i8* @heap_strdupW(i8* %67)
  %69 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %70 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %69, i32 0, i32 18
  store i8* %68, i8** %70, align 8
  %71 = call i32 @get_bits_per_pixel(i8** %12, i8** %13)
  %72 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %73 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %76 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %75, i32 0, i32 17
  store i8* %74, i8** %76, align 8
  %77 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %78 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %77, i32 0, i32 16
  store i64 0, i64* %78, align 8
  %79 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %80 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %79, i32 0, i32 2
  store i32 2, i32* %80, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %83 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %82, i32 0, i32 15
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = call i8* @heap_strdupW(i8* %84)
  %86 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %87 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %86, i32 0, i32 14
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @videocontroller_deviceidW, align 8
  %89 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %90 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %89, i32 0, i32 13
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @videocontroller_driverdateW, align 4
  %92 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %93 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @videocontroller_driverversionW, align 4
  %95 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %96 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %95, i32 0, i32 11
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @get_installeddriver(i32 %98)
  %100 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %101 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %100, i32 0, i32 10
  store i32 %99, i32* %101, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = call i8* @heap_strdupW(i8* %102)
  %104 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %105 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  %106 = call i32 @get_pnpdeviceid(%struct.TYPE_5__* %10)
  %107 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %108 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @videocontroller_statusW, align 4
  %110 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %111 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %113 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %112, i32 0, i32 3
  store i32 2, i32* %113, align 4
  %114 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %115 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %114, i32 0, i32 4
  store i32 2, i32* %115, align 8
  %116 = getelementptr inbounds [44 x i8], [44 x i8]* %17, i64 0, i64 0
  %117 = load i8*, i8** %12, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %120 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 1, %121
  %123 = call i32 @wsprintfW(i8* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @fill_videocontroller.fmtW, i64 0, i64 0), i8* %117, i8* %118, i32 %122)
  %124 = getelementptr inbounds [44 x i8], [44 x i8]* %17, i64 0, i64 0
  %125 = call i8* @heap_strdupW(i8* %124)
  %126 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %127 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %126, i32 0, i32 6
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = call i8* @heap_strdupW(i8* %128)
  %130 = load %struct.record_videocontroller*, %struct.record_videocontroller** %6, align 8
  %131 = getelementptr inbounds %struct.record_videocontroller, %struct.record_videocontroller* %130, i32 0, i32 5
  store i8* %129, i8** %131, align 8
  %132 = load %struct.table*, %struct.table** %4, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load %struct.expr*, %struct.expr** %5, align 8
  %135 = call i32 @match_row(%struct.table* %132, i8* %133, %struct.expr* %134, i32* %16)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %52
  %138 = load %struct.table*, %struct.table** %4, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @free_row_values(%struct.table* %138, i8* %139)
  br label %144

141:                                              ; preds = %52
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %11, align 8
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %145)
  %147 = load i8*, i8** %11, align 8
  %148 = load %struct.table*, %struct.table** %4, align 8
  %149 = getelementptr inbounds %struct.table, %struct.table* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @IDXGIAdapter_Release(i32* %153)
  br label %155

155:                                              ; preds = %152, %144
  %156 = load i32*, i32** %8, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @IDXGIFactory_Release(i32* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %16, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %23
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @CreateDXGIFactory(i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDXGIFactory_EnumAdapters(i32*, i32, i32**) #1

declare dso_local i32 @IDXGIAdapter_GetDesc(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i8* @heap_strdupW(i8*) #1

declare dso_local i32 @get_bits_per_pixel(i8**, i8**) #1

declare dso_local i32 @get_installeddriver(i32) #1

declare dso_local i32 @get_pnpdeviceid(%struct.TYPE_5__*) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @match_row(%struct.table*, i8*, %struct.expr*, i32*) #1

declare dso_local i32 @free_row_values(%struct.table*, i8*) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i32 @IDXGIAdapter_Release(i32*) #1

declare dso_local i32 @IDXGIFactory_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
