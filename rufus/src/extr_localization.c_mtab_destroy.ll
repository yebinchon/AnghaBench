; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_localization.c_mtab_destroy.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_localization.c_mtab_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_MAX = common dso_local global i64 0, align 8
@MSG_000 = common dso_local global i64 0, align 8
@current_msg_table = common dso_local global i32* null, align 8
@default_msg_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mtab_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtab_destroy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 1, i64* %3, align 8
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @MSG_MAX, align 8
  %7 = load i64, i64* @MSG_000, align 8
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = load i32*, i32** @current_msg_table, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @safe_free(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  %19 = load i32*, i32** @default_msg_table, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @safe_free(i32 %22)
  br label %24

24:                                               ; preds = %18, %10
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %4

28:                                               ; preds = %4
  ret void
}

declare dso_local i32 @safe_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
