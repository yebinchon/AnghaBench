; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-verify.c_verify_socket.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-verify.c_verify_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }

@UNIT_SOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Socket cannot be started, failed to create instance: %m\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Using %s\00", align 1
@UNIT_LOADED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Service %s not loaded, %s cannot be started.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @verify_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_socket(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_11__* %6)
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UNIT_SOCKET, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = call %struct.TYPE_12__* @SOCKET(%struct.TYPE_11__* %15)
  %17 = call i32 @socket_instantiate_service(%struct.TYPE_12__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @log_unit_error_errno(%struct.TYPE_11__* %21, i32 %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  br label %64

24:                                               ; preds = %14
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call %struct.TYPE_12__* @SOCKET(%struct.TYPE_11__* %25)
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @UNIT_ISSET(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = call %struct.TYPE_12__* @SOCKET(%struct.TYPE_11__* %32)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @UNIT_DEREF(i32 %35)
  %37 = call i32* @SERVICE(i32 %36)
  store i32* %37, i32** %5, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call %struct.TYPE_13__* @UNIT(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @log_unit_debug(%struct.TYPE_11__* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call %struct.TYPE_13__* @UNIT(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UNIT_LOADED, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %31
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call %struct.TYPE_13__* @UNIT(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @log_unit_error(%struct.TYPE_11__* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %31
  br label %63

63:                                               ; preds = %62, %24
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %50, %20, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @socket_instantiate_service(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @SOCKET(%struct.TYPE_11__*) #1

declare dso_local i32 @log_unit_error_errno(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i64 @UNIT_ISSET(i32) #1

declare dso_local i32* @SERVICE(i32) #1

declare dso_local i32 @UNIT_DEREF(i32) #1

declare dso_local i32 @log_unit_debug(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @UNIT(i32*) #1

declare dso_local i32 @log_unit_error(%struct.TYPE_11__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
