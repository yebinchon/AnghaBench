; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_signal.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.skynet_context*, i8*)* @cmd_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_signal(%struct.skynet_context* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.skynet_context*, align 8
  %8 = alloca i32, align 4
  store %struct.skynet_context* %0, %struct.skynet_context** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @tohandle(%struct.skynet_context* %9, i8* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %40

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.skynet_context* @skynet_handle_grab(i64 %16)
  store %struct.skynet_context* %17, %struct.skynet_context** %7, align 8
  %18 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %19 = icmp eq %struct.skynet_context* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %40

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 32)
  store i8* %23, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strtol(i8* %27, i32* null, i32 0)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %31 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %34 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @skynet_module_instance_signal(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %39 = call i32 @skynet_context_release(%struct.skynet_context* %38)
  store i8* null, i8** %3, align 8
  br label %40

40:                                               ; preds = %29, %20, %14
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i64 @tohandle(%struct.skynet_context*, i8*) #1

declare dso_local %struct.skynet_context* @skynet_handle_grab(i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @skynet_module_instance_signal(i32, i32, i32) #1

declare dso_local i32 @skynet_context_release(%struct.skynet_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
