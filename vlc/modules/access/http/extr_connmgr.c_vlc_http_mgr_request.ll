; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_http_mgr_request.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_http_mgr_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_mgr = type { i32 }
%struct.vlc_http_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_msg* @vlc_http_mgr_request(%struct.vlc_http_mgr* %0, i32 %1, i8* %2, i32 %3, %struct.vlc_http_msg* %4) #0 {
  %6 = alloca %struct.vlc_http_msg*, align 8
  %7 = alloca %struct.vlc_http_mgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vlc_http_msg*, align 8
  store %struct.vlc_http_mgr* %0, %struct.vlc_http_mgr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.vlc_http_msg* %4, %struct.vlc_http_msg** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @vlc_http_port_blocked(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %6, align 8
  br label %29

19:                                               ; preds = %14, %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, %struct.vlc_http_msg* (%struct.vlc_http_mgr*, i8*, i32, %struct.vlc_http_msg*)* @vlc_https_request, %struct.vlc_http_msg* (%struct.vlc_http_mgr*, i8*, i32, %struct.vlc_http_msg*)* @vlc_http_request
  %24 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %7, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %11, align 8
  %28 = call %struct.vlc_http_msg* %23(%struct.vlc_http_mgr* %24, i8* %25, i32 %26, %struct.vlc_http_msg* %27)
  store %struct.vlc_http_msg* %28, %struct.vlc_http_msg** %6, align 8
  br label %29

29:                                               ; preds = %19, %18
  %30 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  ret %struct.vlc_http_msg* %30
}

declare dso_local i64 @vlc_http_port_blocked(i32) #1

declare dso_local %struct.vlc_http_msg* @vlc_https_request(%struct.vlc_http_mgr*, i8*, i32, %struct.vlc_http_msg*) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_request(%struct.vlc_http_mgr*, i8*, i32, %struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
