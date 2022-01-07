; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_service.c_control_service.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_service.c_control_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_MANAGER_ENUMERATE_SERVICE = common dso_local global i32 0, align 4
@SERVICE_STOP = common dso_local global i32 0, align 4
@SERVICE_START = common dso_local global i32 0, align 4
@SERVICE_PAUSE_CONTINUE = common dso_local global i32 0, align 4
@VT_UI4 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @control_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_service(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @SC_MANAGER_ENUMERATE_SERVICE, align 4
  %12 = call i32* @OpenSCManagerW(i32* null, i32* null, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = call i32 (...) @GetLastError()
  %16 = call i32 @map_error(i32 %15)
  store i32 %16, i32* %10, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @SERVICE_STOP, align 4
  %21 = load i32, i32* @SERVICE_START, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SERVICE_PAUSE_CONTINUE, align 4
  %24 = or i32 %22, %23
  %25 = call i32* @OpenServiceW(i32* %18, i32* %19, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 @map_error(i32 %28)
  store i32 %29, i32* %10, align 4
  br label %41

30:                                               ; preds = %17
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ControlService(i32* %31, i32 %32, i32* %9)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = call i32 (...) @GetLastError()
  %37 = call i32 @map_error(i32 %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @CloseServiceHandle(i32* %39)
  br label %41

41:                                               ; preds = %38, %27, %14
  %42 = load i32, i32* @VT_UI4, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @set_variant(i32 %42, i32 %43, i32* null, i32* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @CloseServiceHandle(i32* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* @S_OK, align 4
  ret i32 %52
}

declare dso_local i32* @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i32 @map_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @OpenServiceW(i32*, i32*, i32) #1

declare dso_local i32 @ControlService(i32*, i32, i32*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

declare dso_local i32 @set_variant(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
