; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { %struct.TYPE_16__**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_UNIT_TYPE_MAX = common dso_local global i64 0, align 8
@unit_vtable = common dso_local global %struct.TYPE_17__** null, align 8
@MANAGER_EXIT = common dso_local global i32 0, align 4
@MANAGER_REBOOT = common dso_local global i32 0, align 4
@MANAGER_POWEROFF = common dso_local global i32 0, align 4
@MANAGER_HALT = common dso_local global i32 0, align 4
@MANAGER_KEXEC = common dso_local global i32 0, align 4
@_EXEC_DIRECTORY_TYPE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @manager_free(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = icmp ne %struct.TYPE_16__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %239

9:                                                ; preds = %1
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = call i32 @manager_clear_jobs_and_units(%struct.TYPE_16__* %10)
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %34, %9
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @_UNIT_TYPE_MAX, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @unit_vtable, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %17, i64 %18
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_16__*)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @unit_vtable, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %25, i64 %26
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = call i32 %30(%struct.TYPE_16__* %31)
  br label %33

33:                                               ; preds = %24, %16
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 38
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MANAGER_EXIT, align 4
  %43 = load i32, i32* @MANAGER_REBOOT, align 4
  %44 = load i32, i32* @MANAGER_POWEROFF, align 4
  %45 = load i32, i32* @MANAGER_HALT, align 4
  %46 = load i32, i32* @MANAGER_KEXEC, align 4
  %47 = call i32 @IN_SET(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = call i32 @manager_shutdown_cgroup(%struct.TYPE_16__* %38, i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 10
  %51 = call i32 @lookup_paths_flush_generator(i32* %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = call i32 @bus_done(%struct.TYPE_16__* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = call i32 @exec_runtime_vacuum(%struct.TYPE_16__* %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 37
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @hashmap_free(i32 %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = call i32 @dynamic_user_vacuum(%struct.TYPE_16__* %60, i32 0)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 36
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hashmap_free(i32 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 35
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @hashmap_free(i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 34
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @hashmap_free(i32 %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 33
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @hashmap_free(i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 32
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hashmap_free(i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 31
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @hashmap_free(i32 %84)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 30
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @prioq_free(i32 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 29
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @set_free(i32 %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 28
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @set_free(i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 27
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @sd_event_source_unref(i32 %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 26
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @sd_event_source_unref(i32 %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 25
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @sd_event_source_unref(i32 %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 24
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @sd_event_source_unref(i32 %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 23
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @sd_event_source_unref(i32 %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 22
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @sd_event_source_unref(i32 %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 21
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @sd_event_source_unref(i32 %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 20
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @sd_event_source_unref(i32 %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 19
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @sd_event_source_unref(i32 %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 18
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @sd_event_source_unref(i32 %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 17
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @safe_close(i32 %140)
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 16
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @safe_close(i32 %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 15
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @safe_close(i32 %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 14
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @safe_close(i32 %152)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 13
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @safe_close_pair(i32 %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %159 = call i32 @manager_close_ask_password(%struct.TYPE_16__* %158)
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = call i32 @manager_close_idle_pipe(%struct.TYPE_16__* %160)
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 12
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @sd_event_unref(i32 %164)
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @free(i32 %168)
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 10
  %172 = call i32 @lookup_paths_free(i32* %171)
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @strv_free(i32 %175)
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @strv_free(i32 %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @hashmap_free(i32 %183)
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %186 = call i32 @manager_free_unit_name_maps(%struct.TYPE_16__* %185)
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @free(i32 %189)
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @free(i32 %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @rlimit_free_all(i32 %197)
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @hashmap_isempty(i32 %201)
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @hashmap_free(i32 %206)
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @hashmap_free(i32 %210)
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @hashmap_free(i32 %214)
  store i64 0, i64* %4, align 8
  br label %216

216:                                              ; preds = %233, %37
  %217 = load i64, i64* %4, align 8
  %218 = load i64, i64* @_EXEC_DIRECTORY_TYPE_MAX, align 8
  %219 = icmp ult i64 %217, %218
  br i1 %219, label %220, label %236

220:                                              ; preds = %216
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %222, align 8
  %224 = load i64, i64* %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %223, i64 %224
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %225, align 8
  %227 = call %struct.TYPE_16__* @mfree(%struct.TYPE_16__* %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %229, align 8
  %231 = load i64, i64* %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %230, i64 %231
  store %struct.TYPE_16__* %227, %struct.TYPE_16__** %232, align 8
  br label %233

233:                                              ; preds = %220
  %234 = load i64, i64* %4, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %4, align 8
  br label %216

236:                                              ; preds = %216
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %238 = call %struct.TYPE_16__* @mfree(%struct.TYPE_16__* %237)
  store %struct.TYPE_16__* %238, %struct.TYPE_16__** %2, align 8
  br label %239

239:                                              ; preds = %236, %8
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %240
}

declare dso_local i32 @manager_clear_jobs_and_units(%struct.TYPE_16__*) #1

declare dso_local i32 @manager_shutdown_cgroup(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lookup_paths_flush_generator(i32*) #1

declare dso_local i32 @bus_done(%struct.TYPE_16__*) #1

declare dso_local i32 @exec_runtime_vacuum(%struct.TYPE_16__*) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i32 @dynamic_user_vacuum(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @prioq_free(i32) #1

declare dso_local i32 @set_free(i32) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @safe_close_pair(i32) #1

declare dso_local i32 @manager_close_ask_password(%struct.TYPE_16__*) #1

declare dso_local i32 @manager_close_idle_pipe(%struct.TYPE_16__*) #1

declare dso_local i32 @sd_event_unref(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @lookup_paths_free(i32*) #1

declare dso_local i32 @strv_free(i32) #1

declare dso_local i32 @manager_free_unit_name_maps(%struct.TYPE_16__*) #1

declare dso_local i32 @rlimit_free_all(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hashmap_isempty(i32) #1

declare dso_local %struct.TYPE_16__* @mfree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
