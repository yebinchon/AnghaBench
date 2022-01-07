; ModuleID = '/home/carl/AnghaBench/systemd/src/firstboot/extr_firstboot.c_process_machine_id.c'
source_filename = "/home/carl/AnghaBench/systemd/src/firstboot/extr_firstboot.c_process_machine_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_ID128_STRING_MAX = common dso_local global i32 0, align 4
@arg_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/etc/machine-id\00", align 1
@F_OK = common dso_local global i32 0, align 4
@arg_machine_id = common dso_local global i32 0, align 4
@WRITE_STRING_FILE_CREATE = common dso_local global i32 0, align 4
@WRITE_STRING_FILE_SYNC = common dso_local global i32 0, align 4
@WRITE_STRING_FILE_MKDIR_0755 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to write machine id: %m\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s written.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @process_machine_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_machine_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @SD_ID128_STRING_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @arg_root, align 4
  %12 = call i8* @prefix_roota(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* @F_OK, align 4
  %15 = call i64 @laccess(i8* %13, i32 %14)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %41

18:                                               ; preds = %0
  %19 = load i32, i32* @arg_machine_id, align 4
  %20 = call i64 @sd_id128_is_null(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %41

23:                                               ; preds = %18
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* @arg_machine_id, align 4
  %26 = call i32 @sd_id128_to_string(i32 %25, i8* %10)
  %27 = load i32, i32* @WRITE_STRING_FILE_CREATE, align 4
  %28 = load i32, i32* @WRITE_STRING_FILE_SYNC, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WRITE_STRING_FILE_MKDIR_0755, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @write_string_file(i8* %24, i32 %26, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @log_error_errno(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %41

38:                                               ; preds = %23
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @log_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %35, %22, %17
  %42 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @prefix_roota(i32, i8*) #2

declare dso_local i64 @laccess(i8*, i32) #2

declare dso_local i64 @sd_id128_is_null(i32) #2

declare dso_local i32 @write_string_file(i8*, i32, i32) #2

declare dso_local i32 @sd_id128_to_string(i32, i8*) #2

declare dso_local i32 @log_error_errno(i32, i8*) #2

declare dso_local i32 @log_info(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
