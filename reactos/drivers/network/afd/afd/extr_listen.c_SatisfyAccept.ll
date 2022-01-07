; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_listen.c_SatisfyAccept.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_listen.c_SatisfyAccept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Completing a real accept (FCB %p)\0A\00", align 1
@TAG_AFD_TRANSPORT_ADDRESS = common dso_local global i32 0, align 4
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_11__*, %struct.TYPE_12__*)* @SatisfyAccept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SatisfyAccept(i32 %0, i32 %1, %struct.TYPE_11__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @UNREFERENCED_PARAMETER(i32 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %18 = call i32 @SocketAcquireStateLock(%struct.TYPE_13__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @LostSocket(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %88

23:                                               ; preds = %4
  %24 = load i32, i32* @MID_TRACE, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = bitcast %struct.TYPE_13__* %25 to i8*
  %27 = call i32 @AFD_DbgPrint(i32 %24, i8* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @TAG_AFD_TRANSPORT_ADDRESS, align 4
  %42 = call i32 @ExFreePoolWithTag(i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %23
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @TaCopyTransportAddress(i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %57, i32* %11, align 4
  br label %61

58:                                               ; preds = %43
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = call i32 @MakeSocketIntoConnection(%struct.TYPE_13__* %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %56
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @NT_SUCCESS(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @TdiBuildConnectionInfo(i32* %67, i64 %70)
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %65, %61
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @NT_SUCCESS(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @TdiBuildConnectionInfo(i32* %78, i64 %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %76, %72
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @UnlockAndMaybeComplete(%struct.TYPE_13__* %84, i32 %85, i32 %86, i32 0)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %83, %20
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @UNREFERENCED_PARAMETER(i32) #1

declare dso_local i32 @SocketAcquireStateLock(%struct.TYPE_13__*) #1

declare dso_local i32 @LostSocket(i32) #1

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i32 @ExFreePoolWithTag(i64, i32) #1

declare dso_local i64 @TaCopyTransportAddress(i32) #1

declare dso_local i32 @MakeSocketIntoConnection(%struct.TYPE_13__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @TdiBuildConnectionInfo(i32*, i64) #1

declare dso_local i32 @UnlockAndMaybeComplete(%struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
