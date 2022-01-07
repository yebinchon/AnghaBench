; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus.c_bus_track_serialize.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus.c_bus_track_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bus_track_serialize(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @sd_bus_track_first(i32* %14)
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %36, %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sd_bus_track_count_name(i32* %20, i8* %21)
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %32, %19
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @serialize_item(i8* %28, i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %23

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %4, align 8
  %38 = call i8* @sd_bus_track_next(i32* %37)
  store i8* %38, i8** %7, align 8
  br label %16

39:                                               ; preds = %16
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @sd_bus_track_first(i32*) #1

declare dso_local i32 @sd_bus_track_count_name(i32*, i8*) #1

declare dso_local i32 @serialize_item(i8*, i8*, i8*) #1

declare dso_local i8* @sd_bus_track_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
