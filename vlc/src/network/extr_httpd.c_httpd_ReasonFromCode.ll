; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_ReasonFromCode.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_ReasonFromCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_status_info = type { i32, [36 x i8] }

@httpd_ReasonFromCode.http_reason = internal constant [19 x %struct.http_status_info] [%struct.http_status_info { i32 200, [36 x i8] c"OK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 301, [36 x i8] c"Moved permanently\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 401, [36 x i8] c"Unauthorized\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 403, [36 x i8] c"Forbidden\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 404, [36 x i8] c"Not found\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 405, [36 x i8] c"Method not allowed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 454, [36 x i8] c"Session not found\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 455, [36 x i8] c"Method not valid in this State\00\00\00\00\00\00" }, %struct.http_status_info { i32 456, [36 x i8] c"Header field not valid for resource\00" }, %struct.http_status_info { i32 457, [36 x i8] c"Invalid range\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 459, [36 x i8] c"Aggregate operation not allowed\00\00\00\00\00" }, %struct.http_status_info { i32 460, [36 x i8] c"Non-aggregate operation not allowed\00" }, %struct.http_status_info { i32 461, [36 x i8] c"Unsupported transport\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 500, [36 x i8] c"Internal server error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 501, [36 x i8] c"Not implemented\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 503, [36 x i8] c"Service unavailable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 505, [36 x i8] c"Protocol version not supported\00\00\00\00\00\00" }, %struct.http_status_info { i32 551, [36 x i8] c"Option not supported\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.http_status_info { i32 999, [36 x i8] zeroinitializer }], align 16
@httpd_ReasonFromCode.psz_fallback_reason = internal constant [5 x [16 x i8]] [[16 x i8] c"Continue\00\00\00\00\00\00\00\00", [16 x i8] c"OK\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"Found\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"Client error\00\00\00\00", [16 x i8] c"Server error\00\00\00\00"], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @httpd_ReasonFromCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @httpd_ReasonFromCode(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.http_status_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp uge i32 %5, 100
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp ule i32 %8, 599
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i1 [ false, %1 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %12)
  store %struct.http_status_info* getelementptr inbounds ([19 x %struct.http_status_info], [19 x %struct.http_status_info]* @httpd_ReasonFromCode.http_reason, i64 0, i64 0), %struct.http_status_info** %4, align 8
  br label %14

14:                                               ; preds = %20, %10
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.http_status_info*, %struct.http_status_info** %4, align 8
  %17 = getelementptr inbounds %struct.http_status_info, %struct.http_status_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.http_status_info*, %struct.http_status_info** %4, align 8
  %22 = getelementptr inbounds %struct.http_status_info, %struct.http_status_info* %21, i32 1
  store %struct.http_status_info* %22, %struct.http_status_info** %4, align 8
  br label %14

23:                                               ; preds = %14
  %24 = load %struct.http_status_info*, %struct.http_status_info** %4, align 8
  %25 = getelementptr inbounds %struct.http_status_info, %struct.http_status_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.http_status_info*, %struct.http_status_info** %4, align 8
  %31 = getelementptr inbounds %struct.http_status_info, %struct.http_status_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds [36 x i8], [36 x i8]* %31, i64 0, i64 0
  store i8* %32, i8** %2, align 8
  br label %40

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = udiv i32 %34, 100
  %36 = sub i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [5 x [16 x i8]], [5 x [16 x i8]]* @httpd_ReasonFromCode.psz_fallback_reason, i64 0, i64 %37
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %38, i64 0, i64 0
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i32 @assert(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
