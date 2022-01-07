; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-query.c_ensure_adns_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-query.c_ensure_adns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ads = common dso_local global i64 0, align 8
@adns_if_noautosys = common dso_local global i32 0, align 4
@adns_if_nosigpipe = common dso_local global i32 0, align 4
@ov_verbose = common dso_local global i32 0, align 4
@ov_env = common dso_local global i32 0, align 4
@adns_if_noenv = common dso_local global i32 0, align 4
@config_text = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"adns_init\00", align 1
@ov_format = common dso_local global i64 0, align 8
@fmt_default = common dso_local global i64 0, align 8
@ov_asynch = common dso_local global i64 0, align 8
@fmt_asynch = common dso_local global i64 0, align 8
@fmt_simple = common dso_local global i64 0, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ensure_adns_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @ads, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %48

6:                                                ; preds = %0
  %7 = load i32, i32* @adns_if_noautosys, align 4
  %8 = load i32, i32* @adns_if_nosigpipe, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @ov_verbose, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @ov_env, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = load i32, i32* @adns_if_noenv, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %14, %6
  %19 = load i64, i64* @config_text, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @stderr, align 4
  %24 = load i64, i64* @config_text, align 8
  %25 = call i32 @adns_init_strcfg(i64* @ads, i32 %22, i32 %23, i64 %24)
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @adns_init(i64* @ads, i32 %27, i32 0)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @sysfail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* @ov_format, align 8
  %37 = load i64, i64* @fmt_default, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i64, i64* @ov_asynch, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* @fmt_asynch, align 8
  br label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @fmt_simple, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  store i64 %47, i64* @ov_format, align 8
  br label %48

48:                                               ; preds = %5, %46, %35
  ret void
}

declare dso_local i32 @adns_init_strcfg(i64*, i32, i32, i64) #1

declare dso_local i32 @adns_init(i64*, i32, i32) #1

declare dso_local i32 @sysfail(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
