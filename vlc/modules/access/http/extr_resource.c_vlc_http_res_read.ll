; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_t = type { i32 }
%struct.vlc_http_resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_t* @vlc_http_res_read(%struct.vlc_http_resource* %0) #0 {
  %2 = alloca %struct.block_t*, align 8
  %3 = alloca %struct.vlc_http_resource*, align 8
  %4 = alloca i32, align 4
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %3, align 8
  %5 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %6 = call i32 @vlc_http_res_get_status(%struct.vlc_http_resource* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 200
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 300
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %1
  store %struct.block_t* null, %struct.block_t** %2, align 8
  br label %18

13:                                               ; preds = %9
  %14 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %15 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.block_t* @vlc_http_msg_read(i32 %16)
  store %struct.block_t* %17, %struct.block_t** %2, align 8
  br label %18

18:                                               ; preds = %13, %12
  %19 = load %struct.block_t*, %struct.block_t** %2, align 8
  ret %struct.block_t* %19
}

declare dso_local i32 @vlc_http_res_get_status(%struct.vlc_http_resource*) #1

declare dso_local %struct.block_t* @vlc_http_msg_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
