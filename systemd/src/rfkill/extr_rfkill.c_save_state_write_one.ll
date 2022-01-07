; ModuleID = '/home/carl/AnghaBench/systemd/src/rfkill/extr_rfkill.c_save_state_write_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/rfkill/extr_rfkill.c_save_state_write_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_queue_item = type { i32, i32 }

@WRITE_STRING_FILE_CREATE = common dso_local global i32 0, align 4
@WRITE_STRING_FILE_ATOMIC = common dso_local global i32 0, align 4
@WRITE_STRING_FILE_MKDIR_0755 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to write state file %s: %m\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Saved state '%s' to %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.write_queue_item*)* @save_state_write_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_state_write_one(%struct.write_queue_item* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.write_queue_item*, align 8
  %4 = alloca i32, align 4
  store %struct.write_queue_item* %0, %struct.write_queue_item** %3, align 8
  %5 = load %struct.write_queue_item*, %struct.write_queue_item** %3, align 8
  %6 = getelementptr inbounds %struct.write_queue_item, %struct.write_queue_item* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.write_queue_item*, %struct.write_queue_item** %3, align 8
  %9 = getelementptr inbounds %struct.write_queue_item, %struct.write_queue_item* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @one_zero(i32 %10)
  %12 = load i32, i32* @WRITE_STRING_FILE_CREATE, align 4
  %13 = load i32, i32* @WRITE_STRING_FILE_ATOMIC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WRITE_STRING_FILE_MKDIR_0755, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @write_string_file(i32 %7, i32 %11, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.write_queue_item*, %struct.write_queue_item** %3, align 8
  %23 = getelementptr inbounds %struct.write_queue_item, %struct.write_queue_item* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @log_error_errno(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %2, align 4
  br label %35

26:                                               ; preds = %1
  %27 = load %struct.write_queue_item*, %struct.write_queue_item** %3, align 8
  %28 = getelementptr inbounds %struct.write_queue_item, %struct.write_queue_item* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @one_zero(i32 %29)
  %31 = load %struct.write_queue_item*, %struct.write_queue_item** %3, align 8
  %32 = getelementptr inbounds %struct.write_queue_item, %struct.write_queue_item* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %26, %20
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @write_string_file(i32, i32, i32) #1

declare dso_local i32 @one_zero(i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i32) #1

declare dso_local i32 @log_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
