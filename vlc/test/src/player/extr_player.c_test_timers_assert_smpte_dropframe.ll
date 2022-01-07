; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_timers_assert_smpte_dropframe.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_timers_assert_smpte_dropframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.report_timer* }
%struct.report_timer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_state*, i32, i32)* @test_timers_assert_smpte_dropframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_timers_assert_smpte_dropframe(%struct.timer_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timer_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.report_timer*, align 8
  %12 = alloca %struct.report_timer*, align 8
  store %struct.timer_state* %0, %struct.timer_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 30
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 60
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i1 [ true, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ugt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.timer_state*, %struct.timer_state** %4, align 8
  %27 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %26, i32 0, i32 0
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 1, i64* %10, align 8
  br label %28

28:                                               ; preds = %195, %18
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %198

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.report_timer*, %struct.report_timer** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %37, i64 %39
  store %struct.report_timer* %40, %struct.report_timer** %11, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.report_timer*, %struct.report_timer** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %43, i64 %44
  store %struct.report_timer* %45, %struct.report_timer** %12, align 8
  %46 = load %struct.report_timer*, %struct.report_timer** %12, align 8
  %47 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.report_timer*, %struct.report_timer** %12, align 8
  %54 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.report_timer*, %struct.report_timer** %11, align 8
  %61 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub i32 %64, 1
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %162

67:                                               ; preds = %34
  %68 = load %struct.report_timer*, %struct.report_timer** %12, align 8
  %69 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 59
  br i1 %72, label %73, label %106

73:                                               ; preds = %67
  %74 = load %struct.report_timer*, %struct.report_timer** %11, align 8
  %75 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sub i32 %78, 1
  %80 = icmp eq i32 %77, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.report_timer*, %struct.report_timer** %11, align 8
  %84 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 58
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.report_timer*, %struct.report_timer** %12, align 8
  %91 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = sub i32 %94, 1
  %96 = icmp eq i32 %93, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.report_timer*, %struct.report_timer** %12, align 8
  %100 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  store i32 1, i32* %8, align 4
  br label %161

106:                                              ; preds = %67
  %107 = load %struct.report_timer*, %struct.report_timer** %12, align 8
  %108 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %160

112:                                              ; preds = %106
  %113 = load %struct.report_timer*, %struct.report_timer** %11, align 8
  %114 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = sub i32 %117, 1
  %119 = icmp eq i32 %116, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.report_timer*, %struct.report_timer** %11, align 8
  %123 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 59
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.report_timer*, %struct.report_timer** %12, align 8
  %130 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32, i32* %5, align 4
  %138 = urem i32 %137, 10
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %112
  %141 = load %struct.report_timer*, %struct.report_timer** %12, align 8
  %142 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  br label %159

148:                                              ; preds = %112
  %149 = load %struct.report_timer*, %struct.report_timer** %12, align 8
  %150 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %6, align 4
  %154 = udiv i32 %153, 30
  %155 = mul i32 %154, 2
  %156 = icmp eq i32 %152, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  br label %159

159:                                              ; preds = %148, %140
  store i32 1, i32* %9, align 4
  br label %160

160:                                              ; preds = %159, %106
  br label %161

161:                                              ; preds = %160, %73
  br label %194

162:                                              ; preds = %34
  %163 = load %struct.report_timer*, %struct.report_timer** %11, align 8
  %164 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %193

168:                                              ; preds = %162
  %169 = load %struct.report_timer*, %struct.report_timer** %11, align 8
  %170 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %168
  %175 = load %struct.report_timer*, %struct.report_timer** %11, align 8
  %176 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %174
  %181 = load %struct.report_timer*, %struct.report_timer** %12, align 8
  %182 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.report_timer*, %struct.report_timer** %11, align 8
  %186 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, 1
  %190 = icmp eq i32 %184, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  br label %193

193:                                              ; preds = %180, %174, %168, %162
  br label %194

194:                                              ; preds = %193, %161
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %10, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %10, align 8
  br label %28

198:                                              ; preds = %28
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi i1 [ false, %198 ], [ %203, %201 ]
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
