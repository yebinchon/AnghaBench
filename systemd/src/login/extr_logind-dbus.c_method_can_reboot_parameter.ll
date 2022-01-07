; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_can_reboot_parameter.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_can_reboot_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"org.freedesktop.login1.set-reboot-parameter\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @method_can_reboot_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_can_reboot_parameter(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = call i32 (...) @detect_container()
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @sd_bus_reply_method_return(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %33

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %30 = load i32, i32* @UID_INVALID, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @return_test_polkit(i32* %28, i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %30, i32* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %24, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @detect_container(...) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i8*, i8*) #1

declare dso_local i32 @return_test_polkit(i32*, i32, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
