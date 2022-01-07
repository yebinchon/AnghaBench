; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_state_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzw_state = type { i16, i32, i32, i8*, i8*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lzw_state*, i16, i8*, i8*)* @lzw_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzw_state_init(%struct.lzw_state* %0, i16 signext %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.lzw_state*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.lzw_state* %0, %struct.lzw_state** %5, align 8
  store i16 %1, i16* %6, align 2
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i16, i16* %6, align 2
  %10 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %11 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %10, i32 0, i32 0
  store i16 %9, i16* %11, align 8
  %12 = load i16, i16* %6, align 2
  %13 = sext i16 %12 to i32
  %14 = shl i32 1, %13
  %15 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %16 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %18 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %22 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %24 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %26 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %29 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %32 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.lzw_state*, %struct.lzw_state** %5, align 8
  %34 = call i32 @lzw_dict_reset(%struct.lzw_state* %33)
  ret void
}

declare dso_local i32 @lzw_dict_reset(%struct.lzw_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
