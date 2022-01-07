; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_fileobjs.c_FileCloseAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_fileobjs.c_FileCloseAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }

@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Leaving.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FileCloseAddress(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = call i32 @LockObject(%struct.TYPE_10__* %18, i32* %5)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = call i64 @InterlockedDecrement(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @UnlockObject(%struct.TYPE_10__* %25, i32 %26)
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %17
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @TCPClose(i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @UnlockObject(%struct.TYPE_10__* %40, i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = call i32 @DereferenceObject(%struct.TYPE_10__* %43)
  %45 = load i32, i32* @MAX_TRACE, align 4
  %46 = call i32 @TI_DbgPrint(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %39, %24, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @LockObject(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @InterlockedDecrement(i32*) #1

declare dso_local i32 @UnlockObject(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @TCPClose(i64) #1

declare dso_local i32 @DereferenceObject(%struct.TYPE_10__*) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
