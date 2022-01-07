; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_errno-util.h_ERRNO_IS_DISCONNECT.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_errno-util.h_ERRNO_IS_DISCONNECT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECONNABORTED = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENETRESET = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@ENONET = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ERRNO_IS_DISCONNECT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ERRNO_IS_DISCONNECT(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @abs(i32 %3) #3
  %5 = load i32, i32* @ECONNABORTED, align 4
  %6 = load i32, i32* @ECONNREFUSED, align 4
  %7 = load i32, i32* @ECONNRESET, align 4
  %8 = load i32, i32* @EHOSTDOWN, align 4
  %9 = load i32, i32* @EHOSTUNREACH, align 4
  %10 = load i32, i32* @ENETDOWN, align 4
  %11 = load i32, i32* @ENETRESET, align 4
  %12 = load i32, i32* @ENETUNREACH, align 4
  %13 = load i32, i32* @ENONET, align 4
  %14 = load i32, i32* @ENOPROTOOPT, align 4
  %15 = load i32, i32* @ENOTCONN, align 4
  %16 = load i32, i32* @EPIPE, align 4
  %17 = load i32, i32* @EPROTO, align 4
  %18 = load i32, i32* @ESHUTDOWN, align 4
  %19 = call i32 @IN_SET(i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @IN_SET(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
