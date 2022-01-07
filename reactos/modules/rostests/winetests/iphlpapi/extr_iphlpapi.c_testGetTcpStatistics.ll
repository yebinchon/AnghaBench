; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetTcpStatistics.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetTcpStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"GetTcpStatistics is not supported\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"GetTcpStatistics(NULL) returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"GetTcpStatistics returned %d, expected NO_ERROR\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"TCP stats:\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"    dwRtoAlgorithm: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"    dwRtoMin:       %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"    dwRtoMax:       %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"    dwMaxConn:      %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"    dwActiveOpens:  %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"    dwPassiveOpens: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"    dwAttemptFails: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"    dwEstabResets:  %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"    dwCurrEstab:    %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"    dwInSegs:       %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"    dwOutSegs:      %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"    dwRetransSegs:  %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"    dwInErrs:       %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"    dwOutRsts:      %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"    dwNumConns:     %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetTcpStatistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetTcpStatistics() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  br i1 true, label %4, label %81

4:                                                ; preds = %0
  %5 = call i64 @pGetTcpStatistics(%struct.TYPE_5__* null)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call i32 @skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %81

11:                                               ; preds = %4
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = call i64 @pGetTcpStatistics(%struct.TYPE_5__* %2)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @NO_ERROR, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @NO_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %11
  %29 = load i32, i32* @winetest_debug, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %80

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @U(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %2)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 12
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %31, %28, %11
  br label %81

81:                                               ; preds = %9, %80, %0
  ret void
}

declare dso_local i64 @pGetTcpStatistics(%struct.TYPE_5__*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @U(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
