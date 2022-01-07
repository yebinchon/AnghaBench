; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_write_string.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_write_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, i8*, i64)* @write_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_string(%struct.buffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.buffer*, %struct.buffer** %4, align 8
  %8 = load i64, i64* %6, align 8
  %9 = add i64 %8, 1
  %10 = call i32 @buffer_reserve(%struct.buffer* %7, i64 %9)
  %11 = load %struct.buffer*, %struct.buffer** %4, align 8
  %12 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.buffer*, %struct.buffer** %4, align 8
  %15 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @memcpy(i8* %18, i8* %19, i64 %20)
  %22 = load %struct.buffer*, %struct.buffer** %4, align 8
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.buffer*, %struct.buffer** %4, align 8
  %26 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %28, %29
  %31 = getelementptr inbounds i8, i8* %24, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  %34 = load %struct.buffer*, %struct.buffer** %4, align 8
  %35 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 8
  ret void
}

declare dso_local i32 @buffer_reserve(%struct.buffer*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
