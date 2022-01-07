; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_calendarspec.c_find_end_of_month.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_calendarspec.c_find_end_of_month.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i32, i32)* @find_end_of_month to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_end_of_month(%struct.tm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm, align 8
  store %struct.tm* %0, %struct.tm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tm*, %struct.tm** %5, align 8
  %10 = bitcast %struct.tm* %8 to i8*
  %11 = bitcast %struct.tm* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 1, %15
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @mktime_or_timegm(%struct.tm* %8, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tm*, %struct.tm** %5, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %3
  store i32 -1, i32* %4, align 4
  br label %32

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @mktime_or_timegm(%struct.tm*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
