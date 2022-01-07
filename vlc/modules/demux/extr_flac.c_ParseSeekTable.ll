; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_flac.c_ParseSeekTable.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_flac.c_ParseSeekTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@INT64_MAX = common dso_local global i64 0, align 8
@FLAC_STREAMINFO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i64, i32)* @ParseSeekTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseSeekTable(%struct.TYPE_10__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %125

20:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %122, %20
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, 4
  %25 = udiv i64 %24, 18
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %125

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = mul i64 18, %29
  %31 = add i64 4, %30
  %32 = add i64 %31, 0
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = call i64 @GetQWBE(i32* %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %27
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @INT64_MAX, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %11, align 8
  %44 = mul i64 18, %43
  %45 = add i64 4, %44
  %46 = add i64 %45, 8
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = call i64 @GetQWBE(i32* %47)
  %49 = load i64, i64* @FLAC_STREAMINFO_SIZE, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41, %37, %27
  br label %125

52:                                               ; preds = %41
  %53 = call %struct.TYPE_9__* @xmalloc(i32 16)
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @vlc_tick_from_samples(i64 %54, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = mul i64 18, %60
  %62 = add i64 4, %61
  %63 = add i64 %62, 8
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = call i64 @GetQWBE(i32* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %106, %52
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %109

74:                                               ; preds = %68
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %77, i64 %79
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %102, label %88

88:                                               ; preds = %74
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %91, i64 %93
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %88, %74
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %104 = call i32 @free(%struct.TYPE_9__* %103)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %109

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %68

109:                                              ; preds = %102, %68
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %111 = icmp ne %struct.TYPE_9__* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %117, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %120 = call i32 @TAB_APPEND(i32 %115, %struct.TYPE_12__** %118, %struct.TYPE_9__* %119)
  br label %121

121:                                              ; preds = %112, %109
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %11, align 8
  br label %21

125:                                              ; preds = %19, %51, %21
  ret void
}

declare dso_local i64 @GetQWBE(i32*) #1

declare dso_local %struct.TYPE_9__* @xmalloc(i32) #1

declare dso_local i32 @vlc_tick_from_samples(i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @TAB_APPEND(i32, %struct.TYPE_12__**, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
