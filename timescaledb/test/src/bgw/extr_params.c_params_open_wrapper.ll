; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_params.c_params_open_wrapper.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_params.c_params_open_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"got NULL segment in params_open_wrapper\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @params_open_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @params_open_wrapper() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32 (...) @params_get_dsm_handle()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32* @dsm_find_mapping(i32 %5)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = call i32* @dsm_attach(i32 %10)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %9
  br label %18

18:                                               ; preds = %17, %0
  %19 = load i32*, i32** %1, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32* @dsm_segment_address(i32* %23)
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32*, i32** %3, align 8
  ret i32* %29
}

declare dso_local i32 @params_get_dsm_handle(...) #1

declare dso_local i32* @dsm_find_mapping(i32) #1

declare dso_local i32* @dsm_attach(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @dsm_segment_address(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
