; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_securityWarningCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_securityWarningCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@securityWarningCommand.logged_time = internal global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [234 x i8] c"Possible SECURITY ATTACK detected. It looks like somebody is sending POST or Host: commands to Redis. This is likely due to an attacker attempting to use Cross Protocol Scripting to compromise your Redis instance. Connection aborted.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @securityWarningCommand(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i64 @time(i32* null)
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @securityWarningCommand.logged_time, align 8
  %7 = sub nsw i64 %5, %6
  %8 = call i32 @labs(i64 %7)
  %9 = icmp sgt i32 %8, 60
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @LL_WARNING, align 4
  %12 = call i32 @serverLog(i32 %11, i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %3, align 8
  store i64 %13, i64* @securityWarningCommand.logged_time, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @freeClientAsync(i32* %15)
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @labs(i64) #1

declare dso_local i32 @serverLog(i32, i8*) #1

declare dso_local i32 @freeClientAsync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
