; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_misc.c_FindAdapterContextByName.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_misc.c_FindAdapterContextByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }

@GlobalAdapterListLock = common dso_local global i32 0, align 4
@GlobalAdapterList = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@NDISUIO_ADAPTER_CONTEXT = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @FindAdapterContextByName(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  %7 = call i32 @KeAcquireSpinLock(i32* @GlobalAdapterListLock, i32* %4)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GlobalAdapterList, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %5, align 8
  br label %9

9:                                                ; preds = %27, %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, @GlobalAdapterList
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = load i32, i32* @NDISUIO_ADAPTER_CONTEXT, align 4
  %15 = load i32, i32* @ListEntry, align 4
  %16 = call %struct.TYPE_7__* @CONTAINING_RECORD(%struct.TYPE_8__* %13, i32 %14, i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i64 @RtlEqualUnicodeString(i32* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @KeReleaseSpinLock(i32* @GlobalAdapterListLock, i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %2, align 8
  br label %34

27:                                               ; preds = %12
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %5, align 8
  br label %9

31:                                               ; preds = %9
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @KeReleaseSpinLock(i32* @GlobalAdapterListLock, i32 %32)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %34

34:                                               ; preds = %31, %23
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %35
}

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @CONTAINING_RECORD(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @RtlEqualUnicodeString(i32*, i32, i32) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
