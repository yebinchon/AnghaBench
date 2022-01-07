; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_ninfo.c_InfoTdiSetRoute.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_ninfo.c_InfoTdiSetRoute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }

@TDI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@Loopback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failing attempt to add route to loopback adapter\0A\00", align 1
@IP_ROUTE_TYPE_ADD = common dso_local global i64 0, align 8
@DEBUG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Adding route (%s)\0A\00", align 1
@TDI_NO_RESOURCES = common dso_local global i32 0, align 4
@TDI_SUCCESS = common dso_local global i32 0, align 4
@IP_ROUTE_TYPE_DEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Removing route (%s)\0A\00", align 1
@TDI_INVALID_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfoTdiSetRoute(i32 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @AddrInitIPv4(i32* %8, i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @AddrInitIPv4(i32* %9, i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @AddrInitIPv4(i32* %10, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @Loopback, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = call i32 @DbgPrint(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %39, i32* %4, align 4
  br label %84

40:                                               ; preds = %21
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IP_ROUTE_TYPE_ADD, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load i32, i32* @DEBUG_INFO, align 4
  %48 = call i32 @A2S(i32* %8)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @TI_DbgPrint(i32 %47, i8* %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @RouterCreateRoute(i32* %8, i32* %9, i32* %10, i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %46
  %59 = load i32, i32* @TDI_NO_RESOURCES, align 4
  store i32 %59, i32* %4, align 4
  br label %84

60:                                               ; preds = %46
  %61 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %61, i32* %4, align 4
  br label %84

62:                                               ; preds = %40
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IP_ROUTE_TYPE_DEL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i32, i32* @DEBUG_INFO, align 4
  %70 = call i32 @A2S(i32* %8)
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @TI_DbgPrint(i32 %69, i8* %72)
  %74 = call i32 @RouterRemoveRoute(i32* %8, i32* %10)
  %75 = call i64 @NT_SUCCESS(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %78, i32* %4, align 4
  br label %84

79:                                               ; preds = %68
  %80 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %80, i32* %4, align 4
  br label %84

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* @TDI_INVALID_REQUEST, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %79, %77, %60, %58, %37, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @AddrInitIPv4(i32*, i32) #1

declare dso_local i32 @DbgPrint(i8*) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @A2S(i32*) #1

declare dso_local i32 @RouterCreateRoute(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @RouterRemoveRoute(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
