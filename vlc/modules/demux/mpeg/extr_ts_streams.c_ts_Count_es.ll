; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_streams.c_ts_Count_es.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_streams.c_ts_Count_es.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32*, i32, %struct.TYPE_3__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ts_Count_es(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %48, %3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %52

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  br label %35

22:                                               ; preds = %11
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %26, %29
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ true, %22 ], [ %30, %25 ]
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  br label %35

35:                                               ; preds = %31, %14
  %36 = phi i32 [ %21, %14 ], [ %34, %31 ]
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @ts_Count_es(%struct.TYPE_3__* %42, i32 %43, i32* %44)
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %35
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %4, align 8
  br label %8

52:                                               ; preds = %8
  %53 = load i64, i64* %7, align 8
  ret i64 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
