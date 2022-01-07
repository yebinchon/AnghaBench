; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_free1.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_free1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_key = type { %struct.tty_key*, %struct.tty_key*, %struct.tty_key* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_key*)* @tty_keys_free1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_keys_free1(%struct.tty_key* %0) #0 {
  %2 = alloca %struct.tty_key*, align 8
  store %struct.tty_key* %0, %struct.tty_key** %2, align 8
  %3 = load %struct.tty_key*, %struct.tty_key** %2, align 8
  %4 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %3, i32 0, i32 2
  %5 = load %struct.tty_key*, %struct.tty_key** %4, align 8
  %6 = icmp ne %struct.tty_key* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.tty_key*, %struct.tty_key** %2, align 8
  %9 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %8, i32 0, i32 2
  %10 = load %struct.tty_key*, %struct.tty_key** %9, align 8
  call void @tty_keys_free1(%struct.tty_key* %10)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.tty_key*, %struct.tty_key** %2, align 8
  %13 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %12, i32 0, i32 1
  %14 = load %struct.tty_key*, %struct.tty_key** %13, align 8
  %15 = icmp ne %struct.tty_key* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.tty_key*, %struct.tty_key** %2, align 8
  %18 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %17, i32 0, i32 1
  %19 = load %struct.tty_key*, %struct.tty_key** %18, align 8
  call void @tty_keys_free1(%struct.tty_key* %19)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.tty_key*, %struct.tty_key** %2, align 8
  %22 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %21, i32 0, i32 0
  %23 = load %struct.tty_key*, %struct.tty_key** %22, align 8
  %24 = icmp ne %struct.tty_key* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.tty_key*, %struct.tty_key** %2, align 8
  %27 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %26, i32 0, i32 0
  %28 = load %struct.tty_key*, %struct.tty_key** %27, align 8
  call void @tty_keys_free1(%struct.tty_key* %28)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.tty_key*, %struct.tty_key** %2, align 8
  %31 = call i32 @free(%struct.tty_key* %30)
  ret void
}

declare dso_local i32 @free(%struct.tty_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
