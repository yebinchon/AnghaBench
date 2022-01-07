; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cvdsub.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cvdsub.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %11, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = call i32 @block_Release(%struct.TYPE_7__* %20)
  %22 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %12
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = call %struct.TYPE_7__* @Reassemble(i32* %24, %struct.TYPE_7__* %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %6, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = call i32* @DecodePacket(i32* %31, %struct.TYPE_7__* %32)
  store i32* %33, i32** %7, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = call i32 @block_Release(%struct.TYPE_7__* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @decoder_QueueSub(i32* %39, i32* %40)
  br label %42

42:                                               ; preds = %38, %30
  %43 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %28, %19, %10
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @Reassemble(i32*, %struct.TYPE_7__*) #1

declare dso_local i32* @DecodePacket(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @decoder_QueueSub(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
