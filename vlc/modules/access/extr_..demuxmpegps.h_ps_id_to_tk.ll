; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmpegps.h_ps_id_to_tk.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmpegps.h_ps_id_to_tk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ps_id_to_tk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_id_to_tk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp uge i32 %4, 192
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 192
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp ule i32 %15, 255
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = sub i32 %18, 192
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 65280
  %23 = icmp eq i32 %22, 48384
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 255
  %27 = add i32 64, %26
  store i32 %27, i32* %2, align 4
  br label %40

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 65280
  %31 = icmp eq i32 %30, 64768
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 255
  %35 = add i32 320, %34
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 7
  %39 = add i32 576, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %32, %24, %17, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
