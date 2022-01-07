; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_serialize.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"reload-result\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"n-retry-umount\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"control-pid\00", align 1
@PID_FMT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"control-command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_10__*)* @mount_serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_serialize(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_10__* @MOUNT(i32* %8)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %11 = call i32 @assert(%struct.TYPE_10__* %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_10__* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = call i32 @assert(%struct.TYPE_10__* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mount_state_to_string(i32 %19)
  %21 = call i32 @serialize_item(%struct.TYPE_10__* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mount_result_to_string(i32 %25)
  %27 = call i32 @serialize_item(%struct.TYPE_10__* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mount_result_to_string(i32 %31)
  %33 = call i32 @serialize_item(%struct.TYPE_10__* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @serialize_item_format(%struct.TYPE_10__* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %3
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load i8*, i8** @PID_FMT, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @serialize_item_format(%struct.TYPE_10__* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %45, i64 %48)
  br label %50

50:                                               ; preds = %43, %3
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @mount_exec_command_to_string(i64 %59)
  %61 = call i32 @serialize_item(%struct.TYPE_10__* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %55, %50
  ret i32 0
}

declare dso_local %struct.TYPE_10__* @MOUNT(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @serialize_item(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @mount_state_to_string(i32) #1

declare dso_local i32 @mount_result_to_string(i32) #1

declare dso_local i32 @serialize_item_format(%struct.TYPE_10__*, i8*, i8*, i64) #1

declare dso_local i32 @mount_exec_command_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
