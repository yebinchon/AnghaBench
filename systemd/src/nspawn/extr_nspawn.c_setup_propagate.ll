; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_setup_propagate.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_setup_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"/run/systemd/nspawn/\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"/run/systemd/nspawn/propagate\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"/run/systemd/nspawn/propagate/\00", align 1
@arg_machine = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"/run/systemd\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to create /run/systemd: %m\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"/run/systemd/nspawn\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to create /run/systemd/nspawn: %m\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"/run/systemd/nspawn/incoming\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Failed to create /run/systemd/nspawn/incoming: %m\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@MS_BIND = common dso_local global i32 0, align 4
@MS_REMOUNT = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@MS_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @setup_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_propagate(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i32 @mkdir_p(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 493)
  %8 = call i32 @mkdir_p(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 384)
  %9 = load i32, i32* @arg_machine, align 4
  %10 = call i8* @strjoina(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @mkdir_p(i8* %11, i32 384)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @userns_mkdir(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 493, i32 0, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @log_error_errno(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  br label %66

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @userns_mkdir(i8* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 493, i32 0, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @log_error_errno(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %66

28:                                               ; preds = %20
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @userns_mkdir(i8* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 384, i32 0, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @log_error_errno(i32 %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  store i32 %35, i32* %2, align 4
  br label %66

36:                                               ; preds = %28
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @prefix_roota(i8* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i8* %38, i8** %5, align 8
  %39 = load i32, i32* @LOG_ERR, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @MS_BIND, align 4
  %43 = call i32 @mount_verbose(i32 %39, i8* %40, i8* %41, i32* null, i32 %42, i32* null)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %66

48:                                               ; preds = %36
  %49 = load i32, i32* @LOG_ERR, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @MS_BIND, align 4
  %52 = load i32, i32* @MS_REMOUNT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MS_RDONLY, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @mount_verbose(i32 %49, i8* null, i8* %50, i32* null, i32 %55, i32* null)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %48
  %62 = load i32, i32* @LOG_ERR, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* @MS_SLAVE, align 4
  %65 = call i32 @mount_verbose(i32 %62, i8* null, i8* %63, i32* null, i32 %64, i32* null)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %59, %46, %33, %25, %17
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @mkdir_p(i8*, i32) #1

declare dso_local i8* @strjoina(i8*, i32) #1

declare dso_local i32 @userns_mkdir(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i8* @prefix_roota(i8*, i8*) #1

declare dso_local i32 @mount_verbose(i32, i8*, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
