; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_buffer.c_CopyBufferChainToBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_buffer.c_CopyBufferChainToBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG_PBUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"DstData 0x%X  SrcBuffer 0x%X  SrcOffset 0x%X  Length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Copying (%d) bytes from 0x%X to 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CopyBufferChainToBuffer(i64 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @DEBUG_PBUFFER, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @TI_DbgPrint(i32 %14, i8* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @SkipToOffset(i32 %21, i64 %22, i64* %13, i64* %12)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %74

26:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %71, %26
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @MIN(i64 %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i32, i32* @DEBUG_PBUFFER, align 4
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %6, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @TI_DbgPrint(i32 %31, i8* %35)
  %37 = load i64, i64* %6, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %13, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @RtlCopyMemory(i32 %38, i32 %40, i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %27
  br label %72

55:                                               ; preds = %27
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @NdisGetNextBuffer(i32 %62, i32* %7)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = ptrtoint i64* %13 to i32
  %70 = call i32 @NdisQueryBuffer(i32 %68, i32 %69, i64* %12)
  br label %71

71:                                               ; preds = %67, %55
  br label %27

72:                                               ; preds = %66, %54
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %72, %25
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @SkipToOffset(i32, i64, i64*, i64*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i64) #1

declare dso_local i32 @NdisGetNextBuffer(i32, i32*) #1

declare dso_local i32 @NdisQueryBuffer(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
