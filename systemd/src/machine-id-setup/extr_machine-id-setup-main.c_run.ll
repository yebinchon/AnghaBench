; ModuleID = '/home/carl/AnghaBench/systemd/src/machine-id-setup/extr_machine-id-setup-main.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine-id-setup/extr_machine-id-setup-main.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_ID128_STRING_MAX = common dso_local global i32 0, align 4
@arg_commit = common dso_local global i64 0, align 8
@arg_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/etc/machine-id\00", align 1
@ID128_PLAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read machine ID back: %m\00", align 1
@SD_ID128_NULL = common dso_local global i32 0, align 4
@arg_print = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @SD_ID128_STRING_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = call i32 (...) @log_parse_environment()
  %17 = call i32 (...) @log_open()
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @parse_argv(i32 %18, i8** %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %64

25:                                               ; preds = %2
  %26 = load i64, i64* @arg_commit, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i32, i32* @arg_root, align 4
  %30 = call i32 @machine_id_commit(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %64

35:                                               ; preds = %28
  %36 = load i32, i32* @arg_root, align 4
  %37 = call i8* @prefix_roota(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @ID128_PLAIN, align 4
  %40 = call i32 @id128_read(i8* %38, i32 %39, i32* %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @log_error_errno(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %64

46:                                               ; preds = %35
  br label %56

47:                                               ; preds = %25
  %48 = load i32, i32* @arg_root, align 4
  %49 = load i32, i32* @SD_ID128_NULL, align 4
  %50 = call i32 @machine_id_setup(i32 %48, i32 %49, i32* %8)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %64

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i64, i64* @arg_print, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @sd_id128_to_string(i32 %60, i8* %15)
  %62 = call i32 @puts(i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %53, %43, %33, %23
  %65 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_parse_environment(...) #2

declare dso_local i32 @log_open(...) #2

declare dso_local i32 @parse_argv(i32, i8**) #2

declare dso_local i32 @machine_id_commit(i32) #2

declare dso_local i8* @prefix_roota(i32, i8*) #2

declare dso_local i32 @id128_read(i8*, i32, i32*) #2

declare dso_local i32 @log_error_errno(i32, i8*) #2

declare dso_local i32 @machine_id_setup(i32, i32, i32*) #2

declare dso_local i32 @puts(i32) #2

declare dso_local i32 @sd_id128_to_string(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
