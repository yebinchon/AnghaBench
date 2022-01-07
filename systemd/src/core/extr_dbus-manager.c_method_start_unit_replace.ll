; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_start_unit_replace.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_start_unit_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@JOB_START = common dso_local global i64 0, align 8
@BUS_ERROR_NO_SUCH_JOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"No job queued for unit %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @method_start_unit_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_start_unit_replace(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @sd_bus_message_read(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @bus_get_unit_by_name(i32* %25, i32* %26, i8* %27, %struct.TYPE_5__** %10, i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %58

34:                                               ; preds = %24
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @JOB_START, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39, %34
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @BUS_ERROR_NO_SUCH_JOB, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @sd_bus_error_setf(i32* %48, i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %4, align 4
  br label %58

52:                                               ; preds = %39
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* @JOB_START, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @method_start_unit_generic(i32* %53, i32* %54, i64 %55, i32 0, i32* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %47, %32, %22
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i32 @bus_get_unit_by_name(i32*, i32*, i8*, %struct.TYPE_5__**, i32*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @method_start_unit_generic(i32*, i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
