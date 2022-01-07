; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_scte.c_SCTE18_Section_Callback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_scte.c_SCTE18_Section_Callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__*, i32, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@TYPE_PSIP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Received EAS Alert with priority %d\00", align 1
@EAS_PRIORITY_HIGH = common dso_local global i32 0, align 4
@EAS_PRIORITY_MAX = common dso_local global i32 0, align 4
@ES_OUT_SET_ES_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCTE18_Section_Callback(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %19, %struct.TYPE_25__** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %8, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %9, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TYPE_PSIP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = icmp ne %struct.TYPE_22__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %3
  br label %148

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %144, %37
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = icmp ne %struct.TYPE_24__* %39, null
  br i1 %40, label %41, label %148

41:                                               ; preds = %38
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  store i64 %48, i64* %10, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @scte18_get_EAS_priority(i64 %51, i64 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @msg_Dbg(%struct.TYPE_25__* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @EAS_PRIORITY_HIGH, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %41
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @EAS_PRIORITY_MAX, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %144

65:                                               ; preds = %60, %41
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %67, align 8
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %12, align 8
  br label %69

69:                                               ; preds = %139, %65
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %71 = icmp ne %struct.TYPE_22__* %70, null
  br i1 %71, label %72, label %143

72:                                               ; preds = %69
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 2
  %83 = call i64 @es_out_Add(i32 %80, i32* %82)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = icmp ne i64 %83, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %139

88:                                               ; preds = %77, %72
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  store %struct.TYPE_20__* %91, %struct.TYPE_20__** %13, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @TimeStampWrapAround(i32 %95, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %103, %106
  %108 = call %struct.TYPE_16__* @block_Alloc(i64 %107)
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %15, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @memcpy(i32 %111, i64 %114, i64 %115)
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @FROM_SCALE(i32 %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 4
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ES_OUT_SET_ES_STATE, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @es_out_Control(i32 %125, i32 %126, i64 %129, i32 1)
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %138 = call i32 @es_out_Send(i32 %133, i64 %136, %struct.TYPE_16__* %137)
  br label %139

139:                                              ; preds = %88, %87
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  store %struct.TYPE_22__* %142, %struct.TYPE_22__** %12, align 8
  br label %69

143:                                              ; preds = %69
  br label %144

144:                                              ; preds = %143, %64
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %146, align 8
  store %struct.TYPE_24__* %147, %struct.TYPE_24__** %5, align 8
  br label %38

148:                                              ; preds = %36, %38
  ret void
}

declare dso_local i32 @scte18_get_EAS_priority(i64, i64) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i64 @es_out_Add(i32, i32*) #1

declare dso_local i32 @TimeStampWrapAround(i32, i32) #1

declare dso_local %struct.TYPE_16__* @block_Alloc(i64) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @FROM_SCALE(i32) #1

declare dso_local i32 @es_out_Control(i32, i32, i64, i32) #1

declare dso_local i32 @es_out_Send(i32, i64, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
