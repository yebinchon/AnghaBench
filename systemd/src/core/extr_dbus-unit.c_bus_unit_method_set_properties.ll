; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_set_properties.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_set_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"set-property\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Authentication is required to set properties on '$(unit)'.\00", align 1
@UNIT_RUNTIME = common dso_local global i32 0, align 4
@UNIT_PERSISTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_unit_method_set_properties(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @mac_selinux_unit_access_check(i32* %17, i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %67

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @sd_bus_message_read(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %67

32:                                               ; preds = %25
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %35 = call i32 @N_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @bus_verify_manage_units_async_full(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35, i32 1, i32* %36, i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %67

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %67

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @UNIT_RUNTIME, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @UNIT_PERSISTENT, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @bus_unit_set_properties(i32* %48, i32* %49, i32 %57, i32 1, i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %67

64:                                               ; preds = %56
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @sd_bus_reply_method_return(i32* %65, i32* null)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %62, %46, %41, %30, %23
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @mac_selinux_unit_access_check(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*) #1

declare dso_local i32 @bus_verify_manage_units_async_full(i32*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @bus_unit_set_properties(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
