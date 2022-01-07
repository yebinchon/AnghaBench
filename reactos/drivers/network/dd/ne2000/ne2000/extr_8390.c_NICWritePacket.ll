; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICWritePacket.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICWritePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32*, i32 }

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@DRIVER_BLOCK_SIZE = common dso_local global i32 0, align 4
@MID_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Packet (%d) is now size (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @NICWritePacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NICWritePacket(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %12 = load i32, i32* @MAX_TRACE, align 4
  %13 = call i32 @NDIS_DbgPrint(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DRIVER_BLOCK_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = load i32, i32* @DRIVER_BLOCK_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = call i32 @NdisQueryPacket(i32 %30, i32* null, i32* null, i32* %4, i32* %37)
  %39 = load i32, i32* @MID_TRACE, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @NDIS_DbgPrint(i32 %39, i8* %52)
  %54 = load i32, i32* %4, align 4
  %55 = ptrtoint i64* %8 to i32
  %56 = call i32 @NdisQueryBuffer(i32 %54, i32 %55, i32* %6)
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @DRIVER_BLOCK_SIZE, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %61, %63
  %65 = add i64 %58, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %121, %1
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %5, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @NICWriteData(%struct.TYPE_4__* %80, i32 %81, i64 %82, i32 %83)
  %85 = load i64, i64* %8, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %8, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %78
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @NdisGetNextBuffer(i32 %102, i32* %4)
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %122

107:                                              ; preds = %101
  %108 = load i32, i32* %4, align 4
  %109 = ptrtoint i64* %8 to i32
  %110 = call i32 @NdisQueryBuffer(i32 %108, i32 %109, i32* %6)
  br label %111

111:                                              ; preds = %107, %78
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %9, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DRIVER_BLOCK_SIZE, align 4
  %120 = mul nsw i32 %118, %119
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %114, %111
  br label %70

122:                                              ; preds = %106
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisQueryPacket(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @NdisQueryBuffer(i32, i32, i32*) #1

declare dso_local i32 @NICWriteData(%struct.TYPE_4__*, i32, i64, i32) #1

declare dso_local i32 @NdisGetNextBuffer(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
