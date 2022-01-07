; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_referenceclock.c_test_IReferenceClock_SystemClock.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_referenceclock.c_test_IReferenceClock_SystemClock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_SystemClock = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IReferenceClock = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Unable to create reference clock from system clock %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SystemClock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IReferenceClock_SystemClock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IReferenceClock_SystemClock() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %4 = bitcast i32** %1 to i32*
  %5 = call i64 @CoCreateInstance(i32* @CLSID_SystemClock, i32* null, i32 %3, i32* @IID_IReferenceClock, i32* %4)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %0
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @test_IReferenceClock_query_interface(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @test_IReferenceClock_methods(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @IReferenceClock_Release(i32* %20)
  br label %22

22:                                               ; preds = %15, %0
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @test_IReferenceClock_query_interface(i8*, i32*) #1

declare dso_local i32 @test_IReferenceClock_methods(i8*, i32*) #1

declare dso_local i32 @IReferenceClock_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
