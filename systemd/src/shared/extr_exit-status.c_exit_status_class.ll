; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_exit-status.c_exit_status_class.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_exit-status.c_exit_status_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@exit_status_mappings = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"libc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"systemd\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LSB\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"BSD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @exit_status_class(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @exit_status_mappings, align 8
  %10 = call i64 @ELEMENTSOF(%struct.TYPE_3__* %9)
  %11 = icmp uge i64 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %1
  store i8* null, i8** %2, align 8
  br label %25

13:                                               ; preds = %6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @exit_status_mappings, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %24 [
    i32 130, label %20
    i32 128, label %21
    i32 129, label %22
    i32 131, label %23
  ]

20:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %25

21:                                               ; preds = %13
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %25

22:                                               ; preds = %13
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %25

23:                                               ; preds = %13
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %25

24:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %12
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local i64 @ELEMENTSOF(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
