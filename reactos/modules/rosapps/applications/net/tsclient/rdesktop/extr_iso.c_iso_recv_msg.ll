; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_iso.c_iso_recv_msg.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_iso.c_iso_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISO_PDU_DT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @iso_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @iso_recv_msg(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @tcp_recv(i32* %11, i32* null, i32 4)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %81

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @in_uint8(i32* %17, i32 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @in_uint8s(i32* %29, i32 1)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @in_uint16_be(i32* %31, i32 %32)
  br label %48

34:                                               ; preds = %25
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @in_uint8(i32* %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, -129
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @next_be(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %34
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 4
  %53 = call i32* @tcp_recv(i32* %49, i32* %50, i32 %52)
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32* null, i32** %4, align 8
  br label %81

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 3
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32*, i32** %8, align 8
  store i32* %61, i32** %4, align 8
  br label %81

62:                                               ; preds = %57
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @in_uint8s(i32* %63, i32 1)
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @in_uint8(i32* %65, i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ISO_PDU_DT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @in_uint8s(i32* %74, i32 1)
  %76 = load i32*, i32** %8, align 8
  store i32* %76, i32** %4, align 8
  br label %81

77:                                               ; preds = %62
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @in_uint8s(i32* %78, i32 5)
  %80 = load i32*, i32** %8, align 8
  store i32* %80, i32** %4, align 8
  br label %81

81:                                               ; preds = %77, %73, %60, %56, %15
  %82 = load i32*, i32** %4, align 8
  ret i32* %82
}

declare dso_local i32* @tcp_recv(i32*, i32*, i32) #1

declare dso_local i32 @in_uint8(i32*, i32) #1

declare dso_local i32 @in_uint8s(i32*, i32) #1

declare dso_local i32 @in_uint16_be(i32*, i32) #1

declare dso_local i32 @next_be(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
