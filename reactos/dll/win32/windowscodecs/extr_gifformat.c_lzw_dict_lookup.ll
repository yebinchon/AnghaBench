; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_dict_lookup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_dict_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzw_state = type { i16, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.lzw_state*, i16, i8)* @lzw_dict_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @lzw_dict_lookup(%struct.lzw_state* %0, i16 signext %1, i8 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.lzw_state*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  store %struct.lzw_state* %0, %struct.lzw_state** %5, align 8
  store i16 %1, i16* %6, align 2
  store i8 %2, i8* %7, align 1
  store i16 0, i16* %8, align 2
  br label %9

9:                                                ; preds = %46, %3
  %10 = load i16, i16* %8, align 2
  %11 = sext i16 %10 to i32
  %12 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %13 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 8
  %15 = sext i16 %14 to i32
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %9
  %18 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %19 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i16*, i16** %20, align 8
  %22 = load i16, i16* %8, align 2
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = sext i16 %25 to i32
  %27 = load i16, i16* %6, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %17
  %31 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %32 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i16, i16* %8, align 2
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i16, i16* %8, align 2
  store i16 %44, i16* %4, align 2
  br label %50

45:                                               ; preds = %30, %17
  br label %46

46:                                               ; preds = %45
  %47 = load i16, i16* %8, align 2
  %48 = add i16 %47, 1
  store i16 %48, i16* %8, align 2
  br label %9

49:                                               ; preds = %9
  store i16 -1, i16* %4, align 2
  br label %50

50:                                               ; preds = %49, %43
  %51 = load i16, i16* %4, align 2
  ret i16 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
