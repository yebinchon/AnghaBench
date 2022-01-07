; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_networkadapterconfig.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_networkadapterconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, i64 }
%struct.expr = type { i32 }
%struct.record_networkadapterconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@GAA_FLAG_INCLUDE_ALL_GATEWAYS = common dso_local global i32 0, align 4
@ERROR_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@IF_TYPE_SOFTWARE_LOOPBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_networkadapterconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_networkadapterconfig(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.record_networkadapterconfig*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @AF_UNSPEC, align 4
  %17 = load i32, i32* @GAA_FLAG_INCLUDE_ALL_GATEWAYS, align 4
  %18 = call i64 @GetAdaptersAddresses(i32 %16, i32 %17, i32* null, %struct.TYPE_9__* null, i64* %12)
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @ERROR_BUFFER_OVERFLOW, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %23, i32* %3, align 4
  br label %178

24:                                               ; preds = %2
  %25 = load i64, i64* %12, align 8
  %26 = call %struct.TYPE_9__* @heap_alloc(i64 %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %8, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %29, i32* %3, align 4
  br label %178

30:                                               ; preds = %24
  %31 = load i32, i32* @AF_UNSPEC, align 4
  %32 = load i32, i32* @GAA_FLAG_INCLUDE_ALL_GATEWAYS, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = call i64 @GetAdaptersAddresses(i32 %31, i32 %32, i32* null, %struct.TYPE_9__* %33, i64* %12)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = call i32 @heap_free(%struct.TYPE_9__* %37)
  %39 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %39, i32* %3, align 4
  br label %178

40:                                               ; preds = %30
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %7, align 8
  br label %42

42:                                               ; preds = %55, %40
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IF_TYPE_SOFTWARE_LOOPBACK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %7, align 8
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.table*, %struct.table** %4, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @resize_table(%struct.table* %60, i64 %61, i32 48)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = call i32 @heap_free(%struct.TYPE_9__* %65)
  %67 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %67, i32* %3, align 4
  br label %178

68:                                               ; preds = %59
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %7, align 8
  br label %70

70:                                               ; preds = %165, %68
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = icmp ne %struct.TYPE_9__* %71, null
  br i1 %72, label %73, label %169

73:                                               ; preds = %70
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IF_TYPE_SOFTWARE_LOOPBACK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %165

80:                                               ; preds = %73
  %81 = load %struct.table*, %struct.table** %4, align 8
  %82 = getelementptr inbounds %struct.table, %struct.table* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %83, %84
  %86 = inttoptr i64 %85 to %struct.record_networkadapterconfig*
  store %struct.record_networkadapterconfig* %86, %struct.record_networkadapterconfig** %6, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @get_defaultipgateway(i32 %89)
  %91 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %92 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @heap_strdupW(i32 %95)
  %97 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %98 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %97, i32 0, i32 10
  store i32 %96, i32* %98, align 4
  %99 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %100 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %99, i32 0, i32 0
  store i32 -1, i32* %100, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @get_dnshostname(i32 %103)
  %105 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %106 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @get_dnsserversearchorder(i32 %109)
  %111 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %112 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %119 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @get_ipaddress(i32 %122)
  %124 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %125 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 4
  %126 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %127 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %126, i32 0, i32 1
  store i32 20, i32* %127, align 4
  %128 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %129 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %128, i32 0, i32 2
  store i32 -1, i32* %129, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @get_ipsubnet(i32 %132)
  %134 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %135 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @get_mac_address(i32 %138, i32 %141)
  %143 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %144 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 4
  %145 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %146 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @get_settingid(i32 %147)
  %149 = load %struct.record_networkadapterconfig*, %struct.record_networkadapterconfig** %6, align 8
  %150 = getelementptr inbounds %struct.record_networkadapterconfig, %struct.record_networkadapterconfig* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.table*, %struct.table** %4, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load %struct.expr*, %struct.expr** %5, align 8
  %154 = call i32 @match_row(%struct.table* %151, i64 %152, %struct.expr* %153, i32* %14)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %80
  %157 = load %struct.table*, %struct.table** %4, align 8
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @free_row_values(%struct.table* %157, i64 %158)
  br label %165

160:                                              ; preds = %80
  %161 = load i64, i64* %10, align 8
  %162 = add i64 %161, 48
  store i64 %162, i64* %10, align 8
  %163 = load i64, i64* %9, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %9, align 8
  br label %165

165:                                              ; preds = %160, %156, %79
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  store %struct.TYPE_9__* %168, %struct.TYPE_9__** %7, align 8
  br label %70

169:                                              ; preds = %70
  %170 = load i64, i64* %9, align 8
  %171 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %170)
  %172 = load i64, i64* %9, align 8
  %173 = load %struct.table*, %struct.table** %4, align 8
  %174 = getelementptr inbounds %struct.table, %struct.table* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %176 = call i32 @heap_free(%struct.TYPE_9__* %175)
  %177 = load i32, i32* %14, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %169, %64, %36, %28, %22
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i64 @GetAdaptersAddresses(i32, i32, i32*, %struct.TYPE_9__*, i64*) #1

declare dso_local %struct.TYPE_9__* @heap_alloc(i64) #1

declare dso_local i32 @heap_free(%struct.TYPE_9__*) #1

declare dso_local i32 @resize_table(%struct.table*, i64, i32) #1

declare dso_local i32 @get_defaultipgateway(i32) #1

declare dso_local i32 @heap_strdupW(i32) #1

declare dso_local i32 @get_dnshostname(i32) #1

declare dso_local i32 @get_dnsserversearchorder(i32) #1

declare dso_local i32 @get_ipaddress(i32) #1

declare dso_local i32 @get_ipsubnet(i32) #1

declare dso_local i32 @get_mac_address(i32, i32) #1

declare dso_local i32 @get_settingid(i32) #1

declare dso_local i32 @match_row(%struct.table*, i64, %struct.expr*, i32*) #1

declare dso_local i32 @free_row_values(%struct.table*, i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
