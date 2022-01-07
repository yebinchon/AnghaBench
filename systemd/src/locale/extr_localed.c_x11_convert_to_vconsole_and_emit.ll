; ModuleID = '/home/carl/AnghaBench/systemd/src/locale/extr_localed.c_x11_convert_to_vconsole_and_emit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/locale/extr_localed.c_x11_convert_to_vconsole_and_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Failed to save virtual console keymap: %m\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"/org/freedesktop/locale1\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"org.freedesktop.locale1\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"VConsoleKeymap\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"VConsoleKeymapToggle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @x11_convert_to_vconsole_and_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x11_convert_to_vconsole_and_emit(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @vconsole_read_data(i32* %9, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @x11_convert_to_vconsole(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @vconsole_write_data(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @log_error_errno(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @sd_bus_message_get_bus(i32* %32)
  %34 = call i32 @sd_bus_emit_properties_changed(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @sd_bus_message_get_bus(i32* %35)
  %37 = call i32 @vconsole_reload(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %21, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @vconsole_read_data(i32*, i32*) #1

declare dso_local i32 @x11_convert_to_vconsole(i32*) #1

declare dso_local i32 @vconsole_write_data(i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_emit_properties_changed(i32, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_get_bus(i32*) #1

declare dso_local i32 @vconsole_reload(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
