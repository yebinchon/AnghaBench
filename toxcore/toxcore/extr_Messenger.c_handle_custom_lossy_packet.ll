; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_handle_custom_lossy_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_handle_custom_lossy_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)*, i32 }

@PACKET_ID_LOSSY_RANGE_START = common dso_local global i64 0, align 8
@PACKET_LOSSY_AV_RESERVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i32)* @handle_custom_lossy_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_custom_lossy_packet(i8* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %10, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @friend_not_valid(%struct.TYPE_9__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %101

18:                                               ; preds = %4
  %19 = load i64*, i64** %8, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PACKET_ID_LOSSY_RANGE_START, align 8
  %23 = load i64, i64* @PACKET_LOSSY_AV_RESERVED, align 8
  %24 = add i64 %22, %23
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PACKET_LOSSY_AV_RESERVED, align 8
  %39 = urem i64 %37, %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)* %42, null
  br i1 %43, label %44, label %82

44:                                               ; preds = %26
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PACKET_LOSSY_AV_RESERVED, align 8
  %57 = urem i64 %55, %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)** %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i64*, i64** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PACKET_LOSSY_AV_RESERVED, align 8
  %77 = urem i64 %75, %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %60(%struct.TYPE_9__* %61, i32 %62, i64* %63, i32 %64, i32 %80)
  store i32 %81, i32* %5, align 4
  br label %101

82:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %101

83:                                               ; preds = %18
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i64*, i32, i32)** %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i64*, i64** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 %91(%struct.TYPE_9__* %92, i32 %93, i64* %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %88, %83
  store i32 1, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %82, %44, %17
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @friend_not_valid(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
