; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_priority.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IInternetPriority = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"QueryInterface(IID_IInternetPriority) failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GetPriority failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"pr=%d, expected 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SetPriority failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"pr=%d, expected 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_priority(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32** %3 to i8**
  %8 = call i64 @IInternetProtocol_QueryInterface(i32* %6, i32* @IID_IInternetPriority, i8** %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @FAILED(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %60

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @IInternetPriority_GetPriority(i32* %21, i32* %4)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %5, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @IInternetPriority_SetPriority(i32* %35, i32 1)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %5, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i64 @IInternetPriority_GetPriority(i32* %44, i32* %4)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @IInternetPriority_Release(i32* %58)
  br label %60

60:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @IInternetProtocol_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IInternetPriority_GetPriority(i32*, i32*) #1

declare dso_local i64 @IInternetPriority_SetPriority(i32*, i32) #1

declare dso_local i32 @IInternetPriority_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
