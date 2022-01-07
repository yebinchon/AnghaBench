; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_take_keyboard.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_take_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.timespec = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@xcb = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Connection has error\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@XCB_CURRENT_TIME = common dso_local global i32 0, align 4
@XCB_GRAB_MODE_ASYNC = common dso_local global i32 0, align 4
@XCB_GRAB_STATUS_SUCCESS = common dso_local global i64 0, align 8
@__const.take_keyboard.del = private unnamed_addr constant %struct.timespec { i32 1000000, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @take_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @take_keyboard(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.timespec, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %57, %2
  %11 = load i64, i64* @TRUE, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %10
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @xcb_connection_has_error(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = call i32 @g_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = call i32 @exit(i32 %21) #4
  unreachable

23:                                               ; preds = %13
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @XCB_CURRENT_TIME, align 4
  %29 = load i32, i32* @XCB_GRAB_MODE_ASYNC, align 4
  %30 = load i32, i32* @XCB_GRAB_MODE_ASYNC, align 4
  %31 = call i32 @xcb_grab_keyboard(i32 %26, i32 1, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.TYPE_5__* @xcb_grab_keyboard_reply(i32 %34, i32 %35, i32* null)
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %8, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %23
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @XCB_GRAB_STATUS_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = call i32 @free(%struct.TYPE_5__* %46)
  store i32 1, i32* %3, align 4
  br label %61

48:                                               ; preds = %39
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = call i32 @free(%struct.TYPE_5__* %49)
  br label %51

51:                                               ; preds = %48, %23
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %60

57:                                               ; preds = %51
  %58 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 bitcast (%struct.timespec* @__const.take_keyboard.del to i8*), i64 8, i1 false)
  %59 = call i32 @nanosleep(%struct.timespec* %9, i32* null)
  br label %10

60:                                               ; preds = %56, %10
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @xcb_connection_has_error(i32) #1

declare dso_local i32 @g_warning(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @xcb_grab_keyboard(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @xcb_grab_keyboard_reply(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
