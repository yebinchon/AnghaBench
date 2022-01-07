; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_bus_load_unit_by_name.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_bus_load_unit_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i8*, i32**, i32*)* @bus_load_unit_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_load_unit_by_name(i32** %0, i32** %1, i8* %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32**, i32*** %7, align 8
  %13 = call i32 @assert(i32** %12)
  %14 = load i32**, i32*** %8, align 8
  %15 = call i32 @assert(i32** %14)
  %16 = load i32**, i32*** %10, align 8
  %17 = call i32 @assert(i32** %16)
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @isempty(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i32**, i32*** %7, align 8
  %23 = load i32**, i32*** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32**, i32*** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @bus_get_unit_by_name(i32** %22, i32** %23, i8* %24, i32** %25, i32* %26)
  store i32 %27, i32* %6, align 4
  br label %34

28:                                               ; preds = %5
  %29 = load i32**, i32*** %7, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32**, i32*** %10, align 8
  %33 = call i32 @manager_load_unit(i32** %29, i8* %30, i32* null, i32* %31, i32** %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %21
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @bus_get_unit_by_name(i32**, i32**, i8*, i32**, i32*) #1

declare dso_local i32 @manager_load_unit(i32**, i8*, i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
