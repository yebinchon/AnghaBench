; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_FragTrunSeekToTime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_FragTrunSeekToTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }

@MP4_TRUN_SAMPLE_DURATION = common dso_local global i32 0, align 4
@MP4_TRUN_SAMPLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64)* @FragTrunSeekToTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FragTrunSeekToTime(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %2
  br label %167

27:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %150, %27
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %45, %50
  br i1 %51, label %52, label %153

52:                                               ; preds = %44
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i64 %59
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %10, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %11, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %52
  br label %153

78:                                               ; preds = %52
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %5, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %8, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %7, align 8
  store i32 0, i32* %6, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %12, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %146, %78
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %100, label %149

100:                                              ; preds = %94
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MP4_TRUN_SAMPLE_DURATION, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %107, %100
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %12, align 8
  %119 = add nsw i64 %117, %118
  %120 = load i64, i64* %4, align 8
  %121 = icmp sgt i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %149

123:                                              ; preds = %116
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MP4_TRUN_SAMPLE_SIZE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %13, align 8
  br label %139

139:                                              ; preds = %130, %123
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* %8, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %8, align 8
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* %7, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %7, align 8
  br label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %14, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %94

149:                                              ; preds = %122, %94
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %44

153:                                              ; preds = %77, %44
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 4
  store i64 %158, i64* %161, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  store i32 %162, i32* %166, align 4
  br label %167

167:                                              ; preds = %153, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
