; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_telx.c_DecodeNormalPacket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_telx.c_DecodeNormalPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32, i32)* @DecodeNormalPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeNormalPacket(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %12, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %20, %5
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32, %20
  store i32 0, i32* %6, align 4
  br label %61

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 24
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @DecodePacketX1_X23(%struct.TYPE_6__* %46, i32* %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %61

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 25
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @DecodePacketX25(%struct.TYPE_6__* %56, i32* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %55, %45, %41
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @DecodePacketX1_X23(%struct.TYPE_6__*, i32*, i32, i32, i32) #1

declare dso_local i32 @DecodePacketX25(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
