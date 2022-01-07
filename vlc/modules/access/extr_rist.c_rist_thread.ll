; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_rist_thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_rist_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"Sent %u NACKs !!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rist_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rist_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %4, align 8
  br label %13

13:                                               ; preds = %54, %1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_15__* @block_FifoGet(i32 %16)
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %5, align 8
  %18 = call i32 (...) @vlc_savecancel()
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %37 [
    i32 128, label %27
  ]

27:                                               ; preds = %13
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @send_bbnack(%struct.TYPE_13__* %28, i32 %33, %struct.TYPE_15__* %34, i32 %35)
  br label %47

37:                                               ; preds = %13
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @send_rbnack(%struct.TYPE_13__* %38, i32 %43, %struct.TYPE_15__* %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %27
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @msg_Dbg(%struct.TYPE_13__* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = call i32 @block_Release(%struct.TYPE_15__* %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @vlc_restorecancel(i32 %57)
  br label %13
}

declare dso_local %struct.TYPE_15__* @block_FifoGet(i32) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @send_bbnack(%struct.TYPE_13__*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @send_rbnack(%struct.TYPE_13__*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_15__*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
