; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_databuffer.h__return_message.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_databuffer.h__return_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.databuffer = type { %struct.message*, %struct.message* }
%struct.message = type { %struct.message*, i64, i32* }
%struct.messagepool = type { %struct.message* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.databuffer*, %struct.messagepool*)* @_return_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_return_message(%struct.databuffer* %0, %struct.messagepool* %1) #0 {
  %3 = alloca %struct.databuffer*, align 8
  %4 = alloca %struct.messagepool*, align 8
  %5 = alloca %struct.message*, align 8
  store %struct.databuffer* %0, %struct.databuffer** %3, align 8
  store %struct.messagepool* %1, %struct.messagepool** %4, align 8
  %6 = load %struct.databuffer*, %struct.databuffer** %3, align 8
  %7 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %6, i32 0, i32 0
  %8 = load %struct.message*, %struct.message** %7, align 8
  store %struct.message* %8, %struct.message** %5, align 8
  %9 = load %struct.message*, %struct.message** %5, align 8
  %10 = getelementptr inbounds %struct.message, %struct.message* %9, i32 0, i32 0
  %11 = load %struct.message*, %struct.message** %10, align 8
  %12 = icmp eq %struct.message* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.databuffer*, %struct.databuffer** %3, align 8
  %15 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %14, i32 0, i32 1
  %16 = load %struct.message*, %struct.message** %15, align 8
  %17 = load %struct.message*, %struct.message** %5, align 8
  %18 = icmp eq %struct.message* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.databuffer*, %struct.databuffer** %3, align 8
  %22 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %21, i32 0, i32 1
  store %struct.message* null, %struct.message** %22, align 8
  %23 = load %struct.databuffer*, %struct.databuffer** %3, align 8
  %24 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %23, i32 0, i32 0
  store %struct.message* null, %struct.message** %24, align 8
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.message*, %struct.message** %5, align 8
  %27 = getelementptr inbounds %struct.message, %struct.message* %26, i32 0, i32 0
  %28 = load %struct.message*, %struct.message** %27, align 8
  %29 = load %struct.databuffer*, %struct.databuffer** %3, align 8
  %30 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %29, i32 0, i32 0
  store %struct.message* %28, %struct.message** %30, align 8
  br label %31

31:                                               ; preds = %25, %13
  %32 = load %struct.message*, %struct.message** %5, align 8
  %33 = getelementptr inbounds %struct.message, %struct.message* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @skynet_free(i32* %34)
  %36 = load %struct.message*, %struct.message** %5, align 8
  %37 = getelementptr inbounds %struct.message, %struct.message* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.message*, %struct.message** %5, align 8
  %39 = getelementptr inbounds %struct.message, %struct.message* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.messagepool*, %struct.messagepool** %4, align 8
  %41 = getelementptr inbounds %struct.messagepool, %struct.messagepool* %40, i32 0, i32 0
  %42 = load %struct.message*, %struct.message** %41, align 8
  %43 = load %struct.message*, %struct.message** %5, align 8
  %44 = getelementptr inbounds %struct.message, %struct.message* %43, i32 0, i32 0
  store %struct.message* %42, %struct.message** %44, align 8
  %45 = load %struct.message*, %struct.message** %5, align 8
  %46 = load %struct.messagepool*, %struct.messagepool** %4, align 8
  %47 = getelementptr inbounds %struct.messagepool, %struct.messagepool* %46, i32 0, i32 0
  store %struct.message* %45, %struct.message** %47, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @skynet_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
