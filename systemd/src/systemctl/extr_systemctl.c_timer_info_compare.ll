; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_timer_info_compare.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_timer_info_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_info = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timer_info*, %struct.timer_info*)* @timer_info_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_info_compare(%struct.timer_info* %0, %struct.timer_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timer_info*, align 8
  %5 = alloca %struct.timer_info*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_info* %0, %struct.timer_info** %4, align 8
  store %struct.timer_info* %1, %struct.timer_info** %5, align 8
  %7 = load %struct.timer_info*, %struct.timer_info** %4, align 8
  %8 = call i32 @assert(%struct.timer_info* %7)
  %9 = load %struct.timer_info*, %struct.timer_info** %5, align 8
  %10 = call i32 @assert(%struct.timer_info* %9)
  %11 = load %struct.timer_info*, %struct.timer_info** %4, align 8
  %12 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.timer_info*, %struct.timer_info** %5, align 8
  %17 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %75

21:                                               ; preds = %15, %2
  %22 = load %struct.timer_info*, %struct.timer_info** %4, align 8
  %23 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.timer_info*, %struct.timer_info** %5, align 8
  %28 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %75

32:                                               ; preds = %26, %21
  %33 = load %struct.timer_info*, %struct.timer_info** %4, align 8
  %34 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.timer_info*, %struct.timer_info** %5, align 8
  %39 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.timer_info*, %struct.timer_info** %4, align 8
  %44 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.timer_info*, %struct.timer_info** %5, align 8
  %47 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @strcasecmp(i64 %45, i64 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %75

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %37, %32
  %56 = load %struct.timer_info*, %struct.timer_info** %4, align 8
  %57 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.timer_info*, %struct.timer_info** %5, align 8
  %60 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CMP(i32 %58, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %55
  %68 = load %struct.timer_info*, %struct.timer_info** %4, align 8
  %69 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.timer_info*, %struct.timer_info** %5, align 8
  %72 = getelementptr inbounds %struct.timer_info, %struct.timer_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @strcmp(i32 %70, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %65, %52, %31, %20
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @assert(%struct.timer_info*) #1

declare dso_local i32 @strcasecmp(i64, i64) #1

declare dso_local i32 @CMP(i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
