; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_file.c_vlc_http_msg_can_seek.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_file.c_vlc_http_msg_can_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Accept-Ranges\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_http_msg*)* @vlc_http_msg_can_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_http_msg_can_seek(%struct.vlc_http_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vlc_http_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %3, align 8
  %5 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %6 = call i32 @vlc_http_msg_get_status(%struct.vlc_http_msg* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 206
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 416
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %1
  store i32 1, i32* %2, align 4
  br label %18

13:                                               ; preds = %9
  %14 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %15 = call i32* @vlc_http_msg_get_token(%struct.vlc_http_msg* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @vlc_http_msg_get_status(%struct.vlc_http_msg*) #1

declare dso_local i32* @vlc_http_msg_get_token(%struct.vlc_http_msg*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
