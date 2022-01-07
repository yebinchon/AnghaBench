; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_check_connect.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_check_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"www.example.com\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Custom-Key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_http_msg*)* @check_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_connect(%struct.vlc_http_msg* %0) #0 {
  %2 = alloca %struct.vlc_http_msg*, align 8
  %3 = alloca i8*, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %2, align 8
  %4 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %5 = call i64 @vlc_http_msg_get_status(%struct.vlc_http_msg* %4)
  %6 = icmp slt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %10 = call i8* @vlc_http_msg_get_method(%struct.vlc_http_msg* %9)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ false, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %23 = call i8* @vlc_http_msg_get_scheme(%struct.vlc_http_msg* %22)
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp eq i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %29 = call i8* @vlc_http_msg_get_authority(%struct.vlc_http_msg* %28)
  store i8* %29, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %18
  %38 = phi i1 [ false, %18 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %42 = call i8* @vlc_http_msg_get_path(%struct.vlc_http_msg* %41)
  store i8* %42, i8** %3, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = icmp eq i8* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %48 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %48, i8** %3, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = icmp eq i8* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_http_msg_get_status(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_method(%struct.vlc_http_msg*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @vlc_http_msg_get_scheme(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_authority(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_path(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_header(%struct.vlc_http_msg*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
