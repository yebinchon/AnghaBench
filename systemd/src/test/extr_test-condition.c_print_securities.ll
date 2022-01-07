; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_print_securities.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_print_securities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"------ enabled security technologies ------\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SELinux: %s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"AppArmor: %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Tomoyo: %s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"IMA: %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"SMACK: %s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Audit: %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"UEFI secure boot: %s\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_securities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_securities() #0 {
  %1 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @mac_selinux_use()
  %3 = call i32 @yes_no(i32 %2)
  %4 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = call i32 (...) @mac_apparmor_use()
  %6 = call i32 @yes_no(i32 %5)
  %7 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  %8 = call i32 (...) @mac_tomoyo_use()
  %9 = call i32 @yes_no(i32 %8)
  %10 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  %11 = call i32 (...) @use_ima()
  %12 = call i32 @yes_no(i32 %11)
  %13 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  %14 = call i32 (...) @mac_smack_use()
  %15 = call i32 @yes_no(i32 %14)
  %16 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %15)
  %17 = call i32 (...) @use_audit()
  %18 = call i32 @yes_no(i32 %17)
  %19 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = call i32 (...) @is_efi_secure_boot()
  %21 = call i32 @yes_no(i32 %20)
  %22 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %21)
  %23 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @log_info(i8*, ...) #1

declare dso_local i32 @yes_no(i32) #1

declare dso_local i32 @mac_selinux_use(...) #1

declare dso_local i32 @mac_apparmor_use(...) #1

declare dso_local i32 @mac_tomoyo_use(...) #1

declare dso_local i32 @use_ima(...) #1

declare dso_local i32 @mac_smack_use(...) #1

declare dso_local i32 @use_audit(...) #1

declare dso_local i32 @is_efi_secure_boot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
