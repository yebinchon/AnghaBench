; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_get_status.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_resource = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_res_get_status(%struct.vlc_http_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vlc_http_resource*, align 8
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %3, align 8
  %4 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %5 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %10 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %34

14:                                               ; preds = %8
  %15 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %16 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %17 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %16, i64 1
  %18 = call i32* @vlc_http_res_open(%struct.vlc_http_resource* %15, %struct.vlc_http_resource* %17)
  %19 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %20 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %22 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %27 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  store i32 -1, i32* %2, align 4
  br label %34

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %31 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @vlc_http_msg_get_status(i32* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %25, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32* @vlc_http_res_open(%struct.vlc_http_resource*, %struct.vlc_http_resource*) #1

declare dso_local i32 @vlc_http_msg_get_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
