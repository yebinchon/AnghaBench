; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_bt_to_name.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_bt_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boot_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"FreeDOS\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ReactOS\00", align 1
@BT_IMAGE = common dso_local global i32 0, align 4
@img_report = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"KolibriOS\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @bt_to_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bt_to_name() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @boot_type, align 4
  switch i32 %2, label %5 [
    i32 129, label %3
    i32 128, label %4
  ]

3:                                                ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %17

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %17

5:                                                ; preds = %0
  %6 = load i32, i32* @boot_type, align 4
  %7 = load i32, i32* @BT_IMAGE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* @img_report, align 4
  %11 = call i32 @HAS_KOLIBRIOS(i32 %10)
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  store i8* %16, i8** %1, align 8
  br label %17

17:                                               ; preds = %13, %4, %3
  %18 = load i8*, i8** %1, align 8
  ret i8* %18
}

declare dso_local i32 @HAS_KOLIBRIOS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
