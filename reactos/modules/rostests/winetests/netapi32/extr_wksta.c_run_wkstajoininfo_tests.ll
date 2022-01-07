; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_wksta.c_run_wkstajoininfo_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_wksta.c_run_wkstajoininfo_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"NetJoinGetInformation returned unexpected 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"buffertype set to unexpected value %d\0A\00", align 1
@NERR_Success = common dso_local global i32 0, align 4
@NetSetupUnknownStatus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"workstation joined to %s with status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_wkstajoininfo_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_wkstajoininfo_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32 56026, i32* %3, align 4
  %4 = call i32 @pNetGetJoinInformation(i32* null, i32** null, i32* null)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 56026
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = call i32 @pNetGetJoinInformation(i32* null, i32** %2, i32* %3)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @NERR_Success, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 56026
  br i1 %24, label %25, label %29

25:                                               ; preds = %0
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @NetSetupUnknownStatus, align 4
  %28 = icmp ne i32 %26, %27
  br label %29

29:                                               ; preds = %25, %0
  %30 = phi i1 [ false, %0 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @wine_dbgstr_w(i32* %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @trace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @pNetApiBufferFree(i32* %38)
  ret void
}

declare dso_local i32 @pNetGetJoinInformation(i32*, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @pNetApiBufferFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
