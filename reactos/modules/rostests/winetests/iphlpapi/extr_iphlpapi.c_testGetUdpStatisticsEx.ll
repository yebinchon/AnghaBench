; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetUdpStatisticsEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetUdpStatisticsEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [82 x i8] c"GetUdpStatisticsEx(NULL, AF_INET); returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@AF_BAN = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"GetUdpStatisticsEx(&stats, AF_BAN) returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"GetUdpStatisticsEx returned %d, expected NO_ERROR\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"UDP IPv4 Ex stats:\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"    dwInDatagrams:  %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"    dwNoPorts:      %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"    dwInErrors:     %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"    dwOutDatagrams: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"    dwNumAddrs:     %u\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"UDP IPv6 Ex stats:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetUdpStatisticsEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetUdpStatisticsEx() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = load i32, i32* @AF_INET, align 4
  %4 = call i64 @pGetUdpStatisticsEx(%struct.TYPE_3__* null, i32 %3)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32, i32* @AF_BAN, align 4
  %12 = call i64 @pGetUdpStatisticsEx(%struct.TYPE_3__* %2, i32 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %16, %0
  %21 = phi i1 [ true, %0 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @AF_INET, align 4
  %26 = call i64 @pGetUdpStatisticsEx(%struct.TYPE_3__* %2, i32 %25)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @NO_ERROR, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @NO_ERROR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %20
  %37 = load i32, i32* @winetest_debug, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %39, %36, %20
  %57 = load i32, i32* @AF_INET6, align 4
  %58 = call i64 @pGetUdpStatisticsEx(%struct.TYPE_3__* %2, i32 %57)
  store i64 %58, i64* %1, align 8
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* @NO_ERROR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @broken(i32 %66)
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi i1 [ true, %56 ], [ %68, %62 ]
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %1, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  %74 = load i64, i64* %1, align 8
  %75 = load i64, i64* @NO_ERROR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %69
  %78 = load i32, i32* @winetest_debug, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %80, %77, %69
  ret void
}

declare dso_local i64 @pGetUdpStatisticsEx(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
