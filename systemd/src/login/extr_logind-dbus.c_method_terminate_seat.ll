; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_terminate_seat.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_terminate_seat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @method_terminate_seat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_terminate_seat(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @sd_bus_message_read(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @manager_get_seat_from_creds(i32* %25, i32* %26, i8* %27, i32* %28, i32** %10)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %24
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @bus_seat_method_terminate(i32* %35, i32* %36, i32* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %32, %22
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i32 @manager_get_seat_from_creds(i32*, i32*, i8*, i32*, i32**) #1

declare dso_local i32 @bus_seat_method_terminate(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
