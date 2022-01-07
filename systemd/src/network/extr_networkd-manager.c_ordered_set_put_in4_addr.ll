; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_ordered_set_put_in4_addr.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_ordered_set_put_in4_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%union.in_addr_union = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_addr*, %struct.in_addr*)* @ordered_set_put_in4_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ordered_set_put_in4_addr(%struct.in_addr* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_addr*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.in_addr* %0, %struct.in_addr** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %8 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %9 = call i32 @assert(%struct.in_addr* %8)
  %10 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %11 = call i32 @assert(%struct.in_addr* %10)
  %12 = load i32, i32* @AF_INET, align 4
  %13 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %14 = bitcast %struct.in_addr* %13 to %union.in_addr_union*
  %15 = call i32 @in_addr_to_string(i32 %12, %union.in_addr_union* %14, i8** %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @ordered_set_consume(%struct.in_addr* %21, i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %28, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @assert(%struct.in_addr*) #1

declare dso_local i32 @in_addr_to_string(i32, %union.in_addr_union*, i8**) #1

declare dso_local i32 @ordered_set_consume(%struct.in_addr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
