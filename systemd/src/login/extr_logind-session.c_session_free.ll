; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-session.c_session_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-session.c_session_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i32, i64, %struct.TYPE_13__*, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }

@gc_queue = common dso_local global i32 0, align 4
@sessions_by_user = common dso_local global i32 0, align 4
@sessions_by_seat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @session_free(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %6 = icmp ne %struct.TYPE_14__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %217

8:                                                ; preds = %1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 20
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load i32, i32* @gc_queue, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = call i32 @LIST_REMOVE(i32 %14, i32 %19, %struct.TYPE_14__* %20)
  br label %22

22:                                               ; preds = %13, %8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 19
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sd_event_source_unref(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 19
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = call i32 @session_drop_controller(%struct.TYPE_14__* %29)
  br label %31

31:                                               ; preds = %37, %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 18
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @hashmap_first(i32 %34)
  store i32* %35, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @session_device_free(i32* %38)
  br label %31

40:                                               ; preds = %31
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 18
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hashmap_free(i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 17
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = icmp ne %struct.TYPE_15__* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %40
  %50 = load i32, i32* @sessions_by_user, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 17
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = call i32 @LIST_REMOVE(i32 %50, i32 %55, %struct.TYPE_14__* %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 17
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = icmp eq %struct.TYPE_14__* %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 17
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %69, align 8
  br label %70

70:                                               ; preds = %65, %49
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 17
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = call i32 @user_update_last_session_timer(%struct.TYPE_15__* %73)
  br label %75

75:                                               ; preds = %70, %40
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 16
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = icmp ne %struct.TYPE_16__* %78, null
  br i1 %79, label %80, label %120

80:                                               ; preds = %75
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 16
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = icmp eq %struct.TYPE_14__* %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 16
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %92, align 8
  br label %93

93:                                               ; preds = %88, %80
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 16
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = icmp eq %struct.TYPE_14__* %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 16
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %105, align 8
  br label %106

106:                                              ; preds = %101, %93
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 16
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = call i32 @seat_evict_position(%struct.TYPE_16__* %109, %struct.TYPE_14__* %110)
  %112 = load i32, i32* @sessions_by_seat, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 16
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %119 = call i32 @LIST_REMOVE(i32 %112, i32 %117, %struct.TYPE_14__* %118)
  br label %120

120:                                              ; preds = %106, %75
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 15
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 5
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 15
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @hashmap_remove(i32 %130, i64 %133)
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 15
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @free(i64 %137)
  br label %139

139:                                              ; preds = %125, %120
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 14
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @pid_is_valid(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %139
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 14
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @PID_TO_PTR(i32 %153)
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %156 = call i32 @hashmap_remove_value(i32 %150, i32 %154, %struct.TYPE_14__* %155)
  br label %157

157:                                              ; preds = %145, %139
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 13
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @free(i64 %160)
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 12
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @sd_bus_message_unref(i32 %164)
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 11
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @free(i64 %168)
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 10
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @free(i64 %172)
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 9
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @free(i64 %176)
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 8
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @free(i64 %180)
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 7
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @free(i64 %184)
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @free(i64 %188)
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @hashmap_remove(i32 %194, i64 %197)
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @sd_event_source_unref(i32 %201)
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @safe_close(i32 %205)
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @free(i64 %209)
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @free(i64 %213)
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %216 = call %struct.TYPE_14__* @mfree(%struct.TYPE_14__* %215)
  store %struct.TYPE_14__* %216, %struct.TYPE_14__** %2, align 8
  br label %217

217:                                              ; preds = %157, %7
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %218
}

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @session_drop_controller(%struct.TYPE_14__*) #1

declare dso_local i32* @hashmap_first(i32) #1

declare dso_local i32 @session_device_free(i32*) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i32 @user_update_last_session_timer(%struct.TYPE_15__*) #1

declare dso_local i32 @seat_evict_position(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @hashmap_remove(i32, i64) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @pid_is_valid(i32) #1

declare dso_local i32 @hashmap_remove_value(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @PID_TO_PTR(i32) #1

declare dso_local i32 @sd_bus_message_unref(i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local %struct.TYPE_14__* @mfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
