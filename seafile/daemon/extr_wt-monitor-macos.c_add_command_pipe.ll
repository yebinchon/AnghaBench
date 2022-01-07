; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_add_command_pipe.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_add_command_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32*, i32*, i32*, %struct.TYPE_5__*, i32 }

@command_read_cb = common dso_local global i32 0, align 4
@kCFFileDescriptorReadCallBack = common dso_local global i32 0, align 4
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFRunLoopDefaultMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @add_command_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_command_pipe(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32* null, i32** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = bitcast %struct.TYPE_5__* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i32 0, i32* %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @command_read_cb, align 4
  %20 = call i32* @CFFileDescriptorCreate(i32* null, i32 %18, i32 1, i32 %19, %struct.TYPE_6__* %4)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %37

24:                                               ; preds = %1
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @kCFFileDescriptorReadCallBack, align 4
  %27 = call i32 @CFFileDescriptorEnableCallBacks(i32* %25, i32 %26)
  %28 = load i32, i32* @kCFAllocatorDefault, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @CFFileDescriptorCreateRunLoopSource(i32 %28, i32* %29, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = call i32 (...) @CFRunLoopGetCurrent()
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @kCFRunLoopDefaultMode, align 4
  %34 = call i32 @CFRunLoopAddSource(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @CFRelease(i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %24, %23
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32* @CFFileDescriptorCreate(i32*, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @CFFileDescriptorEnableCallBacks(i32*, i32) #1

declare dso_local i32 @CFFileDescriptorCreateRunLoopSource(i32, i32*, i32) #1

declare dso_local i32 @CFRunLoopAddSource(i32, i32, i32) #1

declare dso_local i32 @CFRunLoopGetCurrent(...) #1

declare dso_local i32 @CFRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
