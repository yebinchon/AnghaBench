; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl100/extr_atl.c_test_cp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl100/extr_atl.c_test_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_Test = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"expect E_INVALIDARG, returned %08x\0A\00", align 1
@ConnectionPointContainer = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"AtlAdvise failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cookie = %x\0A\00", align 1
@advise_cnt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"advise_cnt = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"AtlUnadvise failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @AtlAdvise(i32* null, i32* inttoptr (i64 3740073984 to i32*), i32* @CLSID_Test, i32* %1)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @E_INVALIDARG, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @AtlUnadvise(i32* null, i32* @CLSID_Test, i32 -559038737)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @E_INVALIDARG, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @AtlAdvise(i32* @ConnectionPointContainer, i32* inttoptr (i64 3735879680 to i32*), i32* @CLSID_Test, i32* %1)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @S_OK, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %24, -559038737
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @advise_cnt, align 4
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @advise_cnt, align 4
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = call i32 @AtlUnadvise(i32* @ConnectionPointContainer, i32* @CLSID_Test, i32 -559038737)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @advise_cnt, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @advise_cnt, align 4
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  ret void
}

declare dso_local i32 @AtlAdvise(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @AtlUnadvise(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
