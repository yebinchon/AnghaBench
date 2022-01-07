; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_bus_message_read_strv_extend.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_bus_message_read_strv_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_message_read_strv_extend(i8*** %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8***, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8*** %0, i8**** %4, align 8
  store i8*** %1, i8**** %5, align 8
  %8 = load i8***, i8**** %4, align 8
  %9 = call i32 @assert(i8*** %8)
  %10 = load i8***, i8**** %5, align 8
  %11 = call i32 @assert(i8*** %10)
  %12 = load i8***, i8**** %4, align 8
  %13 = call i32 @sd_bus_message_enter_container(i8*** %12, i8 signext 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i8***, i8**** %4, align 8
  %21 = call i32 @sd_bus_message_read_basic(i8*** %20, i8 signext 115, i8** %6)
  store i32 %21, i32* %7, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i8***, i8**** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strv_extend(i8*** %24, i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %23
  br label %19

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %32
  %38 = load i8***, i8**** %4, align 8
  %39 = call i32 @sd_bus_message_exit_container(i8*** %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %35, %29, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @assert(i8***) #1

declare dso_local i32 @sd_bus_message_enter_container(i8***, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read_basic(i8***, i8 signext, i8**) #1

declare dso_local i32 @strv_extend(i8***, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
