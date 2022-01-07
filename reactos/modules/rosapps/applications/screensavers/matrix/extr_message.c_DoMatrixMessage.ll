; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_message.c_DoMatrixMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_message.c_DoMatrixMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@g_nNumMessages = common dso_local global i32 0, align 4
@g_fRandomizeMessages = common dso_local global i64 0, align 8
@g_szMessages = common dso_local global i32* null, align 8
@MSGSPEED_MAX = common dso_local global i32 0, align 4
@g_nMessageSpeed = common dso_local global i32 0, align 4
@MSGSPEED_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DoMatrixMessage(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  %11 = call i32 (...) @MessageSpeed()
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @g_nNumMessages, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %106

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = icmp slt i32 %17, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %106

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sdiv i32 %26, 2
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, 4
  %30 = add nsw i32 %27, %29
  %31 = icmp eq i32 %24, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = call i32 @ClearMatrixMessage(%struct.TYPE_9__* %33)
  br label %35

35:                                               ; preds = %32, %21
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %35
  %42 = load i64, i64* @g_fRandomizeMessages, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = call i32 (...) @crc_rand()
  %46 = load i32, i32* @g_nNumMessages, align 4
  %47 = srem i32 %45, %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %59

50:                                               ; preds = %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* @g_nNumMessages, align 4
  %56 = srem i32 %54, %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %44
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = load i32*, i32** @g_szMessages, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SetMatrixMessage(%struct.TYPE_9__* %60, i32 0, i32 %67)
  %69 = call i32 (...) @crc_rand()
  %70 = load i32, i32* @MSGSPEED_MAX, align 4
  %71 = srem i32 %69, %70
  %72 = sub nsw i32 0, %71
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %101

75:                                               ; preds = %35
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sdiv i32 %79, 2
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = load i32, i32* @g_nMessageSpeed, align 4
  %84 = load i32, i32* @MSGSPEED_MIN, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = shl i32 %86, 16
  %88 = load i32, i32* @MSGSPEED_MAX, align 4
  %89 = sdiv i32 %87, %88
  %90 = add nsw i32 65536, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 %91, 3
  %93 = load i32, i32* @g_nMessageSpeed, align 4
  %94 = mul nsw i32 %92, %93
  %95 = ashr i32 %94, 16
  store i32 %95, i32* %7, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 100
  %99 = call i32 @RevealMatrixMessage(%struct.TYPE_9__* %96, i32 %98)
  br label %100

100:                                              ; preds = %82, %75
  br label %101

101:                                              ; preds = %100, %59
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @DrawMatrixMessage(%struct.TYPE_10__* %102, %struct.TYPE_9__* %103, i32 %104)
  br label %106

106:                                              ; preds = %20, %101, %2
  ret void
}

declare dso_local i32 @MessageSpeed(...) #1

declare dso_local i32 @ClearMatrixMessage(%struct.TYPE_9__*) #1

declare dso_local i32 @crc_rand(...) #1

declare dso_local i32 @SetMatrixMessage(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @RevealMatrixMessage(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @DrawMatrixMessage(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
