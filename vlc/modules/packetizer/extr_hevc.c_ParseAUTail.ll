; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ParseAUTail.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ParseAUTail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@MISSING = common dso_local global i32 0, align 4
@BLOCK_FLAG_END_OF_SEQUENCE = common dso_local global i32 0, align 4
@ParseSEICallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_15__*, i32, %struct.TYPE_17__*)* @ParseAUTail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @ParseAUTail(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = call i32 @block_ChainLastAppend(i32* %14, %struct.TYPE_17__* %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %53 [
    i32 129, label %18
    i32 130, label %18
    i32 128, label %43
  ]

18:                                               ; preds = %3, %3
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MISSING, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %25, %18
  %31 = phi i1 [ false, %18 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call %struct.TYPE_17__* @OutputQueues(%struct.TYPE_16__* %19, i32 %32)
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %8, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = icmp ne %struct.TYPE_17__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* @BLOCK_FLAG_END_OF_SEQUENCE, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %30
  br label %53

43:                                               ; preds = %3
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ParseSEICallback, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = call i32 @HxxxParse_AnnexB_SEI(i32 %46, i32 %49, i32 2, i32 %50, %struct.TYPE_15__* %51)
  br label %53

53:                                               ; preds = %3, %43, %42
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = icmp ne %struct.TYPE_17__* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = call %struct.TYPE_17__* @OutputQueues(%struct.TYPE_16__* %63, i32 0)
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %8, align 8
  br label %65

65:                                               ; preds = %62, %56, %53
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  ret %struct.TYPE_17__* %66
}

declare dso_local i32 @block_ChainLastAppend(i32*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @OutputQueues(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @HxxxParse_AnnexB_SEI(i32, i32, i32, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
