; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_event.c_AfdRegisterEventHandlers.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_event.c_AfdRegisterEventHandlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TDI_EVENT_ERROR = common dso_local global i32 0, align 4
@AfdEventError = common dso_local global i64 0, align 8
@TDI_EVENT_DISCONNECT = common dso_local global i32 0, align 4
@AfdEventDisconnect = common dso_local global i64 0, align 8
@TDI_EVENT_RECEIVE = common dso_local global i32 0, align 4
@AfdEventReceive = common dso_local global i64 0, align 8
@TDI_EVENT_RECEIVE_EXPEDITED = common dso_local global i32 0, align 4
@ClientEventReceiveExpedited = common dso_local global i64 0, align 8
@TDI_EVENT_CHAINED_RECEIVE = common dso_local global i32 0, align 4
@ClientEventChainedReceive = common dso_local global i64 0, align 8
@TDI_EVENT_RECEIVE_DATAGRAM = common dso_local global i32 0, align 4
@AfdEventReceiveDatagramHandler = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AfdRegisterEventHandlers(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TDI_EVENT_ERROR, align 4
  %13 = load i64, i64* @AfdEventError, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = ptrtoint %struct.TYPE_3__* %15 to i32
  %17 = call i32 @TdiSetEventHandler(i32 %11, i32 %12, i32 %14, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @NT_SUCCESS(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %106

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %104 [
    i32 128, label %27
    i32 130, label %88
    i32 129, label %88
  ]

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TDI_EVENT_DISCONNECT, align 4
  %32 = load i64, i64* @AfdEventDisconnect, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = ptrtoint %struct.TYPE_3__* %34 to i32
  %36 = call i32 @TdiSetEventHandler(i32 %30, i32 %31, i32 %33, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @NT_SUCCESS(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %106

42:                                               ; preds = %27
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TDI_EVENT_RECEIVE, align 4
  %47 = load i64, i64* @AfdEventReceive, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = ptrtoint %struct.TYPE_3__* %49 to i32
  %51 = call i32 @TdiSetEventHandler(i32 %45, i32 %46, i32 %48, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @NT_SUCCESS(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %106

57:                                               ; preds = %42
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TDI_EVENT_RECEIVE_EXPEDITED, align 4
  %62 = load i64, i64* @ClientEventReceiveExpedited, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = ptrtoint %struct.TYPE_3__* %64 to i32
  %66 = call i32 @TdiSetEventHandler(i32 %60, i32 %61, i32 %63, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @NT_SUCCESS(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %106

72:                                               ; preds = %57
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TDI_EVENT_CHAINED_RECEIVE, align 4
  %77 = load i64, i64* @ClientEventChainedReceive, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = ptrtoint %struct.TYPE_3__* %79 to i32
  %81 = call i32 @TdiSetEventHandler(i32 %75, i32 %76, i32 %78, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @NT_SUCCESS(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %106

87:                                               ; preds = %72
  br label %104

88:                                               ; preds = %23, %23
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @TDI_EVENT_RECEIVE_DATAGRAM, align 4
  %93 = load i64, i64* @AfdEventReceiveDatagramHandler, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = ptrtoint %struct.TYPE_3__* %95 to i32
  %97 = call i32 @TdiSetEventHandler(i32 %91, i32 %92, i32 %94, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @NT_SUCCESS(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %106

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %23, %87
  %105 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %101, %85, %70, %55, %40, %21
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TdiSetEventHandler(i32, i32, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
