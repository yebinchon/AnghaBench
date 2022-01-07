; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/sti/extr_sti_main.c_sti_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/sti/extr_sti_main.c_sti_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IUnknown = common dso_local global i32 0, align 4
@CLASS_E_NOAGGREGATION = common dso_local global i32 0, align 4
@STI_VERSION_REAL = common dso_local global i32 0, align 4
@STI_VERSION_FLAG_UNICODE = common dso_local global i32 0, align 4
@IID_IStillImageW = common dso_local global i32 0, align 4
@IID_IStillImageA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no interface %s\0A\00", align 1
@E_NOINTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @sti_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_create(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @IsEqualIID(i32 %11, i32* @IID_IUnknown)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @CLASS_E_NOAGGREGATION, align 4
  store i32 %15, i32* %4, align 4
  br label %53

16:                                               ; preds = %10, %3
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @IsEqualGUID(i32 %17, i32* @IID_IUnknown)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = call i32 (...) @GetCurrentProcess()
  %22 = load i32, i32* @STI_VERSION_REAL, align 4
  %23 = load i32, i32* @STI_VERSION_FLAG_UNICODE, align 4
  %24 = or i32 %22, %23
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @StiCreateInstanceW(i32 %21, i32 %24, i32* %25, i32* %26)
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @IsEqualGUID(i32 %29, i32* @IID_IStillImageW)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = call i32 (...) @GetCurrentProcess()
  %34 = load i32, i32* @STI_VERSION_REAL, align 4
  %35 = load i32, i32* @STI_VERSION_FLAG_UNICODE, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @StiCreateInstanceW(i32 %33, i32 %36, i32* %37, i32* null)
  store i32 %38, i32* %4, align 4
  br label %53

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @IsEqualGUID(i32 %40, i32* @IID_IStillImageA)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = call i32 (...) @GetCurrentProcess()
  %45 = load i32, i32* @STI_VERSION_REAL, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @StiCreateInstanceA(i32 %44, i32 %45, i32* %46, i32* null)
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @debugstr_guid(i32 %49)
  %51 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %43, %32, %20, %14
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @IsEqualIID(i32, i32*) #1

declare dso_local i64 @IsEqualGUID(i32, i32*) #1

declare dso_local i32 @StiCreateInstanceW(i32, i32, i32*, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @StiCreateInstanceA(i32, i32, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_guid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
