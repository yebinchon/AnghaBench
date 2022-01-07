; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_ReadyQueuesPostSeek.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_ReadyQueuesPostSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__** }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_31__, %struct.TYPE_28__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_30__, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32, i32, %struct.TYPE_29__, %struct.TYPE_21__* }
%struct.TYPE_29__ = type { i32*, i32** }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_20__* }

@TYPE_STREAM = common dso_local global i64 0, align 8
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @ReadyQueuesPostSeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadyQueuesPostSeek(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_23__* @GetPID(i32* %14, i32 0)
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %153, %1
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %156

26:                                               ; preds = %19
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %30, i64 %32
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %146, %26
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %149

45:                                               ; preds = %38
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %49, i64 %51
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %8, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %56, align 8
  store %struct.TYPE_32__* %57, %struct.TYPE_32__** %9, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TYPE_STREAM, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %146

64:                                               ; preds = %45
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  store %struct.TYPE_21__* %67, %struct.TYPE_21__** %10, align 8
  br label %68

68:                                               ; preds = %77, %64
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %70 = icmp ne %struct.TYPE_21__* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %10, align 8
  br label %68

81:                                               ; preds = %68
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  store i32 255, i32* %83, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 0
  store i32 -1, i32* %90, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %126

99:                                               ; preds = %81
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @block_ChainRelease(i32* %106)
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  store i32* null, i32** %113, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 1
  store i32** %119, i32*** %125, align 8
  br label %126

126:                                              ; preds = %99, %81
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ts_sections_processor_Reset(i32 %132)
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ts_stream_processor_Reset(i32 %139)
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %143, align 8
  %145 = call i32 @FlushESBuffer(%struct.TYPE_32__* %144)
  br label %146

146:                                              ; preds = %126, %63
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %38

149:                                              ; preds = %38
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 0
  store i32 -1, i32* %152, align 8
  br label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %19

156:                                              ; preds = %19
  ret void
}

declare dso_local %struct.TYPE_23__* @GetPID(i32*, i32) #1

declare dso_local i32 @block_ChainRelease(i32*) #1

declare dso_local i32 @ts_sections_processor_Reset(i32) #1

declare dso_local i32 @ts_stream_processor_Reset(i32) #1

declare dso_local i32 @FlushESBuffer(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
