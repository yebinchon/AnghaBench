; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_push_data.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_push_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i64, i64, i64, %struct.netpack* }
%struct.netpack = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32, i32)* @push_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_data(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.queue*, align 8
  %13 = alloca %struct.netpack*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = call i8* @skynet_malloc(i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @memcpy(i8* %19, i8* %20, i32 %21)
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %16, %5
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.queue* @get_queue(i32* %25)
  store %struct.queue* %26, %struct.queue** %12, align 8
  %27 = load %struct.queue*, %struct.queue** %12, align 8
  %28 = getelementptr inbounds %struct.queue, %struct.queue* %27, i32 0, i32 3
  %29 = load %struct.netpack*, %struct.netpack** %28, align 8
  %30 = load %struct.queue*, %struct.queue** %12, align 8
  %31 = getelementptr inbounds %struct.queue, %struct.queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.netpack, %struct.netpack* %29, i64 %32
  store %struct.netpack* %33, %struct.netpack** %13, align 8
  %34 = load %struct.queue*, %struct.queue** %12, align 8
  %35 = getelementptr inbounds %struct.queue, %struct.queue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.queue*, %struct.queue** %12, align 8
  %39 = getelementptr inbounds %struct.queue, %struct.queue* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %24
  %43 = load %struct.queue*, %struct.queue** %12, align 8
  %44 = getelementptr inbounds %struct.queue, %struct.queue* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.queue*, %struct.queue** %12, align 8
  %47 = getelementptr inbounds %struct.queue, %struct.queue* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %42, %24
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.netpack*, %struct.netpack** %13, align 8
  %53 = getelementptr inbounds %struct.netpack, %struct.netpack* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.netpack*, %struct.netpack** %13, align 8
  %56 = getelementptr inbounds %struct.netpack, %struct.netpack* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.netpack*, %struct.netpack** %13, align 8
  %59 = getelementptr inbounds %struct.netpack, %struct.netpack* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.queue*, %struct.queue** %12, align 8
  %61 = getelementptr inbounds %struct.queue, %struct.queue* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.queue*, %struct.queue** %12, align 8
  %64 = getelementptr inbounds %struct.queue, %struct.queue* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %50
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.queue*, %struct.queue** %12, align 8
  %70 = call i32 @expand_queue(i32* %68, %struct.queue* %69)
  br label %71

71:                                               ; preds = %67, %50
  ret void
}

declare dso_local i8* @skynet_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.queue* @get_queue(i32*) #1

declare dso_local i32 @expand_queue(i32*, %struct.queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
