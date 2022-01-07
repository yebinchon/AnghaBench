; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwine/extr_debug.c_get_temp_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwine/extr_debug.c_get_temp_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_temp_buffer.list = internal global [32 x i8*] zeroinitializer, align 16
@get_temp_buffer.pos = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_temp_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_temp_buffer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call i32 @interlocked_xchg_add(i32* @get_temp_buffer.pos, i32 1)
  %6 = sext i32 %5 to i64
  %7 = urem i64 %6, 32
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [32 x i8*], [32 x i8*]* @get_temp_buffer.list, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* %2, align 8
  %14 = call i8* @realloc(i8* %12, i64 %13)
  store i8* %14, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32 x i8*], [32 x i8*]* @get_temp_buffer.list, i64 0, i64 %19
  store i8* %17, i8** %20, align 8
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local i32 @interlocked_xchg_add(i32*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
