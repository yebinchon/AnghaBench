; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_add_time.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_add_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }
%struct.tm = type { i64, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s, %02d %s %04d %02d:%02d:%02d GMT\00", align 1
@vlc_http_days = common dso_local global i32* null, align 8
@vlc_http_months = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_msg_add_time(%struct.vlc_http_msg* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tm, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i32* @gmtime_r(i32* %9, %struct.tm* %8)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %38

13:                                               ; preds = %3
  %14 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32*, i32** @vlc_http_days, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** @vlc_http_months, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 1900, %29
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @vlc_http_msg_add_header(%struct.vlc_http_msg* %14, i8* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22, i32 %27, i64 %30, i32 %32, i32 %34, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %13, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32* @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @vlc_http_msg_add_header(%struct.vlc_http_msg*, i8*, i8*, i32, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
