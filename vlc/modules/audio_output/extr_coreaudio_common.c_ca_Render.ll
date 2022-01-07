; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_Render.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_Render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.aout_sys_common = type { i32, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_6__**, i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ca_Render(%struct.TYPE_7__* %0, i32 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.aout_sys_common*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.aout_sys_common*
  store %struct.aout_sys_common* %23, %struct.aout_sys_common** %11, align 8
  %24 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %25 = call i32 @lock_lock(%struct.aout_sys_common* %24)
  %26 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %27 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %5
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = call i32 @ca_ClearOutBuffers(%struct.TYPE_7__* %31)
  %33 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %34 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %36 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %35, i32 0, i32 9
  %37 = call i32 @vlc_sem_post(i32* %36)
  br label %38

38:                                               ; preds = %30, %5
  %39 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %40 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %45 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %38
  br label %207

52:                                               ; preds = %43
  %53 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %54 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp sgt i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %52
  %62 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %63 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @BytesToFrames(%struct.aout_sys_common* %63, i64 %64)
  %66 = call i64 @FramesToUs(%struct.aout_sys_common* %62, i32 %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @TickToHostTime(i64 %67)
  store i64 %68, i64* %13, align 8
  %69 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %70 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add nsw i64 %72, %73
  %75 = icmp sge i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %207

77:                                               ; preds = %61
  %78 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %79 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = sub nsw i64 %80, %81
  %83 = call i32 @HostTimeToTick(i64 %82)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %85 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @UsToFrames(%struct.aout_sys_common* %85, i32 %86)
  %88 = call i64 @FramesToBytes(%struct.aout_sys_common* %84, i32 %87)
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp ule i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32*, i32** %9, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @memset(i32* %94, i32 0, i64 %95)
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %10, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %10, align 8
  br label %100

100:                                              ; preds = %77, %52
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %103 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %102, i32 0, i32 7
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %106 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  store i64 0, i64* %16, align 8
  %107 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %108 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %107, i32 0, i32 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %17, align 8
  br label %110

110:                                              ; preds = %165, %100
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %112 = icmp ne %struct.TYPE_6__* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i64, i64* %10, align 8
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi i1 [ false, %110 ], [ %115, %113 ]
  br i1 %117, label %118, label %166

118:                                              ; preds = %116
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @__MIN(i64 %119, i64 %122)
  store i64 %123, i64* %18, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %18, align 8
  %131 = call i32 @memcpy(i32* %126, i64 %129, i64 %130)
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* %10, align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %16, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %16, align 8
  %138 = load i64, i64* %18, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %118
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %144, %struct.TYPE_6__** %19, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  store %struct.TYPE_6__* %147, %struct.TYPE_6__** %17, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %149 = call i32 @block_Release(%struct.TYPE_6__* %148)
  br label %165

150:                                              ; preds = %118
  %151 = load i64, i64* %10, align 8
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i64, i64* %18, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, %155
  store i64 %159, i64* %157, align 8
  %160 = load i64, i64* %18, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 %163, %160
  store i64 %164, i64* %162, align 8
  br label %165

165:                                              ; preds = %150, %143
  br label %110

166:                                              ; preds = %116
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %168 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %169 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %168, i32 0, i32 4
  store %struct.TYPE_6__* %167, %struct.TYPE_6__** %169, align 8
  %170 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %171 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %170, i32 0, i32 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = icmp ne %struct.TYPE_6__* %172, null
  br i1 %173, label %179, label %174

174:                                              ; preds = %166
  %175 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %176 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %175, i32 0, i32 4
  %177 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %178 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %177, i32 0, i32 5
  store %struct.TYPE_6__** %176, %struct.TYPE_6__*** %178, align 8
  br label %179

179:                                              ; preds = %174, %166
  %180 = load i64, i64* %16, align 8
  %181 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %182 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = sub i64 %183, %180
  store i64 %184, i64* %182, align 8
  %185 = load i64, i64* %10, align 8
  %186 = icmp ugt i64 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %179
  %188 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %189 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load i64, i64* %10, align 8
  %195 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %196 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, %194
  store i64 %198, i64* %196, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = load i64, i64* %16, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i64, i64* %10, align 8
  %203 = call i32 @memset(i32* %201, i32 0, i64 %202)
  br label %204

204:                                              ; preds = %187, %179
  %205 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %206 = call i32 @lock_unlock(%struct.aout_sys_common* %205)
  br label %213

207:                                              ; preds = %76, %51
  %208 = load i32*, i32** %9, align 8
  %209 = load i64, i64* %10, align 8
  %210 = call i32 @memset(i32* %208, i32 0, i64 %209)
  %211 = load %struct.aout_sys_common*, %struct.aout_sys_common** %11, align 8
  %212 = call i32 @lock_unlock(%struct.aout_sys_common* %211)
  br label %213

213:                                              ; preds = %207, %204
  ret void
}

declare dso_local i32 @lock_lock(%struct.aout_sys_common*) #1

declare dso_local i32 @ca_ClearOutBuffers(%struct.TYPE_7__*) #1

declare dso_local i32 @vlc_sem_post(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @FramesToUs(%struct.aout_sys_common*, i32) #1

declare dso_local i32 @BytesToFrames(%struct.aout_sys_common*, i64) #1

declare dso_local i64 @TickToHostTime(i64) #1

declare dso_local i32 @HostTimeToTick(i64) #1

declare dso_local i64 @FramesToBytes(%struct.aout_sys_common*, i32) #1

declare dso_local i32 @UsToFrames(%struct.aout_sys_common*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @__MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_6__*) #1

declare dso_local i32 @lock_unlock(%struct.aout_sys_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
