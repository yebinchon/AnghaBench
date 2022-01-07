; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtcp.c_CloseRTCP.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtcp.c_CloseRTCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CloseRTCP(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %56

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = call i32 (...) @NTPtime64()
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @SetQWBE(i32* %14, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 %19
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 129, i32* %23, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 203, i32* %25, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = call i32 @SetWBE(i32* %27, i32 1)
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = call i32 @memcpy(i32* %30, i32* %34, i32 4)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 8
  store i64 %39, i64* %37, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @send(i32 %42, i32* %45, i64 %48, i32 0)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @net_Close(i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = call i32 @free(%struct.TYPE_4__* %54)
  br label %56

56:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @NTPtime64(...) #1

declare dso_local i32 @SetQWBE(i32*, i32) #1

declare dso_local i32 @SetWBE(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @send(i32, i32*, i64, i32) #1

declare dso_local i32 @net_Close(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
