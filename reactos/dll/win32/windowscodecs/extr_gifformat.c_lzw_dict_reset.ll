; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_dict_reset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_dict_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzw_state = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64* }

@LZW_DICT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lzw_state*)* @lzw_dict_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzw_dict_reset(%struct.lzw_state* %0) #0 {
  %2 = alloca %struct.lzw_state*, align 8
  %3 = alloca i32, align 4
  store %struct.lzw_state* %0, %struct.lzw_state** %2, align 8
  %4 = load %struct.lzw_state*, %struct.lzw_state** %2, align 8
  %5 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, 1
  %8 = load %struct.lzw_state*, %struct.lzw_state** %2, align 8
  %9 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.lzw_state*, %struct.lzw_state** %2, align 8
  %11 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = add nsw i32 %13, 2
  %15 = load %struct.lzw_state*, %struct.lzw_state** %2, align 8
  %16 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %36, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @LZW_DICT_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.lzw_state*, %struct.lzw_state** %2, align 8
  %23 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 4096, i32* %28, align 4
  %29 = load %struct.lzw_state*, %struct.lzw_state** %2, align 8
  %30 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %17

39:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
