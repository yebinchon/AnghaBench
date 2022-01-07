; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_add_agent.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_add_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_msg_add_agent(%struct.vlc_http_msg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_http_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %8 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @vlc_http_is_agent(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @vlc_http_msg_add_header(%struct.vlc_http_msg* %19, i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @vlc_http_is_agent(i8*) #1

declare dso_local i32 @vlc_http_msg_add_header(%struct.vlc_http_msg*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
