; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin.c_udev_builtin_list.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin.c_udev_builtin_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@_UDEV_BUILTIN_MAX = common dso_local global i32 0, align 4
@builtins = common dso_local global %struct.TYPE_2__** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"  %-14s  %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udev_builtin_list() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %31, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @_UDEV_BUILTIN_MAX, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  %7 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @builtins, align 8
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %7, i64 %9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = load i32, i32* @stderr, align 4
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @builtins, align 8
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @builtins, align 8
  %23 = load i32, i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %28)
  br label %30

30:                                               ; preds = %13, %6
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %1, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %2

34:                                               ; preds = %2
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
