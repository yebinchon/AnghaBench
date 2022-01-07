; ModuleID = '/home/carl/AnghaBench/systemd/src/cryptsetup/extr_cryptsetup-generator.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/cryptsetup/extr_cryptsetup-generator.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_dest = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"SYSTEMD_CRYPTTAB\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/etc/crypttab\00", align 1
@arg_crypttab = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"RUNTIME_DIRECTORY\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"/run/systemd/cryptsetup\00", align 1
@arg_runtime_directory = common dso_local global i8* null, align 8
@crypt_device_hash_ops = common dso_local global i32 0, align 4
@arg_disks = common dso_local global i32 0, align 4
@parse_proc_cmdline_item = common dso_local global i32 0, align 4
@PROC_CMDLINE_STRIP_RD_PREFIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to parse kernel command line: %m\00", align 1
@arg_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** @arg_dest, align 8
  %10 = call i32 @assert_se(i8* %9)
  %11 = call i64 @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = inttoptr i64 %11 to i8*
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %15 ]
  store i8* %17, i8** @arg_crypttab, align 8
  %18 = call i64 @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = inttoptr i64 %18 to i8*
  br label %23

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i8* [ %21, %20 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %22 ]
  store i8* %24, i8** @arg_runtime_directory, align 8
  %25 = call i32 @hashmap_new(i32* @crypt_device_hash_ops)
  store i32 %25, i32* @arg_disks, align 4
  %26 = load i32, i32* @arg_disks, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call i32 (...) @log_oom()
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %23
  %31 = load i32, i32* @parse_proc_cmdline_item, align 4
  %32 = load i32, i32* @PROC_CMDLINE_STRIP_RD_PREFIX, align 4
  %33 = call i32 @proc_cmdline_parse(i32 %31, i32* null, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @log_warning_errno(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 %38, i32* %4, align 4
  br label %56

39:                                               ; preds = %30
  %40 = load i32, i32* @arg_enabled, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %56

43:                                               ; preds = %39
  %44 = call i32 (...) @add_crypttab_devices()
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %43
  %50 = call i32 (...) @add_proc_cmdline_devices()
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %53, %47, %42, %36, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @hashmap_new(i32*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @proc_cmdline_parse(i32, i32*, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @add_crypttab_devices(...) #1

declare dso_local i32 @add_proc_cmdline_devices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
