; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_map_listen.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_map_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_BUS_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"(ss)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i8*)* @map_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_listen(i32* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8***, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to i8***
  store i8*** %17, i8**** %14, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* @SD_BUS_TYPE_ARRAY, align 4
  %20 = call i32 @sd_bus_message_enter_container(i32* %18, i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %6, align 4
  br label %60

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @sd_bus_message_read(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, i8** %13)
  store i32 %28, i32* %15, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i8***, i8**** %14, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @strv_extend(i8*** %31, i8* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %6, align 4
  br label %60

38:                                               ; preds = %30
  %39 = load i8***, i8**** %14, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @strv_extend(i8*** %39, i8* %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %6, align 4
  br label %60

46:                                               ; preds = %38
  br label %26

47:                                               ; preds = %26
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %6, align 4
  br label %60

52:                                               ; preds = %47
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @sd_bus_message_exit_container(i32* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %6, align 4
  br label %60

59:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %57, %50, %44, %36, %23
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @sd_bus_message_enter_container(i32*, i32, i8*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**, i8**) #1

declare dso_local i32 @strv_extend(i8***, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
