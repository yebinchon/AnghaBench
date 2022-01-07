; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_http_mgr_reuse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_http_mgr_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_mgr = type { i32 }
%struct.vlc_http_msg = type { i32 }
%struct.vlc_http_conn = type { i32 }
%struct.vlc_http_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_http_msg* (%struct.vlc_http_mgr*, i8*, i32, %struct.vlc_http_msg*)* @vlc_http_mgr_reuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_http_msg* @vlc_http_mgr_reuse(%struct.vlc_http_mgr* %0, i8* %1, i32 %2, %struct.vlc_http_msg* %3) #0 {
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca %struct.vlc_http_mgr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vlc_http_msg*, align 8
  %10 = alloca %struct.vlc_http_conn*, align 8
  %11 = alloca %struct.vlc_http_stream*, align 8
  %12 = alloca %struct.vlc_http_msg*, align 8
  store %struct.vlc_http_mgr* %0, %struct.vlc_http_mgr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vlc_http_msg* %3, %struct.vlc_http_msg** %9, align 8
  %13 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.vlc_http_conn* @vlc_http_mgr_find(%struct.vlc_http_mgr* %13, i8* %14, i32 %15)
  store %struct.vlc_http_conn* %16, %struct.vlc_http_conn** %10, align 8
  %17 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %10, align 8
  %18 = icmp eq %struct.vlc_http_conn* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %5, align 8
  br label %38

20:                                               ; preds = %4
  %21 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %10, align 8
  %22 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %9, align 8
  %23 = call %struct.vlc_http_stream* @vlc_http_stream_open(%struct.vlc_http_conn* %21, %struct.vlc_http_msg* %22)
  store %struct.vlc_http_stream* %23, %struct.vlc_http_stream** %11, align 8
  %24 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %11, align 8
  %25 = icmp ne %struct.vlc_http_stream* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %11, align 8
  %28 = call %struct.vlc_http_msg* @vlc_http_msg_get_initial(%struct.vlc_http_stream* %27)
  store %struct.vlc_http_msg* %28, %struct.vlc_http_msg** %12, align 8
  %29 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %12, align 8
  %30 = icmp ne %struct.vlc_http_msg* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %12, align 8
  store %struct.vlc_http_msg* %32, %struct.vlc_http_msg** %5, align 8
  br label %38

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %36 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %10, align 8
  %37 = call i32 @vlc_http_mgr_release(%struct.vlc_http_mgr* %35, %struct.vlc_http_conn* %36)
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %5, align 8
  br label %38

38:                                               ; preds = %34, %31, %19
  %39 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  ret %struct.vlc_http_msg* %39
}

declare dso_local %struct.vlc_http_conn* @vlc_http_mgr_find(%struct.vlc_http_mgr*, i8*, i32) #1

declare dso_local %struct.vlc_http_stream* @vlc_http_stream_open(%struct.vlc_http_conn*, %struct.vlc_http_msg*) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_msg_get_initial(%struct.vlc_http_stream*) #1

declare dso_local i32 @vlc_http_mgr_release(%struct.vlc_http_mgr*, %struct.vlc_http_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
