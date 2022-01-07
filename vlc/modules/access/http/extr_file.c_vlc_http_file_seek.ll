; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_file.c_vlc_http_file_seek.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_file.c_vlc_http_file_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_resource = type { %struct.vlc_http_msg* }
%struct.vlc_http_msg = type { i32 }
%struct.vlc_http_file = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_file_seek(%struct.vlc_http_resource* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_http_resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vlc_http_msg*, align 8
  %7 = alloca %struct.vlc_http_file*, align 8
  %8 = alloca i32, align 4
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %10 = call %struct.vlc_http_msg* @vlc_http_res_open(%struct.vlc_http_resource* %9, i64* %5)
  store %struct.vlc_http_msg* %10, %struct.vlc_http_msg** %6, align 8
  %11 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %12 = icmp eq %struct.vlc_http_msg* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %16 = bitcast %struct.vlc_http_resource* %15 to %struct.vlc_http_file*
  store %struct.vlc_http_file* %16, %struct.vlc_http_file** %7, align 8
  %17 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %18 = call i32 @vlc_http_msg_get_status(%struct.vlc_http_msg* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %20 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %19, i32 0, i32 0
  %21 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %20, align 8
  %22 = icmp ne %struct.vlc_http_msg* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %14
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 206
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 416
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 300
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29
  %36 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %37 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %36)
  store i32 -1, i32* %3, align 4
  br label %50

38:                                               ; preds = %32, %26, %23
  %39 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %40 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %39, i32 0, i32 0
  %41 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %40, align 8
  %42 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %41)
  br label %43

43:                                               ; preds = %38, %14
  %44 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %45 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %46 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %45, i32 0, i32 0
  store %struct.vlc_http_msg* %44, %struct.vlc_http_msg** %46, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.vlc_http_file*, %struct.vlc_http_file** %7, align 8
  %49 = getelementptr inbounds %struct.vlc_http_file, %struct.vlc_http_file* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %35, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.vlc_http_msg* @vlc_http_res_open(%struct.vlc_http_resource*, i64*) #1

declare dso_local i32 @vlc_http_msg_get_status(%struct.vlc_http_msg*) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
