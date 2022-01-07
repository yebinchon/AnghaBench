; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_ttmlpes.h_DecompressTTML.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_ttmlpes.h_DecompressTTML.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [8 x i8] c"inflate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i32*, i64)* @DecompressTTML to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @DecompressTTML(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__** %8, %struct.TYPE_6__*** %9, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32* @vlc_stream_MemoryNew(i32* %12, i32* %13, i64 %14, i32 1)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %56

19:                                               ; preds = %3
  %20 = load i32*, i32** %10, align 8
  %21 = call i32* @vlc_stream_FilterNew(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i32*, i32** %11, align 8
  %27 = call %struct.TYPE_6__* @vlc_stream_Block(i32* %26, i32 65536)
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 65536
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %25
  br label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store %struct.TYPE_6__** %42, %struct.TYPE_6__*** %9, align 8
  br label %25

43:                                               ; preds = %38
  %44 = load i32*, i32** %11, align 8
  store i32* %44, i32** %10, align 8
  br label %45

45:                                               ; preds = %43, %19
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @vlc_stream_Delete(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = call %struct.TYPE_6__* @block_ChainGather(%struct.TYPE_6__* %51)
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi %struct.TYPE_6__* [ %52, %50 ], [ null, %53 ]
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %4, align 8
  br label %56

56:                                               ; preds = %54, %18
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %57
}

declare dso_local i32* @vlc_stream_MemoryNew(i32*, i32*, i64, i32) #1

declare dso_local i32* @vlc_stream_FilterNew(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @vlc_stream_Block(i32*, i32) #1

declare dso_local i32 @vlc_stream_Delete(i32*) #1

declare dso_local %struct.TYPE_6__* @block_ChainGather(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
