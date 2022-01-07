; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_iso.c_iso_send_msg.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_iso.c_iso_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @iso_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso_send_msg(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32* @tcp_init(i32* %7, i32 11)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @False, align 4
  store i32 %12, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @out_uint8(i32* %14, i32 3)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @out_uint8(i32* %16, i32 0)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @out_uint16_be(i32* %18, i32 11)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @out_uint8(i32* %20, i32 6)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @out_uint8(i32* %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @out_uint16(i32* %25, i32 0)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @out_uint16(i32* %27, i32 0)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @out_uint8(i32* %29, i32 0)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @s_mark_end(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @tcp_send(i32* %33, i32* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %13, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32* @tcp_init(i32*, i32) #1

declare dso_local i32 @out_uint8(i32*, i32) #1

declare dso_local i32 @out_uint16_be(i32*, i32) #1

declare dso_local i32 @out_uint16(i32*, i32) #1

declare dso_local i32 @s_mark_end(i32*) #1

declare dso_local i32 @tcp_send(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
