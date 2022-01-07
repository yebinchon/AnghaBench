; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_sigbus.c_sigbus_install.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_sigbus.c_sigbus_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@sigbus_handler = common dso_local global i32 0, align 4
@n_installed = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@old_sigaction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigbus_install() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  %3 = load i32, i32* @SA_SIGINFO, align 4
  store i32 %3, i32* %2, align 4
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %5 = load i32, i32* @sigbus_handler, align 4
  store i32 %5, i32* %4, align 4
  %6 = call i32 (...) @page_size()
  %7 = load i32, i32* @n_installed, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @n_installed, align 4
  %9 = load i32, i32* @n_installed, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %0
  %12 = load i32, i32* @SIGBUS, align 4
  %13 = call i64 @sigaction(i32 %12, %struct.sigaction* %1, i32* @old_sigaction)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  br label %17

17:                                               ; preds = %11, %0
  ret void
}

declare dso_local i32 @page_size(...) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
