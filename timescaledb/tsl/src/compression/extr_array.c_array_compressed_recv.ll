; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_array.c_array_compressed_recv.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_array.c_array_compressed_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid recv in array: bad bool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_compressed_recv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @pq_getmsgbyte(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %11, %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @binary_string_get_type(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32* @array_compressed_data_recv(i32 %20, i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @array_compressed_from_serialization_info(i32* %23, i32 %24)
  %26 = call i32 @PG_RETURN_POINTER(i32 %25)
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @pq_getmsgbyte(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @binary_string_get_type(i32) #1

declare dso_local i32* @array_compressed_data_recv(i32, i32) #1

declare dso_local i32 @PG_RETURN_POINTER(i32) #1

declare dso_local i32 @array_compressed_from_serialization_info(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
