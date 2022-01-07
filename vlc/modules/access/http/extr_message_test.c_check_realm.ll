; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_check_realm.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_check_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"WWW-Authenticate\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @check_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_realm(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call %struct.vlc_http_msg* @vlc_http_resp_create(i32 401)
  store %struct.vlc_http_msg* %7, %struct.vlc_http_msg** %5, align 8
  %8 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %9 = icmp ne %struct.vlc_http_msg* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @vlc_http_msg_add_header(%struct.vlc_http_msg* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %19 = call i8* @vlc_http_msg_get_basic_realm(%struct.vlc_http_msg* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %41

27:                                               ; preds = %2
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strcmp(i8* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %27, %22
  %42 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %43 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %42)
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local %struct.vlc_http_msg* @vlc_http_resp_create(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_http_msg_add_header(%struct.vlc_http_msg*, i8*, i8*, i8*) #1

declare dso_local i8* @vlc_http_msg_get_basic_realm(%struct.vlc_http_msg*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
