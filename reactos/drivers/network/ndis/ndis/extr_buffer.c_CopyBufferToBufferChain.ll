; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndis/ndis/extr_buffer.c_CopyBufferToBufferChain.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndis/ndis/extr_buffer.c_CopyBufferToBufferChain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"DstBuffer (0x%X)  DstOffset (0x%X)  SrcData (0x%X)  Length (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CopyBufferToBufferChain(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @MAX_TRACE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @NDIS_DbgPrint(i32 %14, i8* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @SkipToOffset(i32 %21, i64 %22, i64* %13, i64* %12)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %68

26:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %65, %26
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @MIN(i64 %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %13, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @RtlCopyMemory(i32 %32, i32 %34, i64 %35)
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %27
  br label %66

49:                                               ; preds = %27
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @NdisGetNextBuffer(i32 %56, i32* %6)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %66

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = ptrtoint i64* %13 to i32
  %64 = call i32 @NdisQueryBuffer(i32 %62, i32 %63, i64* %12)
  br label %65

65:                                               ; preds = %61, %49
  br label %27

66:                                               ; preds = %60, %48
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %66, %25
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

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
