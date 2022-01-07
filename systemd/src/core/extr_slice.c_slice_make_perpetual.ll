; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_slice.c_slice_make_perpetual.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_slice.c_slice_make_perpetual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate the special %s unit: %m\00", align 1
@SLICE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_9__**)* @slice_make_perpetual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_make_perpetual(i8* %0, i8* %1, %struct.TYPE_9__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.TYPE_9__* @manager_get_unit(i8* %14, i8* %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @unit_new_for_name(i8* %20, i32 4, i8* %21, %struct.TYPE_9__** %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @log_error_errno(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 %28, i32* %4, align 4
  br label %47

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @SLICE_ACTIVE, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = call %struct.TYPE_10__* @SLICE(%struct.TYPE_9__* %34)
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = call i32 @unit_add_to_load_queue(%struct.TYPE_9__* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = call i32 @unit_add_to_dbus_queue(%struct.TYPE_9__* %39)
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %42 = icmp ne %struct.TYPE_9__** %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %45, align 8
  br label %46

46:                                               ; preds = %43, %30
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i8*) #1

declare dso_local %struct.TYPE_9__* @manager_get_unit(i8*, i8*) #1

declare dso_local i32 @unit_new_for_name(i8*, i32, i8*, %struct.TYPE_9__**) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @SLICE(%struct.TYPE_9__*) #1

declare dso_local i32 @unit_add_to_load_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @unit_add_to_dbus_queue(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
