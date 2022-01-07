; ModuleID = '/home/carl/AnghaBench/streem/src/extr_time.c_get_time.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_time.c_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_time = type { i64 }

@STRM_PTR_AUX = common dso_local global i32 0, align 4
@ns_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.strm_time* (i32)* @get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.strm_time* @get_time(i32 %0) #0 {
  %2 = alloca %struct.strm_time*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.strm_time*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @STRM_PTR_AUX, align 4
  %7 = call i64 @strm_value_ptr(i32 %5, i32 %6)
  %8 = inttoptr i64 %7 to %struct.strm_time*
  store %struct.strm_time* %8, %struct.strm_time** %4, align 8
  %9 = load %struct.strm_time*, %struct.strm_time** %4, align 8
  %10 = getelementptr inbounds %struct.strm_time, %struct.strm_time* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ns_time, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.strm_time* null, %struct.strm_time** %2, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load %struct.strm_time*, %struct.strm_time** %4, align 8
  store %struct.strm_time* %16, %struct.strm_time** %2, align 8
  br label %17

17:                                               ; preds = %15, %14
  %18 = load %struct.strm_time*, %struct.strm_time** %2, align 8
  ret %struct.strm_time* %18
}

declare dso_local i64 @strm_value_ptr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
