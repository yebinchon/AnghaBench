; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_tox.c_set_custom_packet_error.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_tox.c_set_custom_packet_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOX_ERR_FRIEND_CUSTOM_PACKET_OK = common dso_local global i32 0, align 4
@TOX_ERR_FRIEND_CUSTOM_PACKET_FRIEND_NOT_FOUND = common dso_local global i32 0, align 4
@TOX_ERR_FRIEND_CUSTOM_PACKET_TOO_LONG = common dso_local global i32 0, align 4
@TOX_ERR_FRIEND_CUSTOM_PACKET_INVALID = common dso_local global i32 0, align 4
@TOX_ERR_FRIEND_CUSTOM_PACKET_FRIEND_NOT_CONNECTED = common dso_local global i32 0, align 4
@TOX_ERR_FRIEND_CUSTOM_PACKET_SENDQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @set_custom_packet_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_custom_packet_error(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %30 [
    i32 0, label %6
    i32 -1, label %10
    i32 -2, label %14
    i32 -3, label %18
    i32 -4, label %22
    i32 -5, label %26
  ]

6:                                                ; preds = %2
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @TOX_ERR_FRIEND_CUSTOM_PACKET_OK, align 4
  %9 = call i32 @SET_ERROR_PARAMETER(i32* %7, i32 %8)
  br label %30

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @TOX_ERR_FRIEND_CUSTOM_PACKET_FRIEND_NOT_FOUND, align 4
  %13 = call i32 @SET_ERROR_PARAMETER(i32* %11, i32 %12)
  br label %30

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @TOX_ERR_FRIEND_CUSTOM_PACKET_TOO_LONG, align 4
  %17 = call i32 @SET_ERROR_PARAMETER(i32* %15, i32 %16)
  br label %30

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @TOX_ERR_FRIEND_CUSTOM_PACKET_INVALID, align 4
  %21 = call i32 @SET_ERROR_PARAMETER(i32* %19, i32 %20)
  br label %30

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @TOX_ERR_FRIEND_CUSTOM_PACKET_FRIEND_NOT_CONNECTED, align 4
  %25 = call i32 @SET_ERROR_PARAMETER(i32* %23, i32 %24)
  br label %30

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @TOX_ERR_FRIEND_CUSTOM_PACKET_SENDQ, align 4
  %29 = call i32 @SET_ERROR_PARAMETER(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %2, %26, %22, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @SET_ERROR_PARAMETER(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
