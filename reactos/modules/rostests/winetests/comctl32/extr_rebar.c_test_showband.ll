; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_rebar.c_test_showband.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_rebar.c_test_showband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32 }

@RB_SHOWBAND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@REBARBANDINFOA_V6_SIZE = common dso_local global i32 0, align 4
@RBBIM_SIZE = common dso_local global i32 0, align 4
@RBBIM_CHILDSIZE = common dso_local global i32 0, align 4
@RBBIM_CHILD = common dso_local global i32 0, align 4
@RB_INSERTBANDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_showband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_showband() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_2__, align 8
  %3 = alloca i64, align 8
  %4 = call i32 (...) @create_rebar_control()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @RB_SHOWBAND, align 4
  %7 = load i64, i64* @TRUE, align 8
  %8 = call i64 @SendMessageA(i32 %5, i32 %6, i32 0, i64 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @FALSE, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* @REBARBANDINFOA_V6_SIZE, align 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 5
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @RBBIM_SIZE, align 4
  %18 = load i32, i32* @RBBIM_CHILDSIZE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RBBIM_CHILD, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i32 200, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 2
  store i32 100, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 3
  store i32 30, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @RB_INSERTBANDA, align 4
  %29 = ptrtoint %struct.TYPE_2__* %2 to i64
  %30 = call i64 @SendMessageA(i32 %27, i32 %28, i32 -1, i64 %29)
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @RB_SHOWBAND, align 4
  %33 = load i64, i64* @TRUE, align 8
  %34 = call i64 @SendMessageA(i32 %31, i32 %32, i32 1, i64 %33)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @FALSE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @RB_SHOWBAND, align 4
  %43 = load i64, i64* @TRUE, align 8
  %44 = call i64 @SendMessageA(i32 %41, i32 %42, i32 0, i64 %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @TRUE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @DestroyWindow(i32 %51)
  ret void
}

declare dso_local i32 @create_rebar_control(...) #1

declare dso_local i64 @SendMessageA(i32, i32, i32, i64) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
