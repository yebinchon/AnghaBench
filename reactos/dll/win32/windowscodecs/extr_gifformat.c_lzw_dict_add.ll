; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_dict_add.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_dict_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzw_state = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16*, i8* }

@LZW_DICT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzw_state*, i16, i8)* @lzw_dict_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzw_dict_add(%struct.lzw_state* %0, i16 signext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lzw_state*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  store %struct.lzw_state* %0, %struct.lzw_state** %5, align 8
  store i16 %1, i16* %6, align 2
  store i8 %2, i8* %7, align 1
  %8 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %9 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LZW_DICT_SIZE, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %3
  %14 = load i16, i16* %6, align 2
  %15 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %16 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i16*, i16** %17, align 8
  %19 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %20 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i16, i16* %18, i64 %21
  store i16 %14, i16* %22, align 2
  %23 = load i8, i8* %7, align 1
  %24 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %25 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %29 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %23, i8* %31, align 1
  %32 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %33 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %36 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, 1
  %39 = and i64 %34, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %13
  %42 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %43 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %13
  %47 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %48 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %52 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
