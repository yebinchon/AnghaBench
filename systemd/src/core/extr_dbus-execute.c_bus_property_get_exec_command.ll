; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-execute.c_bus_property_get_exec_command.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-execute.c_bus_property_get_exec_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"(sasbttttuii)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_property_get_exec_command(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i8*, i8** %14, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @assert(i32* %20)
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @assert(i32* %22)
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @sd_bus_message_open_container(i32* %24, i8 signext 97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %8, align 4
  br label %41

30:                                               ; preds = %7
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = call i32 @append_exec_command(i32* %31, i32* %32)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %30
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @sd_bus_message_close_container(i32* %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %36, %28
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_open_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @append_exec_command(i32*, i32*) #1

declare dso_local i32 @sd_bus_message_close_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
