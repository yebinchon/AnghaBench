; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_match_unit_removed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_match_unit_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"so\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_unit_removed(%struct.TYPE_6__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = call i32 @assert(%struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = call i32 @assert(%struct.TYPE_6__* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i32 @sd_bus_message_read(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, i8** %8)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @bus_log_parse_error(i32 %25)
  store i32 0, i32* %4, align 4
  br label %52

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @hashmap_get(i32 %30, i8* %31)
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @session_add_to_gc_queue(i32* %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i8* @hashmap_get(i32 %42, i8* %43)
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @user_add_to_gc_queue(i32* %49)
  br label %51

51:                                               ; preds = %48, %39
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_6__*, i8*, i8**, i8**) #1

declare dso_local i32 @bus_log_parse_error(i32) #1

declare dso_local i8* @hashmap_get(i32, i8*) #1

declare dso_local i32 @session_add_to_gc_queue(i32*) #1

declare dso_local i32 @user_add_to_gc_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
