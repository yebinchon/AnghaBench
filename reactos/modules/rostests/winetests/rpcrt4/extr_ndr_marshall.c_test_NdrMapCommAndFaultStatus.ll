; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_ndr_marshall.c_test_NdrMapCommAndFaultStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_ndr_marshall.c_test_NdrMapCommAndFaultStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Object_StubDesc = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"NdrMapCommAndFaultStatus failed with error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"NdrMapCommAndFaultStatus should have mapped %d to comm status %d instead of %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"NdrMapCommAndFaultStatus should have mapped %d to fault status %d instead of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_NdrMapCommAndFaultStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_NdrMapCommAndFaultStatus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = call i32 @NdrClientInitializeNew(i32* %3, i32* %2, i32* @Object_StubDesc, i32 5)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %46, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 10000
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @NdrMapCommAndFaultStatus(i32* %2, i64* %5, i64* %6, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RPC_S_OK, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i32, i8*, i32, ...) @ok(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %1, align 4
  switch i32 %22, label %26 [
    i32 138, label %23
    i32 135, label %23
    i32 130, label %23
    i32 131, label %23
    i32 132, label %23
    i32 137, label %23
    i32 133, label %23
    i32 129, label %23
    i32 128, label %23
    i32 134, label %23
    i32 139, label %23
    i32 136, label %23
  ]

23:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  br label %29

26:                                               ; preds = %13
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %1, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 %35, i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %1, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %42, i64 %43, i64 %44)
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %10

49:                                               ; preds = %10
  ret void
}

declare dso_local i32 @NdrClientInitializeNew(i32*, i32*, i32*, i32) #1

declare dso_local i32 @NdrMapCommAndFaultStatus(i32*, i64*, i64*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
