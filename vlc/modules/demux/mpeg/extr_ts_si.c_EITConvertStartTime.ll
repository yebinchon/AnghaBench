; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_si.c_EITConvertStartTime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_si.c_EITConvertStartTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i32, i32, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @EITConvertStartTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EITConvertStartTime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = ashr i32 %6, 24
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 16
  %10 = call i8* @CVT_FROM_BCD(i32 %9)
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 6
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = ashr i32 %12, 8
  %14 = call i8* @CVT_FROM_BCD(i32 %13)
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @CVT_FROM_BCD(i32 %16)
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @UINT64_C(i32 -1)
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %37

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %28 = call i32 @EITDecodeMjd(i32 %24, i32* %25, i32* %26, i32* %27)
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1900
  store i32 %31, i32* %29, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = call i32 @timegm(%struct.tm* %5)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %23, %22
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i8* @CVT_FROM_BCD(i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @EITDecodeMjd(i32, i32*, i32*, i32*) #1

declare dso_local i32 @timegm(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
