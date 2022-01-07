; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_bus_message_get_arg_strv.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_bus_message_get_arg_strv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_BUS_TYPE_ARRAY = common dso_local global i8 0, align 1
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"g\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_message_get_arg_strv(i8*** %0, i32 %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8***, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8*** %0, i8**** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8*** %2, i8**** %7, align 8
  %11 = load i8***, i8**** %5, align 8
  %12 = call i32 @assert(i8*** %11)
  %13 = load i8***, i8**** %7, align 8
  %14 = call i32 @assert(i8*** %13)
  %15 = load i8***, i8**** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @bus_message_get_arg_skip(i8*** %15, i32 %16, i8* %9, i8** %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load i8, i8* %9, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* @SD_BUS_TYPE_ARRAY, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %42

31:                                               ; preds = %22
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @STR_IN_SET(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %31
  %39 = load i8***, i8**** %5, align 8
  %40 = load i8***, i8**** %7, align 8
  %41 = call i32 @sd_bus_message_read_strv(i8*** %39, i8*** %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %35, %28, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i8***) #1

declare dso_local i32 @bus_message_get_arg_skip(i8***, i32, i8*, i8**) #1

declare dso_local i32 @STR_IN_SET(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sd_bus_message_read_strv(i8***, i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
