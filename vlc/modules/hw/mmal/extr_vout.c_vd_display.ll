; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_vd_display.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_vd_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_18__, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i64 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Failed to send buffer to input port. Frame dropped\00", align 1
@subpicture = common dso_local global i32 0, align 4
@PHASE_CHECK_INTERVAL = common dso_local global i32 0, align 4
@MAX_BUFFERS_IN_TRANSIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_21__*)* @vd_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vd_display(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %5, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %6, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %7, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %51, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %26
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %43, %35, %26, %2
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  %77 = call i32 @configure_display(%struct.TYPE_19__* %74, i32* null, %struct.TYPE_18__* %76)
  br label %78

78:                                               ; preds = %51, %43
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %126, label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 10
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %99 = call i32 @picture_Hold(%struct.TYPE_21__* %98)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 10
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %106 = call i64 @mmal_port_send_buffer(%struct.TYPE_17__* %104, %struct.TYPE_23__* %105)
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @MMAL_SUCCESS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %88
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 7
  %113 = call i32 @atomic_fetch_add(i32* %112, i32 1)
  br label %114

114:                                              ; preds = %110, %88
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @MMAL_SUCCESS, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %120 = call i32 @msg_Err(%struct.TYPE_19__* %119, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = call i32 @picture_Release(%struct.TYPE_21__* %121)
  br label %123

123:                                              ; preds = %118, %114
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %83
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %128 = load i32, i32* @subpicture, align 4
  %129 = call i32 @display_subpicture(%struct.TYPE_19__* %127, i32 %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %126
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 9
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %141 = call i32 @maintain_phase_sync(%struct.TYPE_19__* %140)
  br label %142

142:                                              ; preds = %139, %134, %126
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* @PHASE_CHECK_INTERVAL, align 4
  %148 = srem i32 %146, %147
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %142
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 5
  %158 = call i32 @vlc_mutex_lock(i32* %157)
  br label %159

159:                                              ; preds = %165, %155
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 7
  %162 = call i64 @atomic_load(i32* %161)
  %163 = load i64, i64* @MAX_BUFFERS_IN_TRANSIT, align 8
  %164 = icmp sge i64 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 6
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 5
  %170 = call i32 @vlc_cond_wait(i32* %167, i32* %169)
  br label %159

171:                                              ; preds = %159
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 5
  %174 = call i32 @vlc_mutex_unlock(i32* %173)
  br label %175

175:                                              ; preds = %171, %142
  ret void
}

declare dso_local i32 @configure_display(%struct.TYPE_19__*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @picture_Hold(%struct.TYPE_21__*) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_17__*, %struct.TYPE_23__*) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_21__*) #1

declare dso_local i32 @display_subpicture(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @maintain_phase_sync(%struct.TYPE_19__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
