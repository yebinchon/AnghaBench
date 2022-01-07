; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_info.c_InfoTdiQueryEntityType.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_info.c_InfoTdiQueryEntityType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@EntityListLock = common dso_local global i32 0, align 4
@EntityCount = common dso_local global i64 0, align 8
@EntityList = common dso_local global %struct.TYPE_5__* null, align 8
@TDI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TDI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfoTdiQueryEntityType(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = bitcast %struct.TYPE_4__* %6 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %0, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %1, i64* %14, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %15 = call i32 @TcpipAcquireSpinLock(i32* @EntityListLock, i32* %9)
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %40, %4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @EntityCount, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @EntityList, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @EntityList, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %43

39:                                               ; preds = %29, %20
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %10, align 8
  br label %16

43:                                               ; preds = %38, %16
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @EntityCount, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @TcpipReleaseSpinLock(i32* @EntityListLock, i32 %48)
  %50 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %50, i32* %5, align 4
  br label %64

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @EntityList, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = ptrtoint i64* %11 to i32
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @InfoCopyOut(i32 %57, i32 4, i32 %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @TcpipReleaseSpinLock(i32* @EntityListLock, i32 %61)
  %63 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %51, %47
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

declare dso_local i32 @InfoCopyOut(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
