; ModuleID = '/home/carl/AnghaBench/vlc/bin/extr_vlc.c_signal_ignored.c'
source_filename = "/home/carl/AnghaBench/vlc/bin/extr_vlc.c_signal_ignored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i64 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @signal_ignored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signal_ignored(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @sigaction(i32 %5, i32* null, %struct.sigaction* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SA_SIGINFO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  br label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i8* [ %18, %15 ], [ %22, %19 ]
  %25 = load i8*, i8** @SIG_IGN, align 8
  %26 = icmp eq i8* %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @sigaction(i32, i32*, %struct.sigaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
