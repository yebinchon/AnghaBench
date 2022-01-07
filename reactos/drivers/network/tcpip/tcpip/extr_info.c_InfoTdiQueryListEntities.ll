; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_info.c_InfoTdiQueryListEntities.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_info.c_InfoTdiQueryListEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"About to copy %d TDIEntityIDs to user\0A\00", align 1
@EntityCount = common dso_local global i32 0, align 4
@EntityListLock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"BufSize: %d, NeededSize: %d\0A\00", align 1
@TDI_SUCCESS = common dso_local global i32 0, align 4
@EntityList = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfoTdiQueryListEntities(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @DEBUG_INFO, align 4
  %13 = load i32, i32* @EntityCount, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @TI_DbgPrint(i32 %12, i8* %15)
  %17 = call i32 @TcpipAcquireSpinLock(i32* @EntityListLock, i32* %9)
  %18 = load i32, i32* @EntityCount, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @DEBUG_INFO, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @TI_DbgPrint(i32 %24, i8* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %2
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @TcpipReleaseSpinLock(i32* @EntityListLock, i32 %37)
  %39 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %39, i32* %3, align 4
  br label %64

40:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %57, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @EntityCount, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** @EntityList, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = ptrtoint i32* %54 to i32
  %56 = call i32 @CopyBufferToBufferChain(i32 %46, i32 %50, i32 %55, i32 4)
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %41

60:                                               ; preds = %41
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @TcpipReleaseSpinLock(i32* @EntityListLock, i32 %61)
  %63 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %36
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

declare dso_local i32 @CopyBufferToBufferChain(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
