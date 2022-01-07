; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c__cb.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c__cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }
%struct.gate = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Invalid client message from %x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid client id %d from %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skynet_context*, i8*, i32, i32, i32, i8*, i64)* @_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cb(%struct.skynet_context* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.skynet_context*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.gate*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.skynet_context* %0, %struct.skynet_context** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.gate*
  store %struct.gate* %21, %struct.gate** %16, align 8
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %85 [
    i32 128, label %23
    i32 130, label %29
    i32 129, label %78
  ]

23:                                               ; preds = %7
  %24 = load %struct.gate*, %struct.gate** %16, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = load i64, i64* %15, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @_ctrl(%struct.gate* %24, i8* %25, i32 %27)
  br label %85

29:                                               ; preds = %7
  %30 = load i64, i64* %15, align 8
  %31 = icmp ule i64 %30, 4
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 (%struct.skynet_context*, i8*, i32, ...) @skynet_error(%struct.skynet_context* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %85

36:                                               ; preds = %29
  %37 = load i8*, i8** %14, align 8
  %38 = load i64, i64* %15, align 8
  %39 = getelementptr i8, i8* %37, i64 %38
  %40 = getelementptr i8, i8* %39, i64 -4
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %17, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %17, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %44, %48
  %50 = load i32*, i32** %17, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %49, %53
  %55 = load i32*, i32** %17, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 24
  %59 = or i32 %54, %58
  store i32 %59, i32* %18, align 4
  %60 = load %struct.gate*, %struct.gate** %16, align 8
  %61 = getelementptr inbounds %struct.gate, %struct.gate* %60, i32 0, i32 0
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @hashid_lookup(i32* %61, i32 %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %36
  %67 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %68 = load i32, i32* %18, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = sub i64 %70, 4
  %72 = call i32 @skynet_socket_send(%struct.skynet_context* %67, i32 %68, i8* %69, i64 %71)
  store i32 1, i32* %8, align 4
  br label %86

73:                                               ; preds = %36
  %74 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 (%struct.skynet_context*, i8*, i32, ...) @skynet_error(%struct.skynet_context* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  br label %85

78:                                               ; preds = %7
  %79 = load %struct.gate*, %struct.gate** %16, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load i64, i64* %15, align 8
  %82 = sub i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i32 @dispatch_socket_message(%struct.gate* %79, i8* %80, i32 %83)
  br label %85

85:                                               ; preds = %7, %78, %73, %32, %23
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @_ctrl(%struct.gate*, i8*, i32) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i32, ...) #1

declare dso_local i32 @hashid_lookup(i32*, i32) #1

declare dso_local i32 @skynet_socket_send(%struct.skynet_context*, i32, i8*, i64) #1

declare dso_local i32 @dispatch_socket_message(%struct.gate*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
