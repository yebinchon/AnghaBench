; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_conv.c_ar_conv_dosdate_to_filetime.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_conv.c_ar_conv_dosdate_to_filetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar_conv_dosdate_to_filetime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 31
  %8 = mul nsw i32 %7, 2
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 5
  %12 = and i32 %11, 63
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 11
  %16 = and i32 %15, 31
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %2, align 4
  %19 = ashr i32 %18, 16
  %20 = and i32 %19, 31
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %2, align 4
  %23 = ashr i32 %22, 21
  %24 = and i32 %23, 15
  %25 = sub nsw i32 %24, 1
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %2, align 4
  %28 = ashr i32 %27, 25
  %29 = and i32 %28, 127
  %30 = add nsw i32 %29, 80
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 6
  store i32 -1, i32* %32, align 4
  %33 = call i32 @mktime(%struct.tm* %3)
  store i32 %33, i32* %4, align 4
  %34 = call %struct.tm* @gmtime(i32* %4)
  %35 = call i32 @mktime(%struct.tm* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 2, %36
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, 11644473600
  %42 = trunc i64 %41 to i32
  %43 = mul nsw i32 %42, 10000000
  ret i32 %43
}

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
