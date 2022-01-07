; ModuleID = '/home/carl/AnghaBench/systemd/src/fstab-generator/extr_fstab-generator.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/fstab-generator/extr_fstab-generator.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_dest = common dso_local global i8* null, align 8
@arg_dest_late = common dso_local global i8* null, align 8
@parse_proc_cmdline_item = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to parse kernel command line, ignoring: %m\00", align 1
@arg_fstab_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** @arg_dest, align 8
  %11 = call i32 @assert_se(i8* %10)
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** @arg_dest_late, align 8
  %13 = call i32 @assert_se(i8* %12)
  %14 = load i32, i32* @parse_proc_cmdline_item, align 4
  %15 = call i32 @proc_cmdline_parse(i32 %14, i32* null, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @log_warning_errno(i32 %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %3
  %22 = call i32 (...) @determine_root()
  %23 = call i64 (...) @in_initrd()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = call i32 (...) @add_sysroot_mount()
  store i32 %26, i32* %7, align 4
  %27 = call i32 (...) @add_sysroot_usr_mount()
  store i32 %27, i32* %8, align 4
  %28 = call i32 (...) @add_volatile_root()
  store i32 %28, i32* %9, align 4
  br label %31

29:                                               ; preds = %21
  %30 = call i32 (...) @add_volatile_var()
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i64, i64* @arg_fstab_enabled, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = call i32 @parse_fstab(i32 0)
  store i32 %35, i32* %8, align 4
  %36 = call i64 (...) @in_initrd()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @parse_fstab(i32 1)
  store i32 %39, i32* %9, align 4
  br label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** @arg_dest, align 8
  %42 = call i32 @generator_enable_remount_fs_service(i8* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %38
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  br label %58

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi i32 [ %48, %47 ], [ %57, %56 ]
  ret i32 %59
}

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i32 @proc_cmdline_parse(i32, i32*, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @determine_root(...) #1

declare dso_local i64 @in_initrd(...) #1

declare dso_local i32 @add_sysroot_mount(...) #1

declare dso_local i32 @add_sysroot_usr_mount(...) #1

declare dso_local i32 @add_volatile_root(...) #1

declare dso_local i32 @add_volatile_var(...) #1

declare dso_local i32 @parse_fstab(i32) #1

declare dso_local i32 @generator_enable_remount_fs_service(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
