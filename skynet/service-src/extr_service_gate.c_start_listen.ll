; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c_start_listen.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c_start_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate = type { i32, %struct.skynet_context* }
%struct.skynet_context = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid gate address %s\00", align 1
@BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gate*, i8*)* @start_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_listen(%struct.gate* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gate*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.skynet_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.gate* %0, %struct.gate** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.gate*, %struct.gate** %4, align 8
  %11 = getelementptr inbounds %struct.gate, %struct.gate* %10, i32 0, i32 1
  %12 = load %struct.skynet_context*, %struct.skynet_context** %11, align 8
  store %struct.skynet_context* %12, %struct.skynet_context** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 58)
  store i8* %14, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strtol(i8* %18, i32* null, i32 10)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @skynet_error(%struct.skynet_context* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 1, i32* %3, align 4
  br label %60

26:                                               ; preds = %17
  br label %41

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i32 @strtol(i8* %29, i32* null, i32 10)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @skynet_error(%struct.skynet_context* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 1, i32* %3, align 4
  br label %60

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %5, align 8
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %37, %26
  %42 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @BACKLOG, align 4
  %46 = call i32 @skynet_socket_listen(%struct.skynet_context* %42, i8* %43, i32 %44, i32 %45)
  %47 = load %struct.gate*, %struct.gate** %4, align 8
  %48 = getelementptr inbounds %struct.gate, %struct.gate* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.gate*, %struct.gate** %4, align 8
  %50 = getelementptr inbounds %struct.gate, %struct.gate* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %60

54:                                               ; preds = %41
  %55 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %56 = load %struct.gate*, %struct.gate** %4, align 8
  %57 = getelementptr inbounds %struct.gate, %struct.gate* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @skynet_socket_start(%struct.skynet_context* %55, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %53, %33, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i8*) #1

declare dso_local i32 @skynet_socket_listen(%struct.skynet_context*, i8*, i32, i32) #1

declare dso_local i32 @skynet_socket_start(%struct.skynet_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
