; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind.c_manager_unref.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind.c_manager_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"/run/nologin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*)* @manager_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @manager_unref(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %217

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %21, %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 31
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @hashmap_first(i32 %17)
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @session_free(i32* %22)
  br label %14

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %32, %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 29
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @hashmap_first(i32 %28)
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @user_free(i32* %33)
  br label %25

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %43, %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 33
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @hashmap_first(i32 %39)
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @device_free(i32* %44)
  br label %36

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %54, %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 32
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @hashmap_first(i32 %50)
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @seat_free(i32* %55)
  br label %47

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %65, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 28
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @hashmap_first(i32 %61)
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %8, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @inhibitor_free(i32* %66)
  br label %58

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %76, %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 27
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @hashmap_first(i32 %72)
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @button_free(i32* %77)
  br label %69

79:                                               ; preds = %69
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 33
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @hashmap_free(i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 32
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @hashmap_free(i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 31
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @hashmap_free(i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 30
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @hashmap_free(i32 %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 29
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @hashmap_free(i32 %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 28
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @hashmap_free(i32 %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 27
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @hashmap_free(i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 26
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @hashmap_free(i32 %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 25
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @hashmap_free(i32 %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 24
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @hashmap_free(i32 %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 23
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @sd_event_source_unref(i32 %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 22
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @sd_event_source_unref(i32 %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 21
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sd_event_source_unref(i32 %130)
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 20
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @sd_event_source_unref(i32 %134)
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 19
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @sd_event_source_unref(i32 %138)
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 18
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @sd_event_source_unref(i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 17
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @sd_event_source_unref(i32 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 15
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @safe_close(i32 %150)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 14
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @sd_device_monitor_unref(i32 %154)
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 13
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @sd_device_monitor_unref(i32 %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @sd_device_monitor_unref(i32 %162)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 11
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @sd_device_monitor_unref(i32 %166)
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 10
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %79
  %173 = call i32 @unlink_or_warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %79
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @bus_verify_polkit_async_registry_free(i32 %177)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @sd_bus_flush_close_unref(i32 %181)
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @sd_event_unref(i32 %185)
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @safe_close(i32 %189)
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @strv_free(i32 %193)
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @strv_free(i32 %197)
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @free(i32 %201)
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @free(i32 %205)
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @free(i32 %209)
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @free(i32 %213)
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %216 = call %struct.TYPE_6__* @mfree(%struct.TYPE_6__* %215)
  store %struct.TYPE_6__* %216, %struct.TYPE_6__** %2, align 8
  br label %217

217:                                              ; preds = %174, %12
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %218
}

declare dso_local i8* @hashmap_first(i32) #1

declare dso_local i32 @session_free(i32*) #1

declare dso_local i32 @user_free(i32*) #1

declare dso_local i32 @device_free(i32*) #1

declare dso_local i32 @seat_free(i32*) #1

declare dso_local i32 @inhibitor_free(i32*) #1

declare dso_local i32 @button_free(i32*) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @sd_device_monitor_unref(i32) #1

declare dso_local i32 @unlink_or_warn(i8*) #1

declare dso_local i32 @bus_verify_polkit_async_registry_free(i32) #1

declare dso_local i32 @sd_bus_flush_close_unref(i32) #1

declare dso_local i32 @sd_event_unref(i32) #1

declare dso_local i32 @strv_free(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct.TYPE_6__* @mfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
