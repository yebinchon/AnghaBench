; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_deserialize_one_unit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_deserialize_one_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to load unit \22%s\22, skipping deserialization: %m\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to deserialize unit \22%s\22, skipping: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*)* @manager_deserialize_one_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_deserialize_one_unit(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @manager_load_unit(i32* %12, i8* %13, i32* null, i32* null, i32** %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %47

24:                                               ; preds = %17
  %25 = load i32, i32* %11, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @log_notice_errno(i32 %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 %27, i32* %5, align 4
  br label %47

28:                                               ; preds = %4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @unit_deserialize(i32* %29, i32* %30, i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %47

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @log_notice_errno(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %42, %40, %24, %22
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @manager_load_unit(i32*, i8*, i32*, i32*, i32**) #1

declare dso_local i32 @log_notice_errno(i32, i8*, i8*) #1

declare dso_local i32 @unit_deserialize(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
