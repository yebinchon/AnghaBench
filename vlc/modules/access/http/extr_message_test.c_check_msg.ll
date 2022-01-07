; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_check_msg.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_check_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type opaque

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_http_msg*, void (%struct.vlc_http_msg*)*)* @check_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_msg(%struct.vlc_http_msg* %0, void (%struct.vlc_http_msg*)* %1) #0 {
  %3 = alloca %struct.vlc_http_msg*, align 8
  %4 = alloca void (%struct.vlc_http_msg*)*, align 8
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %3, align 8
  store void (%struct.vlc_http_msg*)* %1, void (%struct.vlc_http_msg*)** %4, align 8
  %8 = load void (%struct.vlc_http_msg*)*, void (%struct.vlc_http_msg*)** %4, align 8
  %9 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  call void %8(%struct.vlc_http_msg* %9)
  %10 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %11 = call i8* @vlc_http_msg_format(%struct.vlc_http_msg* %10, i64* %7, i32 0)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call %struct.vlc_http_msg* @vlc_http_msg_headers(i8* %22)
  store %struct.vlc_http_msg* %23, %struct.vlc_http_msg** %5, align 8
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %30 = call i64 @vlc_http_msg_get_status(%struct.vlc_http_msg* %29)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %34 = icmp ne %struct.vlc_http_msg* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load void (%struct.vlc_http_msg*)*, void (%struct.vlc_http_msg*)** %4, align 8
  %38 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  call void %37(%struct.vlc_http_msg* %38)
  %39 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %40 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %39)
  br label %41

41:                                               ; preds = %32, %2
  %42 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %43 = call i64 @vlc_http_msg_h2_frame(%struct.vlc_http_msg* %42, i32 1, i32 1)
  %44 = inttoptr i64 %43 to %struct.vlc_http_msg*
  store %struct.vlc_http_msg* %44, %struct.vlc_http_msg** %5, align 8
  %45 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %46 = icmp ne %struct.vlc_http_msg* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load void (%struct.vlc_http_msg*)*, void (%struct.vlc_http_msg*)** %4, align 8
  %50 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  call void %49(%struct.vlc_http_msg* %50)
  %51 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %52 = call i32* @vlc_http_msg_read(%struct.vlc_http_msg* %51)
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %57 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %56)
  %58 = load void (%struct.vlc_http_msg*)*, void (%struct.vlc_http_msg*)** %4, align 8
  %59 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  call void %58(%struct.vlc_http_msg* %59)
  %60 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %61 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %60)
  ret void
}

declare dso_local i8* @vlc_http_msg_format(%struct.vlc_http_msg*, i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_msg_headers(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @vlc_http_msg_get_status(%struct.vlc_http_msg*) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

declare dso_local i64 @vlc_http_msg_h2_frame(%struct.vlc_http_msg*, i32, i32) #1

declare dso_local i32* @vlc_http_msg_read(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
