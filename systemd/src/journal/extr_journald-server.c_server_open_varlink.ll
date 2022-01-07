; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_server_open_varlink.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_server_open_varlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@VARLINK_SERVER_ROOT_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"io.systemd.Journal.Synchronize\00", align 1
@vl_method_synchronize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"io.systemd.Journal.Rotate\00", align 1
@vl_method_rotate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"io.systemd.Journal.FlushToVar\00", align 1
@vl_method_flush_to_var = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"io.systemd.Journal.RelinquishVar\00", align 1
@vl_method_relinquish_var = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"/run/systemd/journal/io.systemd.journal\00", align 1
@SD_EVENT_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @server_open_varlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_open_varlink(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_5__* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* @VARLINK_SERVER_ROOT_ONLY, align 4
  %10 = call i32 @varlink_server_new(i32* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i32 @varlink_server_set_userdata(i32 %18, %struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @vl_method_synchronize, align 4
  %25 = load i32, i32* @vl_method_rotate, align 4
  %26 = load i32, i32* @vl_method_flush_to_var, align 4
  %27 = load i32, i32* @vl_method_relinquish_var, align 4
  %28 = call i32 @varlink_server_bind_method_many(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %56

33:                                               ; preds = %15
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @varlink_server_listen_address(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 384)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %56

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SD_EVENT_PRIORITY_NORMAL, align 4
  %50 = call i32 @varlink_server_attach_event(i32 %45, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %53, %40, %31, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @varlink_server_new(i32*, i32) #1

declare dso_local i32 @varlink_server_set_userdata(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @varlink_server_bind_method_many(i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @varlink_server_listen_address(i32, i8*, i32) #1

declare dso_local i32 @varlink_server_attach_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
