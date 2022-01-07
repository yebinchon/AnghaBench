; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl/extr_registrar.c_test_aggregation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl/extr_registrar.c_test_aggregation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_Registrar = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@CLASS_E_NOAGGREGATION = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"CoCreateInstance failed: %08x, expected CLASS_E_NOAGGREGATION\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"unk = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_aggregation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_aggregation() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %3 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %4 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %5 = or i32 %3, %4
  %6 = bitcast i32** %1 to i8**
  %7 = call i64 @CoCreateInstance(i32* @CLSID_Registrar, i32* inttoptr (i64 3735928559 to i32*), i32 %5, i32* @IID_IUnknown, i8** %6)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @CLASS_E_NOAGGREGATION, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %0
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @E_INVALIDARG, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @broken(i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %11, %0
  %19 = phi i1 [ true, %0 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** %1, align 8
  %27 = icmp eq i32* %26, inttoptr (i64 3735928559 to i32*)
  br label %28

28:                                               ; preds = %25, %18
  %29 = phi i1 [ true, %18 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %1, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
