; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_vlc_vaapi_PicGetDisplay.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_vlc_vaapi_PicGetDisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.vaapi_pic_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_vaapi_PicGetDisplay(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.vaapi_pic_context*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = call i32 @ASSERT_VAAPI_CHROMA(%struct.TYPE_4__* %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @assert(i64 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.vaapi_pic_context*
  store %struct.vaapi_pic_context* %13, %struct.vaapi_pic_context** %3, align 8
  %14 = load %struct.vaapi_pic_context*, %struct.vaapi_pic_context** %3, align 8
  %15 = getelementptr inbounds %struct.vaapi_pic_context, %struct.vaapi_pic_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

declare dso_local i32 @ASSERT_VAAPI_CHROMA(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
