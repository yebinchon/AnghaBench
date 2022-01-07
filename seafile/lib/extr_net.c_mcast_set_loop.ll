; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_net.c_mcast_set_loop.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_net.c_mcast_set_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_MULTICAST_LOOP = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_MULTICAST_LOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcast_set_loop(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @sockfd_to_family(i32 %7)
  switch i32 %8, label %15 [
    i32 129, label %9
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IPPROTO_IP, align 4
  %13 = load i32, i32* @IP_MULTICAST_LOOP, align 4
  %14 = call i32 @setsockopt(i32 %11, i32 %12, i32 %13, i32* %6, i32 4)
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %16, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @sockfd_to_family(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
