; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_vt_utils.c_cvpxpic_copy_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_vt_utils.c_cvpxpic_copy_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picture_context_t = type { i32 }
%struct.cvpxpic_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.picture_context_t* (%struct.picture_context_t*)* @cvpxpic_copy_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.picture_context_t* @cvpxpic_copy_cb(%struct.picture_context_t* %0) #0 {
  %2 = alloca %struct.picture_context_t*, align 8
  %3 = alloca %struct.cvpxpic_ctx*, align 8
  store %struct.picture_context_t* %0, %struct.picture_context_t** %2, align 8
  %4 = load %struct.picture_context_t*, %struct.picture_context_t** %2, align 8
  %5 = bitcast %struct.picture_context_t* %4 to %struct.cvpxpic_ctx*
  store %struct.cvpxpic_ctx* %5, %struct.cvpxpic_ctx** %3, align 8
  %6 = load %struct.cvpxpic_ctx*, %struct.cvpxpic_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.cvpxpic_ctx, %struct.cvpxpic_ctx* %6, i32 0, i32 0
  %8 = call i32 @vlc_atomic_rc_inc(i32* %7)
  %9 = load %struct.picture_context_t*, %struct.picture_context_t** %2, align 8
  ret %struct.picture_context_t* %9
}

declare dso_local i32 @vlc_atomic_rc_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
