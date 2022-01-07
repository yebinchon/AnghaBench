; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_output_code.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_output_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzw_state = type { i16, i16, i32 (i32, i8*, i32)*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzw_state*, i16)* @lzw_output_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzw_output_code(%struct.lzw_state* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lzw_state*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store %struct.lzw_state* %0, %struct.lzw_state** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load i16, i16* %5, align 2
  %8 = sext i16 %7 to i32
  %9 = load %struct.lzw_state*, %struct.lzw_state** %4, align 8
  %10 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  %13 = shl i32 %8, %12
  %14 = load %struct.lzw_state*, %struct.lzw_state** %4, align 8
  %15 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 8
  %17 = sext i16 %16 to i32
  %18 = or i32 %17, %13
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %15, align 8
  %20 = load %struct.lzw_state*, %struct.lzw_state** %4, align 8
  %21 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.lzw_state*, %struct.lzw_state** %4, align 8
  %24 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %23, i32 0, i32 1
  %25 = load i16, i16* %24, align 2
  %26 = sext i16 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i16
  store i16 %28, i16* %24, align 2
  br label %29

29:                                               ; preds = %49, %2
  %30 = load %struct.lzw_state*, %struct.lzw_state** %4, align 8
  %31 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %30, i32 0, i32 1
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp sge i32 %33, 8
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = load %struct.lzw_state*, %struct.lzw_state** %4, align 8
  %37 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %36, i32 0, i32 0
  %38 = load i16, i16* %37, align 8
  %39 = trunc i16 %38 to i8
  store i8 %39, i8* %6, align 1
  %40 = load %struct.lzw_state*, %struct.lzw_state** %4, align 8
  %41 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %40, i32 0, i32 2
  %42 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %41, align 8
  %43 = load %struct.lzw_state*, %struct.lzw_state** %4, align 8
  %44 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %42(i32 %45, i8* %6, i32 1)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %63

49:                                               ; preds = %35
  %50 = load %struct.lzw_state*, %struct.lzw_state** %4, align 8
  %51 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %50, i32 0, i32 0
  %52 = load i16, i16* %51, align 8
  %53 = sext i16 %52 to i32
  %54 = ashr i32 %53, 8
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %51, align 8
  %56 = load %struct.lzw_state*, %struct.lzw_state** %4, align 8
  %57 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %56, i32 0, i32 1
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = sub nsw i32 %59, 8
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %57, align 2
  br label %29

62:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
