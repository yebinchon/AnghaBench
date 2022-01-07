; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_is_null.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_is_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_addr_is_null(i32 %0, %union.in_addr_union* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.in_addr_union*, align 8
  store i32 %0, i32* %4, align 4
  store %union.in_addr_union* %1, %union.in_addr_union** %5, align 8
  %6 = load %union.in_addr_union*, %union.in_addr_union** %5, align 8
  %7 = call i32 @assert(%union.in_addr_union* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AF_INET, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %union.in_addr_union*, %union.in_addr_union** %5, align 8
  %13 = bitcast %union.in_addr_union* %12 to i32*
  %14 = call i32 @in4_addr_is_null(i32* %13)
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @AF_INET6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %union.in_addr_union*, %union.in_addr_union** %5, align 8
  %21 = bitcast %union.in_addr_union* %20 to i32*
  %22 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %21)
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EAFNOSUPPORT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %19, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @assert(%union.in_addr_union*) #1

declare dso_local i32 @in4_addr_is_null(i32*) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
