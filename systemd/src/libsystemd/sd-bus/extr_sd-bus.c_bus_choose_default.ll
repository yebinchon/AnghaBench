; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_sd-bus.c_bus_choose_default.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_sd-bus.c_bus_choose_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"DBUS_STARTER_BUS_TYPE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@default_system_bus = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"session\00", align 1
@default_user_bus = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"DBUS_STARTER_ADDRESS\00", align 1
@default_starter_bus = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (i32 (i32**)**)* @bus_choose_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @bus_choose_default(i32 (i32**)** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32 (i32**)**, align 8
  %4 = alloca i8*, align 8
  store i32 (i32**)** %0, i32 (i32**)*** %3, align 8
  %5 = call i8* @secure_getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @streq(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32 (i32**)**, i32 (i32**)*** %3, align 8
  %14 = icmp ne i32 (i32**)** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32 (i32**)**, i32 (i32**)*** %3, align 8
  store i32 (i32**)* @sd_bus_open_system, i32 (i32**)** %16, align 8
  br label %17

17:                                               ; preds = %15, %12
  store i32** @default_system_bus, i32*** %2, align 8
  br label %55

18:                                               ; preds = %8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @STR_IN_SET(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32 (i32**)**, i32 (i32**)*** %3, align 8
  %24 = icmp ne i32 (i32**)** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32 (i32**)**, i32 (i32**)*** %3, align 8
  store i32 (i32**)* @sd_bus_open_user, i32 (i32**)** %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  store i32** @default_user_bus, i32*** %2, align 8
  br label %55

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29, %1
  %31 = call i8* @secure_getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32 (i32**)**, i32 (i32**)*** %3, align 8
  %36 = icmp ne i32 (i32**)** %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32 (i32**)**, i32 (i32**)*** %3, align 8
  store i32 (i32**)* @sd_bus_open, i32 (i32**)** %38, align 8
  br label %39

39:                                               ; preds = %37, %34
  store i32** @default_starter_bus, i32*** %2, align 8
  br label %55

40:                                               ; preds = %30
  %41 = call i64 @cg_pid_get_owner_uid(i32 0, i32* null)
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32 (i32**)**, i32 (i32**)*** %3, align 8
  %45 = icmp ne i32 (i32**)** %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32 (i32**)**, i32 (i32**)*** %3, align 8
  store i32 (i32**)* @sd_bus_open_user, i32 (i32**)** %47, align 8
  br label %48

48:                                               ; preds = %46, %43
  store i32** @default_user_bus, i32*** %2, align 8
  br label %55

49:                                               ; preds = %40
  %50 = load i32 (i32**)**, i32 (i32**)*** %3, align 8
  %51 = icmp ne i32 (i32**)** %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32 (i32**)**, i32 (i32**)*** %3, align 8
  store i32 (i32**)* @sd_bus_open_system, i32 (i32**)** %53, align 8
  br label %54

54:                                               ; preds = %52, %49
  store i32** @default_system_bus, i32*** %2, align 8
  br label %55

55:                                               ; preds = %54, %48, %39, %27, %17
  %56 = load i32**, i32*** %2, align 8
  ret i32** %56
}

declare dso_local i8* @secure_getenv(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @sd_bus_open_system(i32**) #1

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i32 @sd_bus_open_user(i32**) #1

declare dso_local i32 @sd_bus_open(i32**) #1

declare dso_local i64 @cg_pid_get_owner_uid(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
