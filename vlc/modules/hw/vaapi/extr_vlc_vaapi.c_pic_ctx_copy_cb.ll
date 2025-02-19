; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_pic_ctx_copy_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_pic_ctx_copy_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picture_context_t = type { {}*, i32 }
%struct.vaapi_pic_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.picture_context_t, i32, i32 }

@pic_ctx_destroy_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.picture_context_t* (%struct.picture_context_t*)* @pic_ctx_copy_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.picture_context_t* @pic_ctx_copy_cb(%struct.picture_context_t* %0) #0 {
  %2 = alloca %struct.picture_context_t*, align 8
  %3 = alloca %struct.picture_context_t*, align 8
  %4 = alloca %struct.vaapi_pic_ctx*, align 8
  %5 = alloca %struct.vaapi_pic_ctx*, align 8
  store %struct.picture_context_t* %0, %struct.picture_context_t** %3, align 8
  %6 = load %struct.picture_context_t*, %struct.picture_context_t** %3, align 8
  %7 = bitcast %struct.picture_context_t* %6 to %struct.vaapi_pic_ctx*
  store %struct.vaapi_pic_ctx* %7, %struct.vaapi_pic_ctx** %4, align 8
  %8 = call %struct.vaapi_pic_ctx* @malloc(i32 32)
  store %struct.vaapi_pic_ctx* %8, %struct.vaapi_pic_ctx** %5, align 8
  %9 = load %struct.vaapi_pic_ctx*, %struct.vaapi_pic_ctx** %5, align 8
  %10 = icmp eq %struct.vaapi_pic_ctx* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.picture_context_t* null, %struct.picture_context_t** %2, align 8
  br label %46

12:                                               ; preds = %1
  %13 = load i32, i32* @pic_ctx_destroy_cb, align 4
  %14 = load %struct.vaapi_pic_ctx*, %struct.vaapi_pic_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.vaapi_pic_ctx, %struct.vaapi_pic_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.picture_context_t, %struct.picture_context_t* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 8
  %18 = load %struct.vaapi_pic_ctx*, %struct.vaapi_pic_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.vaapi_pic_ctx, %struct.vaapi_pic_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.picture_context_t, %struct.picture_context_t* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to %struct.picture_context_t* (%struct.picture_context_t*)**
  store %struct.picture_context_t* (%struct.picture_context_t*)* @pic_ctx_copy_cb, %struct.picture_context_t* (%struct.picture_context_t*)** %22, align 8
  %23 = load %struct.vaapi_pic_ctx*, %struct.vaapi_pic_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.vaapi_pic_ctx, %struct.vaapi_pic_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vaapi_pic_ctx*, %struct.vaapi_pic_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.vaapi_pic_ctx, %struct.vaapi_pic_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load %struct.vaapi_pic_ctx*, %struct.vaapi_pic_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.vaapi_pic_ctx, %struct.vaapi_pic_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vaapi_pic_ctx*, %struct.vaapi_pic_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.vaapi_pic_ctx, %struct.vaapi_pic_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.vaapi_pic_ctx*, %struct.vaapi_pic_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.vaapi_pic_ctx, %struct.vaapi_pic_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @picture_Hold(i32 %39)
  %41 = load %struct.vaapi_pic_ctx*, %struct.vaapi_pic_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.vaapi_pic_ctx, %struct.vaapi_pic_ctx* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vaapi_pic_ctx*, %struct.vaapi_pic_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.vaapi_pic_ctx, %struct.vaapi_pic_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.picture_context_t* %45, %struct.picture_context_t** %2, align 8
  br label %46

46:                                               ; preds = %12, %11
  %47 = load %struct.picture_context_t*, %struct.picture_context_t** %2, align 8
  ret %struct.picture_context_t* %47
}

declare dso_local %struct.vaapi_pic_ctx* @malloc(i32) #1

declare dso_local i32 @picture_Hold(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
