; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-address.c_address_drop.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-address.c_address_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [48 x i8] c"Failed to disable IP masquerading, ignoring: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @address_drop(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = call i32 @assert(%struct.TYPE_7__* %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = call i32 @address_is_ready(%struct.TYPE_7__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = call i32 @address_release(%struct.TYPE_7__* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @log_link_warning_errno(i32* %18, i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = call i32 @address_free(%struct.TYPE_7__* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @link_update_operstate(i32* %24, i32 1)
  %26 = load i32*, i32** %3, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @link_check_ready(i32* %32)
  br label %34

34:                                               ; preds = %31, %28, %21
  ret i32 0
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @address_is_ready(%struct.TYPE_7__*) #1

declare dso_local i32 @address_release(%struct.TYPE_7__*) #1

declare dso_local i32 @log_link_warning_errno(i32*, i32, i8*) #1

declare dso_local i32 @address_free(%struct.TYPE_7__*) #1

declare dso_local i32 @link_update_operstate(i32*, i32) #1

declare dso_local i32 @link_check_ready(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
