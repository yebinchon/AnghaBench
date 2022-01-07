; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_transient_aux_units_from_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_transient_aux_units_from_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"(sa(sv))\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sa(sv)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @transient_aux_units_from_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transient_aux_units_from_message(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @assert(i32* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @sd_bus_message_enter_container(i32* %15, i8 signext 97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @sd_bus_message_enter_container(i32* %23, i8 signext 114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  store i8* null, i8** %9, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @sd_bus_message_read(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %64

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @transient_unit_from_message(i32* %34, i32* %35, i8* %36, i32** %10, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %64

43:                                               ; preds = %33
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @sd_bus_message_exit_container(i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %64

50:                                               ; preds = %43
  br label %22

51:                                               ; preds = %22
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %64

56:                                               ; preds = %51
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @sd_bus_message_exit_container(i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %61, %54, %48, %41, %31, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_enter_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i32 @transient_unit_from_message(i32*, i32*, i8*, i32**, i32*) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
