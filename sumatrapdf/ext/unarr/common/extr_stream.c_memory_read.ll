; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_stream.c_memory_read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_stream.c_memory_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemoryStream = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @memory_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memory_read(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.MemoryStream*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.MemoryStream*
  store %struct.MemoryStream* %9, %struct.MemoryStream** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.MemoryStream*, %struct.MemoryStream** %7, align 8
  %12 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.MemoryStream*, %struct.MemoryStream** %7, align 8
  %15 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  %18 = icmp ugt i64 %10, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.MemoryStream*, %struct.MemoryStream** %7, align 8
  %21 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.MemoryStream*, %struct.MemoryStream** %7, align 8
  %24 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %19, %3
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.MemoryStream*, %struct.MemoryStream** %7, align 8
  %30 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.MemoryStream*, %struct.MemoryStream** %7, align 8
  %33 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @memcpy(i8* %28, i64 %35, i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.MemoryStream*, %struct.MemoryStream** %7, align 8
  %40 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load i64, i64* %6, align 8
  ret i64 %43
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
