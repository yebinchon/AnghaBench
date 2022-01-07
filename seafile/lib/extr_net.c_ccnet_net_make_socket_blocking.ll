; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_net.c_ccnet_net_make_socket_blocking.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_net.c_ccnet_net_make_socket_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_GETFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"fcntl(%d, F_GETFL)\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"fcntl(%d, F_SETFL)\00", align 1
@FIONBIO = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccnet_net_make_socket_blocking(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @F_GETFL, align 4
  %7 = call i32 @fcntl(i32 %5, i32 %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ccnet_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 -1, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @F_SETFL, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @O_NONBLOCK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @fcntl(i32 %13, i32 %14, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ccnet_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %2, align 4
  br label %25

24:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @ccnet_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
