; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndis/ndis/extr_protocol.c_ProSetupPnPEvent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndis/ndis/extr_protocol.c_ProSetupPnPEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32 }

@PagedPool = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Insufficient resources\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ProSetupPnPEvent(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @PagedPool, align 4
  %10 = call i8* @ExAllocatePool(i32 %9, i32 4)
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @MIN_TRACE, align 4
  %16 = call i32 @NDIS_DbgPrint(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = call i32 @RtlZeroMemory(%struct.TYPE_5__* %18, i32 4)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %17
  %26 = load i32, i32* @PagedPool, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @ExAllocatePool(i32 %26, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @MIN_TRACE, align 4
  %37 = call i32 @NDIS_DbgPrint(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = call i32 @ExFreePool(%struct.TYPE_5__* %38)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %54

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @RtlCopyMemory(i8* %46, i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %40, %17
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %4, align 8
  br label %54

54:                                               ; preds = %52, %35, %14
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %55
}

declare dso_local i8* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_5__*) #1

declare dso_local i32 @RtlCopyMemory(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
