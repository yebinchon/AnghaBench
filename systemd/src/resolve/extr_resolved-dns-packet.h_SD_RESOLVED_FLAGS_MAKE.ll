; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-packet.h_SD_RESOLVED_FLAGS_MAKE.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-packet.h_SD_RESOLVED_FLAGS_MAKE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_RESOLVED_AUTHENTICATED = common dso_local global i32 0, align 4
@SD_RESOLVED_DNS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SD_RESOLVED_LLMNR_IPV6 = common dso_local global i32 0, align 4
@SD_RESOLVED_LLMNR_IPV4 = common dso_local global i32 0, align 4
@SD_RESOLVED_MDNS_IPV6 = common dso_local global i32 0, align 4
@SD_RESOLVED_MDNS_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @SD_RESOLVED_FLAGS_MAKE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SD_RESOLVED_FLAGS_MAKE(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @SD_RESOLVED_AUTHENTICATED, align 4
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %45 [
    i32 130, label %17
    i32 129, label %21
    i32 128, label %33
  ]

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SD_RESOLVED_DNS, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @AF_INET6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @SD_RESOLVED_LLMNR_IPV6, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @SD_RESOLVED_LLMNR_IPV4, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = or i32 %22, %31
  store i32 %32, i32* %4, align 4
  br label %47

33:                                               ; preds = %14
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @AF_INET6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @SD_RESOLVED_MDNS_IPV6, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @SD_RESOLVED_MDNS_IPV4, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = or i32 %34, %43
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %14
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %42, %30, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
