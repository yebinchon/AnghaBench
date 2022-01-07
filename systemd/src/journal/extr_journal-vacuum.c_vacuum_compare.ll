; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-vacuum.c_vacuum_compare.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-vacuum.c_vacuum_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacuum_info = type { i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vacuum_info*, %struct.vacuum_info*)* @vacuum_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacuum_compare(%struct.vacuum_info* %0, %struct.vacuum_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vacuum_info*, align 8
  %5 = alloca %struct.vacuum_info*, align 8
  %6 = alloca i32, align 4
  store %struct.vacuum_info* %0, %struct.vacuum_info** %4, align 8
  store %struct.vacuum_info* %1, %struct.vacuum_info** %5, align 8
  %7 = load %struct.vacuum_info*, %struct.vacuum_info** %4, align 8
  %8 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.vacuum_info*, %struct.vacuum_info** %5, align 8
  %13 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load %struct.vacuum_info*, %struct.vacuum_info** %4, align 8
  %18 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vacuum_info*, %struct.vacuum_info** %5, align 8
  %21 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @sd_id128_equal(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.vacuum_info*, %struct.vacuum_info** %4, align 8
  %27 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vacuum_info*, %struct.vacuum_info** %5, align 8
  %30 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CMP(i32 %28, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %16, %11, %2
  %34 = load %struct.vacuum_info*, %struct.vacuum_info** %4, align 8
  %35 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vacuum_info*, %struct.vacuum_info** %5, align 8
  %38 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @CMP(i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %69

45:                                               ; preds = %33
  %46 = load %struct.vacuum_info*, %struct.vacuum_info** %4, align 8
  %47 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.vacuum_info*, %struct.vacuum_info** %5, align 8
  %52 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.vacuum_info*, %struct.vacuum_info** %4, align 8
  %57 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %56, i32 0, i32 1
  %58 = load %struct.vacuum_info*, %struct.vacuum_info** %5, align 8
  %59 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %58, i32 0, i32 1
  %60 = call i32 @memcmp(i32* %57, i32* %59, i32 16)
  store i32 %60, i32* %3, align 4
  br label %69

61:                                               ; preds = %50, %45
  %62 = load %struct.vacuum_info*, %struct.vacuum_info** %4, align 8
  %63 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vacuum_info*, %struct.vacuum_info** %5, align 8
  %66 = getelementptr inbounds %struct.vacuum_info, %struct.vacuum_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @strcmp(i32 %64, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %61, %55, %43, %25
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @sd_id128_equal(i32, i32) #1

declare dso_local i32 @CMP(i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
