; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_unref.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EUNATCH = common dso_local global i32 0, align 4
@BUS_ERROR_NOT_REFERENCED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unit has not been referenced yet.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_unit_method_unref(i32* %0, i8* %1, i32* %2) #0 {
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
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @bus_unit_track_remove_sender(i32* %16, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @EUNATCH, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @BUS_ERROR_NOT_REFERENCED, align 4
  %26 = call i32 @sd_bus_error_setf(i32* %24, i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %35

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @sd_bus_reply_method_return(i32* %33, i32* null)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %30, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @bus_unit_track_remove_sender(i32*, i32*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
