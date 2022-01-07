; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_ports.c__ClosePortHandles.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_ports.c__ClosePortHandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32* }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@DDD_REMOVE_DEFINITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @_ClosePortHandles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ClosePortHandles(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @CloseHandle(i64 %14)
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %51

24:                                               ; preds = %11
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @DllFreeSplStr(i32* %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @GetPortNameWithoutColon(i32 %33, i32* %4)
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @_GetNonspooledPortName(i32 %38, i32* %3)
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @DDD_REMOVE_DEFINITION, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @DefineDosDeviceW(i32 %43, i32 %44, i32* null)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @DllFreeSplMem(i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @DllFreeSplMem(i32 %49)
  br label %51

51:                                               ; preds = %10, %23, %48, %24
  ret void
}

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @DllFreeSplStr(i32*) #1

declare dso_local i64 @GetPortNameWithoutColon(i32, i32*) #1

declare dso_local i64 @_GetNonspooledPortName(i32, i32*) #1

declare dso_local i32 @DefineDosDeviceW(i32, i32, i32*) #1

declare dso_local i32 @DllFreeSplMem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
