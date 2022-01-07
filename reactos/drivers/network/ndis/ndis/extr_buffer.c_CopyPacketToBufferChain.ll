; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndis/ndis/extr_buffer.c_CopyPacketToBufferChain.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndis/ndis/extr_buffer.c_CopyPacketToBufferChain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"DstBuffer (0x%X)  DstOffset (0x%X)  SrcPacket (0x%X)  SrcOffset (0x%X)  Length (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CopyPacketToBufferChain(i32 %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i32, i32* @MAX_TRACE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @NDIS_DbgPrint(i32 %19, i8* %25)
  %27 = load i32, i32* %7, align 4
  %28 = ptrtoint i64* %13 to i32
  %29 = call i32 @NdisQueryBuffer(i32 %27, i32 %28, i64* %15)
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @SkipToOffset(i32 %30, i64 %31, i64* %13, i64* %15)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %110

35:                                               ; preds = %5
  %36 = load i32, i32* %9, align 4
  %37 = bitcast i64* %14 to i32*
  %38 = call i32 @NdisGetFirstBufferFromPacket(i32 %36, i32* %12, i32* %37, i64* %16, i64* %18)
  %39 = load i32, i32* %12, align 4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @SkipToOffset(i32 %39, i64 %40, i64* %14, i64* %16)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i64 0, i64* %6, align 8
  br label %110

44:                                               ; preds = %35
  store i64 0, i64* %18, align 8
  br label %45

45:                                               ; preds = %107, %44
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %16, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* %11, align 8
  store i64 %50, i64* %17, align 8
  br label %53

51:                                               ; preds = %45
  %52 = load i64, i64* %16, align 8
  store i64 %52, i64* %17, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %17, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* %15, align 8
  store i64 %58, i64* %17, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i64, i64* %13, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* %14, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* %17, align 8
  %65 = call i32 @RtlCopyMemory(i32 %61, i32 %63, i64 %64)
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %18, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sub nsw i64 %70, %69
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %108

75:                                               ; preds = %59
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* %15, align 8
  %78 = sub nsw i64 %77, %76
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %15, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @NdisGetNextBuffer(i32 %82, i32* %7)
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %108

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = ptrtoint i64* %13 to i32
  %90 = call i32 @NdisQueryBuffer(i32 %88, i32 %89, i64* %15)
  br label %91

91:                                               ; preds = %87, %75
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %16, align 8
  %94 = sub nsw i64 %93, %92
  store i64 %94, i64* %16, align 8
  %95 = load i64, i64* %16, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @NdisGetNextBuffer(i32 %98, i32* %12)
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %108

103:                                              ; preds = %97
  %104 = load i32, i32* %12, align 4
  %105 = ptrtoint i64* %14 to i32
  %106 = call i32 @NdisQueryBuffer(i32 %104, i32 %105, i64* %16)
  br label %107

107:                                              ; preds = %103, %91
  br label %45

108:                                              ; preds = %102, %86, %74
  %109 = load i64, i64* %18, align 8
  store i64 %109, i64* %6, align 8
  br label %110

110:                                              ; preds = %108, %43, %34
  %111 = load i64, i64* %6, align 8
  ret i64 %111
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisQueryBuffer(i32, i32, i64*) #1

declare dso_local i32 @SkipToOffset(i32, i64, i64*, i64*) #1

declare dso_local i32 @NdisGetFirstBufferFromPacket(i32, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i64) #1

declare dso_local i32 @NdisGetNextBuffer(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
