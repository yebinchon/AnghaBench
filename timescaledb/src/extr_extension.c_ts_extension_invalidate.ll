; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_extension.c_ts_extension_invalidate.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_extension.c_ts_extension_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ts_extension_invalidate.in_recursion = internal global i32 0, align 4
@extstate = common dso_local global i32 0, align 4
@extension_proxy_oid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown state: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_extension_invalidate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @ts_extension_invalidate.in_recursion, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

8:                                                ; preds = %1
  store i32 1, i32* @ts_extension_invalidate.in_recursion, align 4
  %9 = load i32, i32* @extstate, align 4
  switch i32 %9, label %27 [
    i32 130, label %10
    i32 128, label %10
    i32 129, label %10
    i32 131, label %12
  ]

10:                                               ; preds = %8, %8, %8
  %11 = call i32 (...) @extension_update_state()
  br label %31

12:                                               ; preds = %8
  %13 = load i32, i32* @extension_proxy_oid, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @OidIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %12
  %21 = call i32 (...) @extension_update_state()
  %22 = load i32, i32* @extstate, align 4
  %23 = icmp ne i32 131, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %20
  br label %26

26:                                               ; preds = %25, %16
  br label %31

27:                                               ; preds = %8
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @extstate, align 4
  %30 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %26, %10
  store i32 0, i32* @ts_extension_invalidate.in_recursion, align 4
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @extension_update_state(...) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
