; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_localization.c_add_message_command.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_localization.c_add_message_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32** }

@.str = private unnamed_addr constant [57 x i8] c"localization: invalid parameter for add_message_command\0A\00", align 1
@MSG_000 = common dso_local global i64 0, align 8
@MSG_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"localization: invalid MSG_ index\0A\00", align 1
@msg_table = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_message_command(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = icmp eq %struct.TYPE_3__* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @uprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %47

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MSG_000, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MSG_MAX, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %7
  %20 = call i32 @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %47

21:                                               ; preds = %13
  %22 = load i32**, i32*** @msg_table, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MSG_000, align 8
  %27 = sub nsw i64 %25, %26
  %28 = getelementptr inbounds i32*, i32** %22, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @safe_free(i32* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32**, i32*** @msg_table, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MSG_000, align 8
  %41 = sub nsw i64 %39, %40
  %42 = getelementptr inbounds i32*, i32** %36, i64 %41
  store i32* %35, i32** %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %21, %19, %5
  ret void
}

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i32 @safe_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
