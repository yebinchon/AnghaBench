; ModuleID = '/home/carl/AnghaBench/systemd/src/detect-virt/extr_detect-virt.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/detect-virt/extr_detect-virt.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to check for VM: %m\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to check for container: %m\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to check for chroot() environment: %m\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to check for user namespace: %m\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to check for virtualization: %m\00", align 1
@arg_quiet = common dso_local global i32 0, align 4
@VIRTUALIZATION_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 @log_show_color(i32 1)
  %8 = call i32 (...) @log_parse_environment()
  %9 = call i32 (...) @log_open()
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @parse_argv(i32 %10, i8** %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %80

17:                                               ; preds = %2
  %18 = load i32, i32* @arg_mode, align 4
  switch i32 %18, label %60 [
    i32 128, label %19
    i32 130, label %27
    i32 131, label %35
    i32 129, label %47
    i32 132, label %59
  ]

19:                                               ; preds = %17
  %20 = call i32 (...) @detect_vm()
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @log_error_errno(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  br label %80

26:                                               ; preds = %19
  br label %68

27:                                               ; preds = %17
  %28 = call i32 (...) @detect_container()
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @log_error_errno(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  br label %80

34:                                               ; preds = %27
  br label %68

35:                                               ; preds = %17
  %36 = call i32 (...) @running_in_chroot()
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @log_error_errno(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 %41, i32* %3, align 4
  br label %80

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %17
  %48 = call i32 (...) @running_in_userns()
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @log_error_errno(i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 %53, i32* %3, align 4
  br label %80

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %80

59:                                               ; preds = %17
  br label %60

60:                                               ; preds = %17, %59
  %61 = call i32 (...) @detect_virtualization()
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @log_error_errno(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 %66, i32* %3, align 4
  br label %80

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %34, %26
  %69 = load i32, i32* @arg_quiet, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @virtualization_to_string(i32 %72)
  %74 = call i32 @puts(i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @VIRTUALIZATION_NONE, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %64, %54, %51, %42, %39, %31, %23, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @log_show_color(i32) #1

declare dso_local i32 @log_parse_environment(...) #1

declare dso_local i32 @log_open(...) #1

declare dso_local i32 @parse_argv(i32, i8**) #1

declare dso_local i32 @detect_vm(...) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @detect_container(...) #1

declare dso_local i32 @running_in_chroot(...) #1

declare dso_local i32 @running_in_userns(...) #1

declare dso_local i32 @detect_virtualization(...) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @virtualization_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
