; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_textstream_check_iomode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_textstream_check_iomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.textstream = type { i64 }

@IORead = common dso_local global i32 0, align 4
@ForWriting = common dso_local global i64 0, align 8
@ForAppending = common dso_local global i64 0, align 8
@ForReading = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.textstream*, i32)* @textstream_check_iomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @textstream_check_iomode(%struct.textstream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.textstream*, align 8
  %5 = alloca i32, align 4
  store %struct.textstream* %0, %struct.textstream** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IORead, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.textstream*, %struct.textstream** %4, align 8
  %11 = getelementptr inbounds %struct.textstream, %struct.textstream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ForWriting, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.textstream*, %struct.textstream** %4, align 8
  %17 = getelementptr inbounds %struct.textstream, %struct.textstream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ForAppending, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i1 [ true, %9 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.textstream*, %struct.textstream** %4, align 8
  %26 = getelementptr inbounds %struct.textstream, %struct.textstream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ForReading, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
