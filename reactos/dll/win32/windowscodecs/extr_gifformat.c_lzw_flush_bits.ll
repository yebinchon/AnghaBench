; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_flush_bits.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_lzw_flush_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzw_state = type { i32, i32, i32 (i32, i8*, i32)*, i32 }

@lzw_flush_bits.mask = internal constant [8 x i8] c"\00\01\03\07\0F\1F?\7F", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzw_state*)* @lzw_flush_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzw_flush_bits(%struct.lzw_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lzw_state*, align 8
  %4 = alloca i8, align 1
  store %struct.lzw_state* %0, %struct.lzw_state** %3, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %7 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %8, 8
  br i1 %9, label %10, label %33

10:                                               ; preds = %5
  %11 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %12 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %4, align 1
  %15 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %16 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %15, i32 0, i32 2
  %17 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %16, align 8
  %18 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %19 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %17(i32 %20, i8* %4, i32 1)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %68

24:                                               ; preds = %10
  %25 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %26 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  store i32 %28, i32* %26, align 4
  %29 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %30 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 8
  store i32 %32, i32* %30, align 8
  br label %5

33:                                               ; preds = %5
  %34 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %35 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %40 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = trunc i32 %41 to i8
  %43 = zext i8 %42 to i32
  %44 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %45 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* @lzw_flush_bits.mask, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = and i32 %43, %50
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %4, align 1
  %53 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %54 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %53, i32 0, i32 2
  %55 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %54, align 8
  %56 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %57 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %55(i32 %58, i8* %4, i32 1)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %68

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %65 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.lzw_state*, %struct.lzw_state** %3, align 8
  %67 = getelementptr inbounds %struct.lzw_state, %struct.lzw_state* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %61, %23
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
