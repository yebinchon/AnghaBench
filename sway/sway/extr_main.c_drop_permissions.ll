; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_main.c_drop_permissions.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_main.c_drop_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to drop root, refusing to start\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Unable to drop root (we shouldn't be able to restore it after setuid), refusing to start\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @drop_permissions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_permissions() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @getuid()
  %3 = call i64 (...) @geteuid()
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = call i64 (...) @getgid()
  %7 = call i64 (...) @getegid()
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5, %0
  %10 = call i64 (...) @getuid()
  %11 = call i32 @setuid(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = call i64 (...) @getgid()
  %15 = call i64 @setgid(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %9
  %18 = load i32, i32* @SWAY_ERROR, align 4
  %19 = call i32 @sway_log(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %28

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %5
  %22 = call i32 @setuid(i64 0)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @SWAY_ERROR, align 4
  %26 = call i32 @sway_log(i32 %25, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %28

27:                                               ; preds = %21
  store i32 1, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %24, %17
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @getgid(...) #1

declare dso_local i64 @getegid(...) #1

declare dso_local i32 @setuid(i64) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i32 @sway_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
