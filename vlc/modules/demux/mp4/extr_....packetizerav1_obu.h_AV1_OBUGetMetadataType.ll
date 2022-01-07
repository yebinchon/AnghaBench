; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....packetizerav1_obu.h_AV1_OBUGetMetadataType.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....packetizerav1_obu.h_AV1_OBUGetMetadataType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV1_METADATA_TYPE_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @AV1_OBUGetMetadataType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AV1_OBUGetMetadataType(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 @AV1_OBUSkipHeader(i64** %4, i64* %5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @AV1_METADATA_TYPE_RESERVED, align 4
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %10
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @leb128(i64* %16, i64 %17, i64* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @INT64_C(i32 1)
  %24 = shl i32 %23, 32
  %25 = sub nsw i32 %24, 1
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %15
  %28 = load i32, i32* @AV1_METADATA_TYPE_RESERVED, align 4
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %27, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @AV1_OBUSkipHeader(i64**, i64*) #1

declare dso_local i32 @leb128(i64*, i64, i64*) #1

declare dso_local i32 @INT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
