; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_snlua.c_launch_cb.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_snlua.c_launch_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }
%struct.snlua = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skynet_context*, i8*, i32, i32, i32, i8*, i64)* @launch_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @launch_cb(%struct.skynet_context* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.skynet_context*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.snlua*, align 8
  %16 = alloca i32, align 4
  store %struct.skynet_context* %0, %struct.skynet_context** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi i1 [ false, %7 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to %struct.snlua*
  store %struct.snlua* %27, %struct.snlua** %15, align 8
  %28 = load %struct.skynet_context*, %struct.skynet_context** %8, align 8
  %29 = call i32 @skynet_callback(%struct.skynet_context* %28, i32* null, i32* null)
  %30 = load %struct.snlua*, %struct.snlua** %15, align 8
  %31 = load %struct.skynet_context*, %struct.skynet_context** %8, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @init_cb(%struct.snlua* %30, %struct.skynet_context* %31, i8* %32, i64 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load %struct.skynet_context*, %struct.skynet_context** %8, align 8
  %39 = call i32 @skynet_command(%struct.skynet_context* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %40

40:                                               ; preds = %37, %22
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @skynet_callback(%struct.skynet_context*, i32*, i32*) #1

declare dso_local i32 @init_cb(%struct.snlua*, %struct.skynet_context*, i8*, i64) #1

declare dso_local i32 @skynet_command(%struct.skynet_context*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
