; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_file.c_vlc_http_file_get_size.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_file.c_vlc_http_file_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vlc_http_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %3, align 8
  %6 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %7 = call i32 @vlc_http_res_get_status(%struct.vlc_http_resource* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %13 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vlc_http_msg_get_file_size(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 300
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 201
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  store i32 -1, i32* %2, align 4
  br label %32

27:                                               ; preds = %23
  %28 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %29 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vlc_http_msg_get_size(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %26, %18, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @vlc_http_res_get_status(%struct.vlc_http_resource*) #1

declare dso_local i32 @vlc_http_msg_get_file_size(i32) #1

declare dso_local i32 @vlc_http_msg_get_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
