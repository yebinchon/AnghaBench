; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_INTERNET_ConfigureProxy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_INTERNET_ConfigureProxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"http proxy = %s bypass = %s\0A\00", align 1
@INTERNET_OPEN_TYPE_PROXY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@INTERNET_OPEN_TYPE_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @INTERNET_ConfigureProxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @INTERNET_ConfigureProxy(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = call i64 @INTERNET_LoadProxySettings(%struct.TYPE_6__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %2, align 4
  br label %47

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @debugstr_w(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @debugstr_w(i32 %18)
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @INTERNET_OPEN_TYPE_PROXY, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %2, align 4
  br label %47

41:                                               ; preds = %9
  %42 = load i32, i32* @INTERNET_OPEN_TYPE_DIRECT, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = call i32 @FreeProxyInfo(%struct.TYPE_6__* %4)
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %13, %7
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @INTERNET_LoadProxySettings(%struct.TYPE_6__*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @FreeProxyInfo(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
