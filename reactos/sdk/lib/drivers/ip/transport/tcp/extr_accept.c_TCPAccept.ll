; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_accept.c_TCPAccept.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_accept.c_TCPAccept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i32 }

@TdiBucketLookasideList = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i32 0, align 4
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TCPAccept(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = call i32 @LockObject(%struct.TYPE_12__* %14, i32* %13)
  %16 = call %struct.TYPE_11__* @ExAllocateFromNPagedLookasideList(i32* @TdiBucketLookasideList)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %12, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %5
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = call i32 @ReferenceObject(%struct.TYPE_12__* %25)
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = call i32 @InsertTailList(i32* %36, i32* %38)
  %40 = load i32, i32* @STATUS_PENDING, align 4
  store i32 %40, i32* %11, align 4
  br label %43

41:                                               ; preds = %5
  %42 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %19
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @UnlockObject(%struct.TYPE_12__* %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

declare dso_local i32 @LockObject(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_11__* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @ReferenceObject(%struct.TYPE_12__*) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @UnlockObject(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
