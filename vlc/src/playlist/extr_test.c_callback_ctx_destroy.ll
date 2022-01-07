; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_callback_ctx_destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_callback_ctx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callback_ctx*)* @callback_ctx_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callback_ctx_destroy(%struct.callback_ctx* %0) #0 {
  %2 = alloca %struct.callback_ctx*, align 8
  store %struct.callback_ctx* %0, %struct.callback_ctx** %2, align 8
  %3 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %3, i32 0, i32 8
  %5 = call i32 @vlc_vector_destroy(i32* %4)
  %6 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %6, i32 0, i32 7
  %8 = call i32 @vlc_vector_destroy(i32* %7)
  %9 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %9, i32 0, i32 6
  %11 = call i32 @vlc_vector_destroy(i32* %10)
  %12 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %12, i32 0, i32 5
  %14 = call i32 @vlc_vector_destroy(i32* %13)
  %15 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %15, i32 0, i32 4
  %17 = call i32 @vlc_vector_destroy(i32* %16)
  %18 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %18, i32 0, i32 3
  %20 = call i32 @vlc_vector_destroy(i32* %19)
  %21 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %21, i32 0, i32 2
  %23 = call i32 @vlc_vector_destroy(i32* %22)
  %24 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %24, i32 0, i32 1
  %26 = call i32 @vlc_vector_destroy(i32* %25)
  %27 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %27, i32 0, i32 0
  %29 = call i32 @vlc_vector_destroy(i32* %28)
  ret void
}

declare dso_local i32 @vlc_vector_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
