; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_enumerate.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i64 }

@MANAGER_TEST_RUN_MINIMAL = common dso_local global i64 0, align 8
@_UNIT_TYPE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Unit type .%s is not supported on this system.\00", align 1
@unit_vtable = common dso_local global %struct.TYPE_8__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @manager_enumerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manager_enumerate(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_7__* %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MANAGER_TEST_RUN_MINIMAL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %49

12:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @_UNIT_TYPE_MAX, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @unit_type_supported(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @unit_type_to_string(i64 %22)
  %24 = call i32 @log_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %43

25:                                               ; preds = %17
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @unit_vtable, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %26, i64 %27
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %30, align 8
  %32 = icmp ne i32 (%struct.TYPE_7__*)* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @unit_vtable, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %34, i64 %35
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = call i32 %39(%struct.TYPE_7__* %40)
  br label %42

42:                                               ; preds = %33, %25
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %13

46:                                               ; preds = %13
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = call i32 @manager_dispatch_load_queue(%struct.TYPE_7__* %47)
  br label %49

49:                                               ; preds = %46, %11
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @unit_type_supported(i64) #1

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @unit_type_to_string(i64) #1

declare dso_local i32 @manager_dispatch_load_queue(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
