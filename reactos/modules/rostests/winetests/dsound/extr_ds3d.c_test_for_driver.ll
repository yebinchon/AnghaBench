; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d.c_test_for_driver.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d.c_test_for_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DS_OK = common dso_local global i64 0, align 8
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"DirectSoundCreate() failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"IDirectSound_Release() has %d references, should have 0\0A\00", align 1
@DSERR_GENERIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @test_for_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_for_driver(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @pDirectSoundCreate(i32 %7, i32** %5, i32* null)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @DS_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @DSERR_NODRIVER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @DSERR_ALLOCATED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @E_FAIL, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %16, %12, %1
  %25 = phi i1 [ true, %16 ], [ true, %12 ], [ true, %1 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @DS_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %2, align 8
  br label %49

35:                                               ; preds = %24
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @IDirectSound_Release(i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i64, i64* @DSERR_GENERIC, align 8
  store i64 %46, i64* %2, align 8
  br label %49

47:                                               ; preds = %35
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %47, %45, %33
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local i64 @pDirectSoundCreate(i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
