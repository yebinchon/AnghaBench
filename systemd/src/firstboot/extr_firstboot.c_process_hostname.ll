; ModuleID = '/home/carl/AnghaBench/systemd/src/firstboot/extr_firstboot.c_process_hostname.c'
source_filename = "/home/carl/AnghaBench/systemd/src/firstboot/extr_firstboot.c_process_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/etc/hostname\00", align 1
@F_OK = common dso_local global i32 0, align 4
@arg_hostname = common dso_local global i32 0, align 4
@WRITE_STRING_FILE_CREATE = common dso_local global i32 0, align 4
@WRITE_STRING_FILE_SYNC = common dso_local global i32 0, align 4
@WRITE_STRING_FILE_MKDIR_0755 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to write %s: %m\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s written.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @process_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_hostname() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @arg_root, align 4
  %5 = call i8* @prefix_roota(i32 %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @F_OK, align 4
  %8 = call i64 @laccess(i8* %6, i32 %7)
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %40

11:                                               ; preds = %0
  %12 = call i32 (...) @prompt_hostname()
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %1, align 4
  br label %40

17:                                               ; preds = %11
  %18 = load i32, i32* @arg_hostname, align 4
  %19 = call i64 @isempty(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %40

22:                                               ; preds = %17
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* @arg_hostname, align 4
  %25 = load i32, i32* @WRITE_STRING_FILE_CREATE, align 4
  %26 = load i32, i32* @WRITE_STRING_FILE_SYNC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WRITE_STRING_FILE_MKDIR_0755, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @write_string_file(i8* %23, i32 %24, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @log_error_errno(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 %36, i32* %1, align 4
  br label %40

37:                                               ; preds = %22
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @log_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %37, %33, %21, %15, %10
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i8* @prefix_roota(i32, i8*) #1

declare dso_local i64 @laccess(i8*, i32) #1

declare dso_local i32 @prompt_hostname(...) #1

declare dso_local i64 @isempty(i32) #1

declare dso_local i32 @write_string_file(i8*, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @log_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
