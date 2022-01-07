; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_DTVCC_Demux_ServiceBlocks.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_DTVCC_Demux_ServiceBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i32, i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32*, i64)* @CEA708_DTVCC_Demux_ServiceBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CEA708_DTVCC_Demux_ServiceBlocks(%struct.TYPE_3__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %11

11:                                               ; preds = %49, %4
  %12 = load i64, i64* %8, align 8
  %13 = icmp uge i64 %12, 2
  br i1 %13, label %14, label %73

14:                                               ; preds = %11
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 5
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 31
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %28, 1
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %14
  br label %73

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 7
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 63
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 7
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %73

43:                                               ; preds = %35
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32* %45, i32** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %43, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32* %51, i32** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %52, 1
  store i64 %53, i64* %8, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32 (i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32*, i32)** %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 %56(i32 %59, i32 %60, i32 %61, i32* %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %8, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %8, align 8
  br label %11

73:                                               ; preds = %31, %42, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
