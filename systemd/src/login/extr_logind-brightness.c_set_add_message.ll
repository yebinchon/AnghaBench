; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-brightness.c_set_add_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-brightness.c_set_add_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bus_message_hash_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @set_add_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_add_message(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = call i32 @assert(i32** %7)
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @sd_bus_message_get_expect_reply(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %12
  %20 = load i32**, i32*** %4, align 8
  %21 = call i32 @set_ensure_allocated(i32** %20, i32* @bus_message_hash_ops)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %19
  %27 = load i32**, i32*** %4, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @set_put(i32* %28, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @sd_bus_message_ref(i32* %36)
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %33, %24, %17, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i32 @sd_bus_message_get_expect_reply(i32*) #1

declare dso_local i32 @set_ensure_allocated(i32**, i32*) #1

declare dso_local i32 @set_put(i32*, i32*) #1

declare dso_local i32 @sd_bus_message_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
