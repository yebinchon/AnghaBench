; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_get_agent.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_get_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Server\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_http_msg_get_agent(%struct.vlc_http_msg* %0) #0 {
  %2 = alloca %struct.vlc_http_msg*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %2, align 8
  %5 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %6 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %10, i8** %3, align 8
  %11 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %11, i8* %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @vlc_http_is_agent(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  br label %23

22:                                               ; preds = %16, %1
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i8* [ %21, %20 ], [ null, %22 ]
  ret i8* %24
}

declare dso_local i8* @vlc_http_msg_get_header(%struct.vlc_http_msg*, i8*) #1

declare dso_local i64 @vlc_http_is_agent(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
