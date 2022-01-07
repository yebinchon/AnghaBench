; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_handle_custom_lossless_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_handle_custom_lossless_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*, i32, i64*, i32, i32)* }

@PACKET_ID_LOSSLESS_RANGE_START = common dso_local global i64 0, align 8
@PACKET_ID_LOSSLESS_RANGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i32)* @handle_custom_lossless_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_custom_lossless_packet(i8* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %10, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @friend_not_valid(%struct.TYPE_4__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %52

18:                                               ; preds = %4
  %19 = load i64*, i64** %8, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PACKET_ID_LOSSLESS_RANGE_START, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %52

25:                                               ; preds = %18
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PACKET_ID_LOSSLESS_RANGE_START, align 8
  %30 = load i64, i64* @PACKET_ID_LOSSLESS_RANGE_SIZE, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %52

34:                                               ; preds = %25
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_4__*, i32, i64*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i64*, i32, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_4__*, i32, i64*, i32, i32)* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_4__*, i32, i64*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i64*, i32, i32)** %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i64*, i64** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %42(%struct.TYPE_4__* %43, i32 %44, i64* %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %39, %34
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %33, %24, %17
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @friend_not_valid(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
