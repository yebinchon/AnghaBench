; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-acd.c_acd_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-acd.c_acd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"bound\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"conflict\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"the client was stopped\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid ACD event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @acd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acd_handler(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @assert_se(i32* %7)
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %16 [
    i32 130, label %10
    i32 129, label %12
    i32 128, label %14
  ]

10:                                               ; preds = %3
  %11 = call i32 @log_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %18

12:                                               ; preds = %3
  %13 = call i32 @log_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %18

14:                                               ; preds = %3
  %15 = call i32 @log_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %18

16:                                               ; preds = %3
  %17 = call i32 @assert_not_reached(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %14, %12, %10
  ret void
}

declare dso_local i32 @assert_se(i32*) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @log_error(i8*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
