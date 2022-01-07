; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_live.c_vlc_http_live_req.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_live.c_vlc_http_live_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_resource = type { i32 }
%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Accept-Encoding\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gzip, deflate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_http_resource*, %struct.vlc_http_msg*, i8*)* @vlc_http_live_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_http_live_req(%struct.vlc_http_resource* %0, %struct.vlc_http_msg* %1, i8* %2) #0 {
  %4 = alloca %struct.vlc_http_resource*, align 8
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca i8*, align 8
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %4, align 8
  store %struct.vlc_http_msg* %1, %struct.vlc_http_msg** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %8 = call i32 @vlc_http_msg_add_header(%struct.vlc_http_msg* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %10 = load i8*, i8** %6, align 8
  ret i32 0
}

declare dso_local i32 @vlc_http_msg_add_header(%struct.vlc_http_msg*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
