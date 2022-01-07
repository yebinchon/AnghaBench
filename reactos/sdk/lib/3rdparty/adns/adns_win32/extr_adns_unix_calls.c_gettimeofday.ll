; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/adns_win32/extr_adns_unix_calls.c_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/adns_win32/extr_adns_unix_calls.c_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32 }

@gettimeofday.Adjustment = internal global i32 0, align 4
@__const.gettimeofday.st = private unnamed_addr constant %struct.TYPE_3__ { i32 1970, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0 }, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gettimeofday(%struct.timeval* %0, %struct.timezone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timezone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store %struct.timezone* %1, %struct.timezone** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @gettimeofday.Adjustment, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_3__* @__const.gettimeofday.st to i8*), i64 28, i1 false)
  %12 = call i32 @SystemTimeToFileTime(%struct.TYPE_3__* %7, i32 ptrtoint (i32* @gettimeofday.Adjustment to i32))
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.timezone*, %struct.timezone** %5, align 8
  %15 = icmp ne %struct.timezone* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %35

18:                                               ; preds = %13
  %19 = ptrtoint i32* %6 to i32
  %20 = call i32 @GetSystemTimeAsFileTime(i32 %19)
  %21 = load i32, i32* @gettimeofday.Adjustment, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 10000000
  %26 = sext i32 %25 to i64
  %27 = load %struct.timeval*, %struct.timeval** %4, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = srem i32 %29, 10000000
  %31 = sdiv i32 %30, 10
  %32 = sext i32 %31 to i64
  %33 = load %struct.timeval*, %struct.timeval** %4, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %18, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SystemTimeToFileTime(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @GetSystemTimeAsFileTime(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
