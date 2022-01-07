; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-lldp.c_lldp_handle_datagram.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-lldp.c_lldp_handle_datagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to add datagram. Ignoring.\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Successfully processed LLDP datagram.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @lldp_handle_datagram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lldp_handle_datagram(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @assert(i32* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @lldp_neighbor_parse(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @EBADMSG, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %34

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @lldp_add_neighbor(i32* %24, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @log_lldp_errno(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

32:                                               ; preds = %23
  %33 = call i32 @log_lldp(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %29, %21, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @lldp_neighbor_parse(i32*) #1

declare dso_local i32 @lldp_add_neighbor(i32*, i32*) #1

declare dso_local i32 @log_lldp_errno(i32, i8*) #1

declare dso_local i32 @log_lldp(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
