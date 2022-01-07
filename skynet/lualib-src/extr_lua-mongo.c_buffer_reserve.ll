; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_buffer_reserve.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_buffer_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, i32)* @buffer_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_reserve(%struct.buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.buffer*, %struct.buffer** %3, align 8
  %6 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %7, %8
  %10 = load %struct.buffer*, %struct.buffer** %3, align 8
  %11 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %66

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %21, %15
  %17 = load %struct.buffer*, %struct.buffer** %3, align 8
  %18 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %16
  %22 = load %struct.buffer*, %struct.buffer** %3, align 8
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.buffer*, %struct.buffer** %3, align 8
  %26 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp sle i32 %24, %29
  br i1 %30, label %16, label %31

31:                                               ; preds = %21
  %32 = load %struct.buffer*, %struct.buffer** %3, align 8
  %33 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.buffer*, %struct.buffer** %3, align 8
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %31
  %40 = load %struct.buffer*, %struct.buffer** %3, align 8
  %41 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @skynet_malloc(i32 %42)
  %44 = load %struct.buffer*, %struct.buffer** %3, align 8
  %45 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.buffer*, %struct.buffer** %3, align 8
  %47 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.buffer*, %struct.buffer** %3, align 8
  %50 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.buffer*, %struct.buffer** %3, align 8
  %53 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i64 %48, i64 %51, i32 %54)
  br label %66

56:                                               ; preds = %31
  %57 = load %struct.buffer*, %struct.buffer** %3, align 8
  %58 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.buffer*, %struct.buffer** %3, align 8
  %61 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @skynet_realloc(i64 %59, i32 %62)
  %64 = load %struct.buffer*, %struct.buffer** %3, align 8
  %65 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %14, %56, %39
  ret void
}

declare dso_local i64 @skynet_malloc(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @skynet_realloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
