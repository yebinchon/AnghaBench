; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/loader/extr_main.c_dobreak.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/loader/extr_main.c_dobreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@debugger_file = common dso_local global i32 0, align 4
@PICE_IOCTL_BREAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dobreak() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @open_debugger()
  %3 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @debugger_file, align 4
  %7 = load i32, i32* @PICE_IOCTL_BREAK, align 4
  %8 = call i32 @ioctl(i32 %6, i32 %7, i32* null)
  store i32 %8, i32* %1, align 4
  %9 = call i32 (...) @close_debugger()
  br label %10

10:                                               ; preds = %5, %0
  ret void
}

declare dso_local i64 @open_debugger(...) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close_debugger(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
