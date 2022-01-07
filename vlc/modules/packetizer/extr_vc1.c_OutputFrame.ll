; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_vc1.c_OutputFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_vc1.c_OutputFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64, i64, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__**, i32, i32, i64, i64, i32, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@BLOCK_FLAG_TYPE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_19__*)* @OutputFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @OutputFrame(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %3, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %1
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_21__* @block_Duplicate(i32 %26)
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %5, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 12
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_21__* @block_Duplicate(i32 %31)
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %6, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %34 = icmp ne %struct.TYPE_21__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = call i32 @block_ChainAppend(%struct.TYPE_21__** %5, %struct.TYPE_21__* %36)
  br label %38

38:                                               ; preds = %35, %22
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = call i32 @block_ChainAppend(%struct.TYPE_21__** %5, %struct.TYPE_21__* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 4
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %48, align 8
  br label %49

49:                                               ; preds = %38, %1
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = call %struct.TYPE_21__* @block_ChainGather(%struct.TYPE_21__* %58)
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %9, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %61 = icmp ne %struct.TYPE_21__* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %49
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %62, %49
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @VLC_TICK_INVALID, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 10
  %80 = call i64 @date_Get(i32* %79)
  store i64 %80, i64* %7, align 8
  br label %86

81:                                               ; preds = %73
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 10
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @date_Set(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %81, %77
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @VLC_TICK_INVALID, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 11
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @BLOCK_FLAG_TYPE_B, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96, %90
  %102 = load i64, i64* %7, align 8
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %101, %96
  br label %104

104:                                              ; preds = %103, %86
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %106 = icmp ne %struct.TYPE_21__* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i64, i64* %7, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %107, %104
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 10
  %131 = call i32 @date_Increment(i32* %130, i32 2)
  br label %132

132:                                              ; preds = %128, %121, %114
  %133 = load i64, i64* %8, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 9
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 8
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 6
  %149 = call i32 @cc_Flush(i32* %148)
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 3
  store i32 0, i32* %151, align 4
  %152 = load i64, i64* @VLC_TICK_INVALID, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load i64, i64* @VLC_TICK_INVALID, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %159, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 5
  store %struct.TYPE_21__** %161, %struct.TYPE_21__*** %163, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  ret %struct.TYPE_21__* %164
}

declare dso_local %struct.TYPE_21__* @block_Duplicate(i32) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_21__**, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @block_ChainGather(%struct.TYPE_21__*) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

declare dso_local i32 @cc_Flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
