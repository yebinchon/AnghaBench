; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_get_temp_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_get_temp_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_temp_buffer.index = internal global i32 0, align 4
@get_temp_buffer.buff = internal global [10 x [256 x i8]] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_temp_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_temp_buffer() #0 {
  %1 = load i32, i32* @get_temp_buffer.index, align 4
  %2 = add nsw i32 %1, 1
  %3 = srem i32 %2, 10
  store i32 %3, i32* @get_temp_buffer.index, align 4
  %4 = load i32, i32* @get_temp_buffer.index, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [10 x [256 x i8]], [10 x [256 x i8]]* @get_temp_buffer.buff, i64 0, i64 %5
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %7, align 16
  %8 = load i32, i32* @get_temp_buffer.index, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x [256 x i8]], [10 x [256 x i8]]* @get_temp_buffer.buff, i64 0, i64 %9
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  ret i8* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
