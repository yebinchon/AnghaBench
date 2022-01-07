; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_es_out_timeshift.c_TsRun.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_es_out_timeshift.c_TsRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"es out timeshift: auto reset rate to %f\00", align 1
@INPUT_CONTROL_SET_RATE = common dso_local global i32 0, align 4
@cmd_cleanup_routine = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @TsRun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @TsRun(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %3, align 8
  store i64 -1, i64* %4, align 8
  br label %15

15:                                               ; preds = %238, %1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 7
  %18 = call i32 @vlc_mutex_lock(i32* %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 7
  %21 = call i32 @mutex_cleanup_push(i32* %20)
  br label %22

22:                                               ; preds = %42, %15
  %23 = call i32 (...) @vlc_savecancel()
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @es_out_GetBuffering(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32, %22
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = call i32 @TsPopCmdLocked(%struct.TYPE_16__* %36, %struct.TYPE_17__* %5, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @vlc_restorecancel(i32 %40)
  br label %50

42:                                               ; preds = %35, %32
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @vlc_restorecancel(i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 9
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 7
  %49 = call i32 @vlc_cond_wait(i32* %46, i32* %48)
  br label %22

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i64, i64* %4, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %4, align 8
  br label %79

59:                                               ; preds = %53, %50
  %60 = load i64, i64* %4, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %63, %65
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %4, align 8
  br label %77

76:                                               ; preds = %62
  store i64 -1, i64* %4, align 8
  br label %77

77:                                               ; preds = %76, %73
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %56
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %101, %104
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = mul nsw i64 %106, %109
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = sdiv i64 %110, %113
  %115 = load i64, i64* %9, align 8
  %116 = sub nsw i64 %114, %115
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %99, %89
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %186

132:                                              ; preds = %119
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %135, %138
  br i1 %139, label %140, label %186

140:                                              ; preds = %132
  %141 = call i32 (...) @vlc_savecancel()
  store i32 %141, i32* %10, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @msg_Warn(i32 %144, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %147)
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 5
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  store i64 -1, i64* %156, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @es_out_SetRate(i32 %164, i64 %167, i64 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %140
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %174, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @INPUT_CONTROL_SET_RATE, align 4
  %182 = call i32 @input_ControlPushHelper(i32 %180, i32 %181, %struct.TYPE_15__* %11)
  br label %183

183:                                              ; preds = %173, %140
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @vlc_restorecancel(i32 %184)
  br label %186

186:                                              ; preds = %183, %132, %119
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %188, %191
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %192, %195
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %196, %199
  store i64 %200, i64* %6, align 8
  %201 = call i32 (...) @vlc_cleanup_pop()
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 7
  %204 = call i32 @vlc_mutex_unlock(i32* %203)
  %205 = load i32, i32* @cmd_cleanup_routine, align 4
  %206 = call i32 @vlc_cleanup_push(i32 %205, %struct.TYPE_17__* %5)
  %207 = load i64, i64* %6, align 8
  %208 = call i32 @vlc_tick_wait(i64 %207)
  %209 = call i32 (...) @vlc_cleanup_pop()
  %210 = call i32 (...) @vlc_savecancel()
  store i32 %210, i32* %12, align 4
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  switch i32 %212, label %236 [
    i32 131, label %213
    i32 128, label %219
    i32 130, label %225
    i32 129, label %231
  ]

213:                                              ; preds = %186
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @CmdExecuteAdd(i32 %216, %struct.TYPE_17__* %5)
  %218 = call i32 @CmdCleanAdd(%struct.TYPE_17__* %5)
  br label %238

219:                                              ; preds = %186
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @CmdExecuteSend(i32 %222, %struct.TYPE_17__* %5)
  %224 = call i32 @CmdCleanSend(%struct.TYPE_17__* %5)
  br label %238

225:                                              ; preds = %186
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @CmdExecuteControl(i32 %228, %struct.TYPE_17__* %5)
  %230 = call i32 @CmdCleanControl(%struct.TYPE_17__* %5)
  br label %238

231:                                              ; preds = %186
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @CmdExecuteDel(i32 %234, %struct.TYPE_17__* %5)
  br label %238

236:                                              ; preds = %186
  %237 = call i32 (...) @vlc_assert_unreachable()
  br label %238

238:                                              ; preds = %236, %231, %225, %219, %213
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @vlc_restorecancel(i32 %239)
  br label %15
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @mutex_cleanup_push(i32*) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @es_out_GetBuffering(i32) #1

declare dso_local i32 @TsPopCmdLocked(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @msg_Warn(i32, i8*, i64) #1

declare dso_local i32 @es_out_SetRate(i32, i64, i64) #1

declare dso_local i32 @input_ControlPushHelper(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_cleanup_push(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @vlc_tick_wait(i64) #1

declare dso_local i32 @CmdExecuteAdd(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @CmdCleanAdd(%struct.TYPE_17__*) #1

declare dso_local i32 @CmdExecuteSend(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @CmdCleanSend(%struct.TYPE_17__*) #1

declare dso_local i32 @CmdExecuteControl(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @CmdCleanControl(%struct.TYPE_17__*) #1

declare dso_local i32 @CmdExecuteDel(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
