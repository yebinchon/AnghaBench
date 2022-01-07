; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-wait-for-units.c_on_properties_changed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-wait-for-units.c_on_properties_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to parse PropertiesChanged signal: %m\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"org.freedesktop.systemd1.Unit\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to process PropertiesChanged signal: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @on_properties_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_properties_changed(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @sd_bus_message_read(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @log_debug_errno(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @streq(i8* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %37

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @wait_for_item_parse_properties(i32* %28, i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @log_debug_errno(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %27
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %26, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @wait_for_item_parse_properties(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
