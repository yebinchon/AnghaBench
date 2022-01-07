; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_fileio-label.c_create_shutdown_run_nologin_or_warn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_fileio-label.c_create_shutdown_run_nologin_or_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/run/nologin\00", align 1
@.str.1 = private unnamed_addr constant [121 x i8] c"System is going down. Unprivileged users are not permitted to log in anymore. For technical details, see pam_nologin(8).\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to create /run/nologin: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_shutdown_run_nologin_or_warn() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @write_string_file_atomic_label(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0))
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @log_error_errno(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 %8, i32* %1, align 4
  br label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i32 @write_string_file_atomic_label(i8*, i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
