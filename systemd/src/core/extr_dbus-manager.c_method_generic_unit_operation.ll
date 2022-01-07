; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_generic_unit_operation.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_generic_unit_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@GENERIC_UNIT_LOAD = common dso_local global i32 0, align 4
@GENERIC_UNIT_VALIDATE_LOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32 (i32*, i32*, i32*)*, i32)* @method_generic_unit_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_generic_unit_operation(i32* %0, i32* %1, i32* %2, i32 (i32*, i32*, i32*)* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32 (i32*, i32*, i32*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 (i32*, i32*, i32*)* %3, i32 (i32*, i32*, i32*)** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @assert(i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @sd_bus_message_read(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %12)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %70

25:                                               ; preds = %5
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 @isempty(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @GENERIC_UNIT_LOAD, align 4
  %32 = call i64 @FLAGS_SET(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @manager_load_unit(i32* %35, i8* %36, i32* null, i32* %37, i32** %13)
  store i32 %38, i32* %14, align 4
  br label %45

39:                                               ; preds = %29, %25
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @bus_get_unit_by_name(i32* %40, i32* %41, i8* %42, i32** %13, i32* %43)
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %6, align 4
  br label %70

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @GENERIC_UNIT_VALIDATE_LOADED, align 4
  %53 = call i64 @FLAGS_SET(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @bus_unit_validate_load_state(i32* %56, i32* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %70

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %10, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 %65(i32* %66, i32* %67, i32* %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %61, %48, %23
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i32 @isempty(i8*) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @manager_load_unit(i32*, i8*, i32*, i32*, i32**) #1

declare dso_local i32 @bus_get_unit_by_name(i32*, i32*, i8*, i32**, i32*) #1

declare dso_local i32 @bus_unit_validate_load_state(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
