; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_protocol_terminate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_protocol_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"LockRequest failed: %08x\0A\00", align 1
@test_abort = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Read failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Terminate failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"UnlockRequest failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_protocol_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_protocol_terminate(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [3600 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @IInternetProtocol_LockRequest(i32* %6, i32 0)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds [3600 x i32], [3600 x i32]* %3, i64 0, i64 0
  %16 = call i64 @IInternetProtocol_Read(i32* %14, i32* %15, i32 1, i32* %4)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @test_abort, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @S_OK, align 8
  br label %24

22:                                               ; preds = %1
  %23 = load i64, i64* @S_FALSE, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i64 [ %21, %20 ], [ %23, %22 ]
  %26 = icmp eq i64 %17, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @IInternetProtocol_Terminate(i32* %30, i32 0)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = call i32 @Sleep(i32 100)
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @IInternetProtocol_UnlockRequest(i32* %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  ret void
}

declare dso_local i64 @IInternetProtocol_LockRequest(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IInternetProtocol_Read(i32*, i32*, i32, i32*) #1

declare dso_local i64 @IInternetProtocol_Terminate(i32*, i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @IInternetProtocol_UnlockRequest(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
