; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_main.c_sigign.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_main.c_sigign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sigign() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = load i32, i32* @SIG_IGN, align 4
  %3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  store i32 %2, i32* %3, align 8
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  %6 = call i32 @sigemptyset(i32* %5)
  %7 = load i32, i32* @SIGPIPE, align 4
  %8 = call i32 @sigaction(i32 %7, %struct.sigaction* %1, i32 0)
  ret i32 0
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
