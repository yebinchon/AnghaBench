; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_fileobjs.c_AddrFindShared.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_fileobjs.c_AddrFindShared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64, i64 }

@AddressFileListLock = common dso_local global i32 0, align 4
@AddressFileListHead = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ADDRESS_FILE = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @AddrFindShared(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %10 = call i32 @TcpipAcquireSpinLock(i32* @AddressFileListLock, i32* %8)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @AddressFileListHead, i32 0, i32 0), align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  br label %12

12:                                               ; preds = %41, %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, @AddressFileListHead
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = load i32, i32* @ADDRESS_FILE, align 4
  %18 = load i32, i32* @ListEntry, align 4
  %19 = call %struct.TYPE_8__* @CONTAINING_RECORD(%struct.TYPE_7__* %16, i32 %17, i32 %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %15
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = call i32 @InterlockedIncrement(i64* %39)
  br label %45

41:                                               ; preds = %25, %15
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  br label %12

45:                                               ; preds = %31, %12
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @TcpipReleaseSpinLock(i32* @AddressFileListLock, i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  ret %struct.TYPE_8__* %48
}

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @CONTAINING_RECORD(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @InterlockedIncrement(i64*) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
