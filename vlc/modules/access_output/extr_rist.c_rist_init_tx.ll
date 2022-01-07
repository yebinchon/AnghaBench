; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_rist_init_tx.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_rist_init_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rist_flow = type { i32, i32, i32, i32, i32* }

@RIST_QUEUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rist_flow* ()* @rist_init_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rist_flow* @rist_init_tx() #0 {
  %1 = alloca %struct.rist_flow*, align 8
  %2 = alloca %struct.rist_flow*, align 8
  %3 = call i8* @calloc(i32 1, i32 24)
  %4 = bitcast i8* %3 to %struct.rist_flow*
  store %struct.rist_flow* %4, %struct.rist_flow** %2, align 8
  %5 = load %struct.rist_flow*, %struct.rist_flow** %2, align 8
  %6 = icmp ne %struct.rist_flow* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.rist_flow* null, %struct.rist_flow** %1, align 8
  br label %34

8:                                                ; preds = %0
  %9 = load %struct.rist_flow*, %struct.rist_flow** %2, align 8
  %10 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* @RIST_QUEUE_SIZE, align 4
  %12 = call i8* @calloc(i32 %11, i32 4)
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.rist_flow*, %struct.rist_flow** %2, align 8
  %15 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %14, i32 0, i32 4
  store i32* %13, i32** %15, align 8
  %16 = load %struct.rist_flow*, %struct.rist_flow** %2, align 8
  %17 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load %struct.rist_flow*, %struct.rist_flow** %2, align 8
  %25 = call i32 @free(%struct.rist_flow* %24)
  store %struct.rist_flow* null, %struct.rist_flow** %1, align 8
  br label %34

26:                                               ; preds = %8
  %27 = load %struct.rist_flow*, %struct.rist_flow** %2, align 8
  %28 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  %29 = load %struct.rist_flow*, %struct.rist_flow** %2, align 8
  %30 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %29, i32 0, i32 2
  store i32 -1, i32* %30, align 8
  %31 = load %struct.rist_flow*, %struct.rist_flow** %2, align 8
  %32 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %31, i32 0, i32 3
  store i32 -1, i32* %32, align 4
  %33 = load %struct.rist_flow*, %struct.rist_flow** %2, align 8
  store %struct.rist_flow* %33, %struct.rist_flow** %1, align 8
  br label %34

34:                                               ; preds = %26, %23, %7
  %35 = load %struct.rist_flow*, %struct.rist_flow** %1, align 8
  ret %struct.rist_flow* %35
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(%struct.rist_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
