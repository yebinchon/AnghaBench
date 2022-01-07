; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_fps.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_fps.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"skipping non-dated picture\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Resetting timestamps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_20__*, %struct.TYPE_19__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @Filter(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %6, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VLC_TICK_INVALID, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = call i32 @msg_Dbg(%struct.TYPE_20__* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = call i32 @picture_Release(%struct.TYPE_19__* %23)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %178

25:                                               ; preds = %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 2
  %44 = call i64 @date_Get(i32* %43)
  %45 = load i64, i64* @VLC_TICK_INVALID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %25
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 2
  %53 = call i64 @date_Get(i32* %52)
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = icmp sgt i64 %50, %57
  br label %59

59:                                               ; preds = %47, %25
  %60 = phi i1 [ true, %25 ], [ %58, %47 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %59
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = call i32 @msg_Dbg(%struct.TYPE_20__* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @date_Set(i32* %68, i64 %71)
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = icmp ne %struct.TYPE_19__* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %64
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = call i32 @picture_Release(%struct.TYPE_19__* %80)
  br label %82

82:                                               ; preds = %77, %64
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = call %struct.TYPE_19__* @picture_Hold(%struct.TYPE_19__* %83)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  store %struct.TYPE_19__* %84, %struct.TYPE_19__** %86, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  %89 = call i32 @date_Increment(i32* %88, i32 1)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %90, %struct.TYPE_19__** %3, align 8
  br label %178

91:                                               ; preds = %59
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = call i64 @date_Get(i32* %96)
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = icmp slt i64 %94, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %91
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = icmp ne %struct.TYPE_19__* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = call i32 @picture_Release(%struct.TYPE_19__* %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  store %struct.TYPE_19__* %114, %struct.TYPE_19__** %116, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %178

117:                                              ; preds = %91
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  %120 = call i64 @date_Get(i32* %119)
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  store i64 %120, i64* %124, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = call i32 @date_Increment(i32* %126, i32 1)
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  store %struct.TYPE_19__* %130, %struct.TYPE_19__** %7, align 8
  br label %131

131:                                              ; preds = %146, %117
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = call i64 @date_Get(i32* %133)
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %138, %141
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %131
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = call %struct.TYPE_19__* @picture_NewFromFormat(%struct.TYPE_22__* %149)
  store %struct.TYPE_19__* %150, %struct.TYPE_19__** %8, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = call i32 @picture_Copy(%struct.TYPE_19__* %151, %struct.TYPE_19__* %154)
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  %158 = call i64 @date_Get(i32* %157)
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %162, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  store %struct.TYPE_19__* %163, %struct.TYPE_19__** %165, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %166, %struct.TYPE_19__** %7, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 2
  %169 = call i32 @date_Increment(i32* %168, i32 1)
  br label %131

170:                                              ; preds = %131
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %172, align 8
  store %struct.TYPE_19__* %173, %struct.TYPE_19__** %7, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  store %struct.TYPE_19__* %174, %struct.TYPE_19__** %176, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %177, %struct.TYPE_19__** %3, align 8
  br label %178

178:                                              ; preds = %170, %113, %82, %20
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %179
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_19__*) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local %struct.TYPE_19__* @picture_Hold(%struct.TYPE_19__*) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @picture_NewFromFormat(%struct.TYPE_22__*) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
