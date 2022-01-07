; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_loginctl.c_prop_map_sessions_strv.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_loginctl.c_prop_map_sessions_strv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"(so)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i8*)* @prop_map_sessions_strv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_map_sessions_strv(i32* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @sd_bus_message_enter_container(i32* %18, i8 signext 97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %46

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @sd_bus_message_read(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, i32* null)
  store i32 %27, i32* %13, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @strv_extend(i8* %30, i8* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %6, align 4
  br label %46

37:                                               ; preds = %29
  br label %25

38:                                               ; preds = %25
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @sd_bus_message_exit_container(i32* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %41, %35, %22
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_enter_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**, i32*) #1

declare dso_local i32 @strv_extend(i8*, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
