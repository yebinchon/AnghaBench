; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_event.c_AfdDeregisterEventHandlers.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_event.c_AfdDeregisterEventHandlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TDI_EVENT_ERROR = common dso_local global i32 0, align 4
@TDI_EVENT_DISCONNECT = common dso_local global i32 0, align 4
@TDI_EVENT_RECEIVE = common dso_local global i32 0, align 4
@TDI_EVENT_RECEIVE_EXPEDITED = common dso_local global i32 0, align 4
@TDI_EVENT_CHAINED_RECEIVE = common dso_local global i32 0, align 4
@TDI_EVENT_RECEIVE_DATAGRAM = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AfdDeregisterEventHandlers(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TDI_EVENT_ERROR, align 4
  %9 = call i32 @TdiSetEventHandler(i32 %7, i32 %8, i32* null, i32* null)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @NT_SUCCESS(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %78

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %76 [
    i32 128, label %19
    i32 130, label %64
    i32 129, label %64
  ]

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TDI_EVENT_DISCONNECT, align 4
  %24 = call i32 @TdiSetEventHandler(i32 %22, i32 %23, i32* null, i32* null)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @NT_SUCCESS(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %78

30:                                               ; preds = %19
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TDI_EVENT_RECEIVE, align 4
  %35 = call i32 @TdiSetEventHandler(i32 %33, i32 %34, i32* null, i32* null)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @NT_SUCCESS(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %78

41:                                               ; preds = %30
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TDI_EVENT_RECEIVE_EXPEDITED, align 4
  %46 = call i32 @TdiSetEventHandler(i32 %44, i32 %45, i32* null, i32* null)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @NT_SUCCESS(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %78

52:                                               ; preds = %41
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TDI_EVENT_CHAINED_RECEIVE, align 4
  %57 = call i32 @TdiSetEventHandler(i32 %55, i32 %56, i32* null, i32* null)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @NT_SUCCESS(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %78

63:                                               ; preds = %52
  br label %76

64:                                               ; preds = %15, %15
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TDI_EVENT_RECEIVE_DATAGRAM, align 4
  %69 = call i32 @TdiSetEventHandler(i32 %67, i32 %68, i32* null, i32* null)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @NT_SUCCESS(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %78

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %15, %63
  %77 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %73, %61, %50, %39, %28, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @TdiSetEventHandler(i32, i32, i32*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
