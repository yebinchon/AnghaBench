; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/devenum/extr_devenum.c_find_moniker.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/devenum/extr_devenum.c_find_moniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@CLSID_SystemDeviceEnum = common dso_local global i32 0, align 4
@CLSCTX_INPROC = common dso_local global i32 0, align 4
@IID_ICreateDevEnum = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @find_moniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_moniker(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i32, i32* @CLSCTX_INPROC, align 4
  %11 = bitcast i32** %5 to i8**
  %12 = call i32 @CoCreateInstance(i32* @CLSID_SystemDeviceEnum, i32* null, i32 %10, i32* @IID_ICreateDevEnum, i8** %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @ICreateDevEnum_CreateClassEnumerator(i32* %13, i32* %14, i32** %6, i32 0)
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @IEnumMoniker_Next(i32* %20, i32 1, i32** %7, i32* null)
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %37

26:                                               ; preds = %24
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @IMoniker_IsEqual(i32* %27, i32* %28)
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @IMoniker_Release(i32* %35)
  br label %16

37:                                               ; preds = %24
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @IEnumMoniker_Release(i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ICreateDevEnum_Release(i32* %40)
  %42 = load i64, i64* %8, align 8
  ret i64 %42
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ICreateDevEnum_CreateClassEnumerator(i32*, i32*, i32**, i32) #1

declare dso_local i64 @IEnumMoniker_Next(i32*, i32, i32**, i32*) #1

declare dso_local i64 @IMoniker_IsEqual(i32*, i32*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @IEnumMoniker_Release(i32*) #1

declare dso_local i32 @ICreateDevEnum_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
