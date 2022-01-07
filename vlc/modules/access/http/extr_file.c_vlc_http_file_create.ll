; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_file.c_vlc_http_file_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_file.c_vlc_http_file_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_resource = type { i32 }
%struct.vlc_http_mgr = type { i32 }
%struct.vlc_http_file = type { %struct.vlc_http_resource, i64 }

@vlc_http_file_callbacks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_resource* @vlc_http_file_create(%struct.vlc_http_mgr* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.vlc_http_resource*, align 8
  %6 = alloca %struct.vlc_http_mgr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vlc_http_file*, align 8
  store %struct.vlc_http_mgr* %0, %struct.vlc_http_mgr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call %struct.vlc_http_file* @malloc(i32 16)
  store %struct.vlc_http_file* %11, %struct.vlc_http_file** %10, align 8
  %12 = load %struct.vlc_http_file*, %struct.vlc_http_file** %10, align 8
  %13 = icmp eq %struct.vlc_http_file* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.vlc_http_resource* null, %struct.vlc_http_resource** %5, align 8
  br label %35

18:                                               ; preds = %4
  %19 = load %struct.vlc_http_file*, %struct.vlc_http_file** %10, align 8
  %20 = getelementptr inbounds %struct.vlc_http_file, %struct.vlc_http_file* %19, i32 0, i32 0
  %21 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i64 @vlc_http_res_init(%struct.vlc_http_resource* %20, i32* @vlc_http_file_callbacks, %struct.vlc_http_mgr* %21, i8* %22, i8* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.vlc_http_file*, %struct.vlc_http_file** %10, align 8
  %29 = call i32 @free(%struct.vlc_http_file* %28)
  store %struct.vlc_http_resource* null, %struct.vlc_http_resource** %5, align 8
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.vlc_http_file*, %struct.vlc_http_file** %10, align 8
  %32 = getelementptr inbounds %struct.vlc_http_file, %struct.vlc_http_file* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.vlc_http_file*, %struct.vlc_http_file** %10, align 8
  %34 = getelementptr inbounds %struct.vlc_http_file, %struct.vlc_http_file* %33, i32 0, i32 0
  store %struct.vlc_http_resource* %34, %struct.vlc_http_resource** %5, align 8
  br label %35

35:                                               ; preds = %30, %27, %17
  %36 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %5, align 8
  ret %struct.vlc_http_resource* %36
}

declare dso_local %struct.vlc_http_file* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlc_http_res_init(%struct.vlc_http_resource*, i32*, %struct.vlc_http_mgr*, i8*, i8*, i8*) #1

declare dso_local i32 @free(%struct.vlc_http_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
