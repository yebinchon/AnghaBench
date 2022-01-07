; ModuleID = '/home/carl/AnghaBench/systemd/src/portable/extr_portabled-bus.c_method_get_image_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/portable/extr_portabled-bus.c_method_get_image_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @method_get_image_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_get_image_state(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @assert(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @sd_bus_message_read(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @sd_bus_message_get_bus(i32* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @portable_get_state(i32 %21, i8* %22, i32 0, i32* %9, i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @portable_state_to_string(i32 %31)
  %33 = call i32 @sd_bus_reply_method_return(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %27, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i32 @portable_get_state(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @sd_bus_message_get_bus(i32*) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i8*, i32) #1

declare dso_local i32 @portable_state_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
