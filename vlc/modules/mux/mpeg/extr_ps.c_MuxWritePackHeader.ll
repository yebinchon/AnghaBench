; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ps.c_MuxWritePackHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ps.c_MuxWritePackHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_11__**, i64)* @MuxWritePackHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MuxWritePackHeader(%struct.TYPE_9__* %0, %struct.TYPE_11__** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = call i32 @TO_SCALE_NZ(i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = call %struct.TYPE_11__* @block_Alloc(i32 18)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %96

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  store i64 %26, i64* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bits_initwrite(i32* %8, i32 14, i32 %33)
  %35 = call i32 @bits_write(i32* %8, i32 32, i32 442)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 400
  %40 = sub nsw i32 %39, 1
  %41 = sdiv i32 %40, 400
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %25
  %47 = call i32 @bits_write(i32* %8, i32 2, i32 1)
  br label %50

48:                                               ; preds = %25
  %49 = call i32 @bits_write(i32* %8, i32 4, i32 2)
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %10, align 4
  %52 = ashr i32 %51, 30
  %53 = and i32 %52, 7
  %54 = call i32 @bits_write(i32* %8, i32 3, i32 %53)
  %55 = call i32 @bits_write(i32* %8, i32 1, i32 1)
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 15
  %58 = and i32 %57, 32767
  %59 = call i32 @bits_write(i32* %8, i32 15, i32 %58)
  %60 = call i32 @bits_write(i32* %8, i32 1, i32 1)
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 32767
  %63 = call i32 @bits_write(i32* %8, i32 15, i32 %62)
  %64 = call i32 @bits_write(i32* %8, i32 1, i32 1)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %50
  %70 = call i32 @bits_write(i32* %8, i32 9, i32 0)
  br label %71

71:                                               ; preds = %69, %50
  %72 = call i32 @bits_write(i32* %8, i32 1, i32 1)
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @bits_write(i32* %8, i32 22, i32 %73)
  %75 = call i32 @bits_write(i32* %8, i32 1, i32 1)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = call i32 @bits_write(i32* %8, i32 1, i32 1)
  %82 = call i32 @bits_write(i32* %8, i32 5, i32 31)
  %83 = call i32 @bits_write(i32* %8, i32 3, i32 0)
  br label %84

84:                                               ; preds = %80, %71
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 14, i32 12
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = call i32 @block_ChainAppend(%struct.TYPE_11__** %93, %struct.TYPE_11__* %94)
  br label %96

96:                                               ; preds = %84, %24
  ret void
}

declare dso_local i32 @TO_SCALE_NZ(i64) #1

declare dso_local %struct.TYPE_11__* @block_Alloc(i32) #1

declare dso_local i32 @bits_initwrite(i32*, i32, i32) #1

declare dso_local i32 @bits_write(i32*, i32, i32) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_11__**, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
