; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_dsoundrender.c_test_pin.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_dsoundrender.c_test_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IMemInputPin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No IMemInputPin found!\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Receive can't block for pin!\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"NotifyAllocator likes a NULL pointer argument\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pin(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32** %3 to i8**
  %6 = call i32 @IPin_QueryInterface(i32* %4, i32* @IID_IMemInputPin, i8** %5)
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @IMemInputPin_ReceiveCanBlock(i32* %14)
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @IMemInputPin_NotifyAllocator(i32* %20, i32* null, i32 0)
  %22 = load i64, i64* @E_POINTER, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @IMemInputPin_Release(i32* %26)
  br label %28

28:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @IPin_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @IMemInputPin_ReceiveCanBlock(i32*) #1

declare dso_local i64 @IMemInputPin_NotifyAllocator(i32*, i32*, i32) #1

declare dso_local i32 @IMemInputPin_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
