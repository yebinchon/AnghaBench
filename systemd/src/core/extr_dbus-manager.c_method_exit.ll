; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_exit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"halt\00", align 1
@MANAGER_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32*)* @method_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_exit(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_7__* %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = call i32 @assert(%struct.TYPE_7__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @mac_selinux_access_check(%struct.TYPE_7__* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @MANAGER_EXIT, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = call i32 @sd_bus_reply_method_return(%struct.TYPE_7__* %27, i32* null)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @mac_selinux_access_check(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
