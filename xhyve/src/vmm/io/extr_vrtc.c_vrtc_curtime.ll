; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_curtime.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_curtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrtc = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"vrtc_curtime: uptime went backwards: %#llx to %#llx\00", align 1
@SBT_1S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vrtc*, i32*)* @vrtc_curtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrtc_curtime(%struct.vrtc* %0, i32* %1) #0 {
  %3 = alloca %struct.vrtc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vrtc* %0, %struct.vrtc** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %10 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %13 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %17 = call i64 @update_enabled(%struct.vrtc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %2
  %20 = call i32 (...) @sbinuptime()
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %23 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %30 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %28, i8* %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SBT_1S, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SBT_1S, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %19, %2
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i64 @update_enabled(%struct.vrtc*) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
