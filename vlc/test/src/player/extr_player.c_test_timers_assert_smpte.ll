; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_timers_assert_smpte.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_timers_assert_smpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.report_timer* }
%struct.report_timer = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@REPORT_TIMER_TC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_state*, i32, i32, i32, i32)* @test_timers_assert_smpte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_timers_assert_smpte(%struct.timer_state* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.timer_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.report_timer*, align 8
  %14 = alloca %struct.report_timer*, align 8
  %15 = alloca %struct.TYPE_9__, align 4
  store %struct.timer_state* %0, %struct.timer_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @VLC_TICK_FROM_SEC(i32 60)
  %18 = icmp ult i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.timer_state*, %struct.timer_state** %6, align 8
  %22 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %21, i32 0, i32 0
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %11, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.report_timer*, %struct.report_timer** %24, align 8
  %26 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %25, i64 0
  %27 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %132, %5
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %135

39:                                               ; preds = %33
  %40 = load i64, i64* %12, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.report_timer*, %struct.report_timer** %44, align 8
  %46 = load i64, i64* %12, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %45, i64 %47
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %42
  %51 = phi %struct.report_timer* [ %48, %42 ], [ null, %49 ]
  store %struct.report_timer* %51, %struct.report_timer** %13, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.report_timer*, %struct.report_timer** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %54, i64 %55
  store %struct.report_timer* %56, %struct.report_timer** %14, align 8
  %57 = load %struct.report_timer*, %struct.report_timer** %14, align 8
  %58 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = udiv i64 %61, %63
  %65 = icmp eq i64 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.report_timer*, %struct.report_timer** %13, align 8
  %69 = icmp ne %struct.report_timer* %68, null
  br i1 %69, label %70, label %108

70:                                               ; preds = %50
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = urem i64 %71, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load %struct.report_timer*, %struct.report_timer** %13, align 8
  %78 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sub i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = icmp eq i64 %80, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.report_timer*, %struct.report_timer** %14, align 8
  %88 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  br label %107

94:                                               ; preds = %70
  %95 = load %struct.report_timer*, %struct.report_timer** %14, align 8
  %96 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.report_timer*, %struct.report_timer** %13, align 8
  %100 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  %104 = icmp eq i64 %98, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  br label %107

107:                                              ; preds = %94, %76
  br label %108

108:                                              ; preds = %107, %50
  %109 = load %struct.report_timer*, %struct.report_timer** %14, align 8
  %110 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @REPORT_TIMER_TC, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.report_timer*, %struct.report_timer** %14, align 8
  %117 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.report_timer*, %struct.report_timer** %14, align 8
  %125 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  br label %132

132:                                              ; preds = %108
  %133 = load i64, i64* %12, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %12, align 8
  br label %33

135:                                              ; preds = %33
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %137 = call i32 @VEC_LAST(%struct.TYPE_8__* %136)
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %7, align 4
  %146 = mul i32 %144, %145
  %147 = call i32 @VLC_TICK_FROM_SEC(i32 1)
  %148 = udiv i32 %146, %147
  %149 = icmp eq i32 %143, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @VEC_LAST(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
