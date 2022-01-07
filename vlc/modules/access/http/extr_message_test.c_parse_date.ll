; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_parse_date.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_parse_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"www.example.com\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Last-Modified\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Retry-After\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @parse_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_date(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vlc_http_msg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = call %struct.vlc_http_msg* @vlc_http_req_create(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct.vlc_http_msg* %6, %struct.vlc_http_msg** %3, align 8
  %7 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %8 = icmp ne %struct.vlc_http_msg* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @vlc_http_msg_add_header(%struct.vlc_http_msg* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %18 = call i64 @vlc_http_msg_get_atime(%struct.vlc_http_msg* %17)
  store i64 %18, i64* %4, align 8
  %19 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @vlc_http_msg_add_header(%struct.vlc_http_msg* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %26 = call i64 @vlc_http_msg_get_mtime(%struct.vlc_http_msg* %25)
  store i64 %26, i64* %5, align 8
  %27 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %28 = call i64 @vlc_http_msg_get_retry_after(%struct.vlc_http_msg* %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @vlc_http_msg_add_header(%struct.vlc_http_msg* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %39 = call i64 @vlc_http_msg_get_retry_after(%struct.vlc_http_msg* %38)
  %40 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %41 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %40)
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local %struct.vlc_http_msg* @vlc_http_req_create(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_http_msg_add_header(%struct.vlc_http_msg*, i8*, i8*, i8*) #1

declare dso_local i64 @vlc_http_msg_get_atime(%struct.vlc_http_msg*) #1

declare dso_local i64 @vlc_http_msg_get_mtime(%struct.vlc_http_msg*) #1

declare dso_local i64 @vlc_http_msg_get_retry_after(%struct.vlc_http_msg*) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
