; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_live.c_vlc_http_live_read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_live.c_vlc_http_live_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_t = type { i32 }
%struct.vlc_http_resource = type { i32* }

@vlc_http_error = common dso_local global %struct.block_t* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_t* @vlc_http_live_read(%struct.vlc_http_resource* %0) #0 {
  %2 = alloca %struct.block_t*, align 8
  %3 = alloca %struct.vlc_http_resource*, align 8
  %4 = alloca %struct.block_t*, align 8
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %3, align 8
  %5 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %6 = call %struct.block_t* @vlc_http_res_read(%struct.vlc_http_resource* %5)
  store %struct.block_t* %6, %struct.block_t** %4, align 8
  %7 = load %struct.block_t*, %struct.block_t** %4, align 8
  %8 = icmp ne %struct.block_t* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.block_t*, %struct.block_t** %4, align 8
  %11 = load %struct.block_t*, %struct.block_t** @vlc_http_error, align 8
  %12 = icmp ne %struct.block_t* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load %struct.block_t*, %struct.block_t** %4, align 8
  store %struct.block_t* %14, %struct.block_t** %2, align 8
  br label %24

15:                                               ; preds = %9, %1
  %16 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %17 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @vlc_http_msg_destroy(i32* %18)
  %20 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %21 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %23 = call %struct.block_t* @vlc_http_res_read(%struct.vlc_http_resource* %22)
  store %struct.block_t* %23, %struct.block_t** %2, align 8
  br label %24

24:                                               ; preds = %15, %13
  %25 = load %struct.block_t*, %struct.block_t** %2, align 8
  ret %struct.block_t* %25
}

declare dso_local %struct.block_t* @vlc_http_res_read(%struct.vlc_http_resource*) #1

declare dso_local i32 @vlc_http_msg_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
