; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/fido_id/extr_fuzz-fido-id-desc.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/fido_id/extr_fuzz-fido-id-desc.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SYSTEMD_LOG_LEVEL\00", align 1
@LOG_CRIT = common dso_local global i32 0, align 4
@HID_MAX_DESCRIPTOR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = call i32 @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @LOG_CRIT, align 4
  %10 = call i32 @log_set_max_level(i32 %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @HID_MAX_DESCRIPTOR_SIZE, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %20

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @is_fido_security_token_desc(i32* %17, i64 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @log_set_max_level(i32) #1

declare dso_local i32 @is_fido_security_token_desc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
