; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_livehttp.c_Write.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_livehttp.c_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__**, %struct.TYPE_14__*, %struct.TYPE_14__**, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__* }

@BLOCK_FLAG_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Moving ongoing segment to full segments-queue\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Error in write loop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_14__*)* @Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Write(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %7, align 8
  br label %13

13:                                               ; preds = %60, %2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %74

16:                                               ; preds = %13
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BLOCK_FLAG_HEADER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26, %21
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = call i32 @msg_Dbg(%struct.TYPE_12__* %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = call i32 @block_ChainLastAppend(%struct.TYPE_14__*** %37, %struct.TYPE_14__* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  store %struct.TYPE_14__** %45, %struct.TYPE_14__*** %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %33, %26, %16
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = call i64 @CheckSegmentChange(%struct.TYPE_12__* %51, %struct.TYPE_14__* %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = call i32 @msg_Err(%struct.TYPE_12__* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %3, align 8
  br label %76

60:                                               ; preds = %50
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %9, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = call i32 @block_ChainLastAppend(%struct.TYPE_14__*** %70, %struct.TYPE_14__* %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %5, align 8
  br label %13

74:                                               ; preds = %13
  %75 = load i64, i64* %6, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %74, %56
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @block_ChainLastAppend(%struct.TYPE_14__***, %struct.TYPE_14__*) #1

declare dso_local i64 @CheckSegmentChange(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
