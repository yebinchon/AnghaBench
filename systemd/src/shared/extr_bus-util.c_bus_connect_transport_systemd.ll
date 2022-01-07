; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-util.c_bus_connect_transport_systemd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-util.c_bus_connect_transport_systemd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_BUS_TRANSPORT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"System has not been booted with systemd as init system (PID 1). Can't operate.\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Hmm, unknown transport type.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_connect_transport_systemd(i32 %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @_BUS_TRANSPORT_MAX, align 4
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32**, i32*** %9, align 8
  %21 = ptrtoint i32** %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 130
  %25 = zext i1 %24 to i32
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = icmp eq i32 %25, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @assert_return(i32 %31, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 130
  br i1 %36, label %41, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %4
  %42 = phi i1 [ true, %4 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @assert_return(i32 %43, i32 %45)
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %73 [
    i32 130, label %48
    i32 128, label %65
    i32 129, label %69
  ]

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32**, i32*** %9, align 8
  %53 = call i32 @bus_connect_user_systemd(i32** %52)
  store i32 %53, i32* %10, align 4
  br label %64

54:                                               ; preds = %48
  %55 = call i32 (...) @sd_booted()
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @EHOSTDOWN, align 4
  %59 = call i32 @SYNTHETIC_ERRNO(i32 %58)
  %60 = call i32 @log_error_errno(i32 %59, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  store i32 %60, i32* %5, align 4
  br label %77

61:                                               ; preds = %54
  %62 = load i32**, i32*** %9, align 8
  %63 = call i32 @bus_connect_system_systemd(i32** %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %51
  br label %75

65:                                               ; preds = %41
  %66 = load i32**, i32*** %9, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @sd_bus_open_system_remote(i32** %66, i8* %67)
  store i32 %68, i32* %10, align 4
  br label %75

69:                                               ; preds = %41
  %70 = load i32**, i32*** %9, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @sd_bus_open_system_machine(i32** %70, i8* %71)
  store i32 %72, i32* %10, align 4
  br label %75

73:                                               ; preds = %41
  %74 = call i32 @assert_not_reached(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69, %65, %64
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %57
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_return(i32, i32) #1

declare dso_local i32 @bus_connect_user_systemd(i32**) #1

declare dso_local i32 @sd_booted(...) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @bus_connect_system_systemd(i32**) #1

declare dso_local i32 @sd_bus_open_system_remote(i32**, i8*) #1

declare dso_local i32 @sd_bus_open_system_machine(i32**, i8*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
