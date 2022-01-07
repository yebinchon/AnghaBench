; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_vt_utils.c_cvpxpic_destroy_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_vt_utils.c_cvpxpic_destroy_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvpxpic_ctx = type { i32, i32, i32, i32 (i32, i32, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @cvpxpic_destroy_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvpxpic_destroy_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.cvpxpic_ctx*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.cvpxpic_ctx*
  store %struct.cvpxpic_ctx* %5, %struct.cvpxpic_ctx** %3, align 8
  %6 = load %struct.cvpxpic_ctx*, %struct.cvpxpic_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.cvpxpic_ctx, %struct.cvpxpic_ctx* %6, i32 0, i32 4
  %8 = call i64 @vlc_atomic_rc_dec(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.cvpxpic_ctx*, %struct.cvpxpic_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.cvpxpic_ctx, %struct.cvpxpic_ctx* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @CFRelease(i32 %13)
  %15 = load %struct.cvpxpic_ctx*, %struct.cvpxpic_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.cvpxpic_ctx, %struct.cvpxpic_ctx* %15, i32 0, i32 3
  %17 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %16, align 8
  %18 = icmp ne i32 (i32, i32, i32)* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %10
  %20 = load %struct.cvpxpic_ctx*, %struct.cvpxpic_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.cvpxpic_ctx, %struct.cvpxpic_ctx* %20, i32 0, i32 3
  %22 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %21, align 8
  %23 = load %struct.cvpxpic_ctx*, %struct.cvpxpic_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.cvpxpic_ctx, %struct.cvpxpic_ctx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.cvpxpic_ctx*, %struct.cvpxpic_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.cvpxpic_ctx, %struct.cvpxpic_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cvpxpic_ctx*, %struct.cvpxpic_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.cvpxpic_ctx, %struct.cvpxpic_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %22(i32 %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %19, %10
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @free(i32* %34)
  br label %36

36:                                               ; preds = %33, %1
  ret void
}

declare dso_local i64 @vlc_atomic_rc_dec(i32*) #1

declare dso_local i32 @CFRelease(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
