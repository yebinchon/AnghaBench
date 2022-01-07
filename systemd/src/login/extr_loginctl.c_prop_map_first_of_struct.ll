; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_loginctl.c_prop_map_first_of_struct.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_loginctl.c_prop_map_first_of_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_BUS_TYPE_STRUCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i8*)* @prop_map_first_of_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_map_first_of_struct(i32* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @sd_bus_message_peek_type(i32* %14, i32* null, i8** %12)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %6, align 4
  br label %57

20:                                               ; preds = %5
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @SD_BUS_TYPE_STRUCT, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @sd_bus_message_enter_container(i32* %21, i32 %22, i8* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %57

29:                                               ; preds = %20
  %30 = load i32*, i32** %9, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @sd_bus_message_read_basic(i32* %30, i8 signext %33, i8* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %57

40:                                               ; preds = %29
  %41 = load i32*, i32** %9, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i32 @sd_bus_message_skip(i32* %41, i8* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %6, align 4
  br label %57

49:                                               ; preds = %40
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @sd_bus_message_exit_container(i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %57

56:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %54, %47, %38, %27, %18
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @sd_bus_message_peek_type(i32*, i32*, i8**) #1

declare dso_local i32 @sd_bus_message_enter_container(i32*, i32, i8*) #1

declare dso_local i32 @sd_bus_message_read_basic(i32*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_skip(i32*, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
