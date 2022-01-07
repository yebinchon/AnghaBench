; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_memory.c_Read.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_memory.c_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_stream_memory_private = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64)* @Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Read(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vlc_stream_memory_private*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.vlc_stream_memory_private* @vlc_stream_Private(i32* %8)
  store %struct.vlc_stream_memory_private* %9, %struct.vlc_stream_memory_private** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.vlc_stream_memory_private*, %struct.vlc_stream_memory_private** %7, align 8
  %12 = getelementptr inbounds %struct.vlc_stream_memory_private, %struct.vlc_stream_memory_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vlc_stream_memory_private*, %struct.vlc_stream_memory_private** %7, align 8
  %15 = getelementptr inbounds %struct.vlc_stream_memory_private, %struct.vlc_stream_memory_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  %18 = icmp ugt i64 %10, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.vlc_stream_memory_private*, %struct.vlc_stream_memory_private** %7, align 8
  %21 = getelementptr inbounds %struct.vlc_stream_memory_private, %struct.vlc_stream_memory_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vlc_stream_memory_private*, %struct.vlc_stream_memory_private** %7, align 8
  %24 = getelementptr inbounds %struct.vlc_stream_memory_private, %struct.vlc_stream_memory_private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %19, %3
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.vlc_stream_memory_private*, %struct.vlc_stream_memory_private** %7, align 8
  %33 = getelementptr inbounds %struct.vlc_stream_memory_private, %struct.vlc_stream_memory_private* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vlc_stream_memory_private*, %struct.vlc_stream_memory_private** %7, align 8
  %36 = getelementptr inbounds %struct.vlc_stream_memory_private, %struct.vlc_stream_memory_private* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @memcpy(i8* %31, i64 %38, i64 %39)
  br label %41

41:                                               ; preds = %30, %27
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.vlc_stream_memory_private*, %struct.vlc_stream_memory_private** %7, align 8
  %44 = getelementptr inbounds %struct.vlc_stream_memory_private, %struct.vlc_stream_memory_private* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %6, align 8
  ret i64 %47
}

declare dso_local %struct.vlc_stream_memory_private* @vlc_stream_Private(i32*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
