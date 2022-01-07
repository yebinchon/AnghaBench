; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_misc.c_AllocateAndChainBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_misc.c_AllocateAndChainBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@NDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"No free buffer descriptors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AllocateAndChainBuffer(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @NdisAllocateBuffer(i64* %12, i32* %13, i32 %16, i32 %17, i32 %18)
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* %12, align 8
  store i64 %25, i64* %6, align 8
  br label %39

26:                                               ; preds = %5
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @NdisChainBufferAtFront(i32 %30, i32 %31)
  br label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @NdisChainBufferAtBack(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %37, %23
  %40 = load i64, i64* %6, align 8
  ret i64 %40
}

declare dso_local i32 @NdisAllocateBuffer(i64*, i32*, i32, i32, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @NdisChainBufferAtFront(i32, i32) #1

declare dso_local i32 @NdisChainBufferAtBack(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
