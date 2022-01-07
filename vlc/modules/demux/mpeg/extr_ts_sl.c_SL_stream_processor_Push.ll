; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_sl.c_SL_stream_processor_Push.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_sl.c_SL_stream_processor_Push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_22__ = type { i32*, i32**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_17__*, i32, %struct.TYPE_21__*)* @SL_stream_processor_Push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @SL_stream_processor_Push(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %8, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %9, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 254
  %27 = icmp ne i32 %26, 250
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = call i32 @block_Release(%struct.TYPE_21__* %29)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  br label %141

31:                                               ; preds = %3
  %32 = load i32*, i32** %10, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_20__* @GetMPEG4DescByEsId(i32* %32, i32 %35)
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %11, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %38 = icmp ne %struct.TYPE_20__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %41 = call i32 @block_Release(%struct.TYPE_21__* %40)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %139

42:                                               ; preds = %31
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  call void @DecodeSLHeader(%struct.TYPE_19__* sret %12, i32 %45, i32 %48, i32* %50)
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %42
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  br label %77

73:                                               ; preds = %42
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i64 [ %72, %70 ], [ %76, %73 ]
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  br label %91

87:                                               ; preds = %77
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi i64 [ %86, %84 ], [ %90, %87 ]
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %91
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @block_ChainRelease(i32* %106)
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  store i32** %111, i32*** %113, align 8
  br label %114

114:                                              ; preds = %103, %98, %91
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %118 = call i32 @block_ChainLastAppend(i32*** %116, %struct.TYPE_21__* %117)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %114
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call %struct.TYPE_21__* @block_ChainGather(i32* %130)
  store %struct.TYPE_21__* %131, %struct.TYPE_21__** %7, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  store i32* null, i32** %133, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  store i32** %135, i32*** %137, align 8
  br label %138

138:                                              ; preds = %127, %122, %114
  br label %139

139:                                              ; preds = %138, %39
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %140, %struct.TYPE_21__** %4, align 8
  br label %141

141:                                              ; preds = %139, %28
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  ret %struct.TYPE_21__* %142
}

declare dso_local i32 @block_Release(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @GetMPEG4DescByEsId(i32*, i32) #1

declare dso_local void @DecodeSLHeader(%struct.TYPE_19__* sret, i32, i32, i32*) #1

declare dso_local i32 @block_ChainRelease(i32*) #1

declare dso_local i32 @block_ChainLastAppend(i32***, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @block_ChainGather(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
