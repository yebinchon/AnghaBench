; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_harbor_init.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_harbor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor = type { i32, i64, %struct.skynet_context* }
%struct.skynet_context = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%d %u\00", align 1
@mainloop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @harbor_init(%struct.harbor* %0, %struct.skynet_context* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.harbor*, align 8
  %6 = alloca %struct.skynet_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.harbor* %0, %struct.harbor** %5, align 8
  store %struct.skynet_context* %1, %struct.skynet_context** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %11 = load %struct.harbor*, %struct.harbor** %5, align 8
  %12 = getelementptr inbounds %struct.harbor, %struct.harbor* %11, i32 0, i32 2
  store %struct.skynet_context* %10, %struct.skynet_context** %12, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %8, i64* %9)
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.harbor*, %struct.harbor** %5, align 8
  %21 = getelementptr inbounds %struct.harbor, %struct.harbor* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.harbor*, %struct.harbor** %5, align 8
  %24 = getelementptr inbounds %struct.harbor, %struct.harbor* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %26 = load %struct.harbor*, %struct.harbor** %5, align 8
  %27 = load i32, i32* @mainloop, align 4
  %28 = call i32 @skynet_callback(%struct.skynet_context* %25, %struct.harbor* %26, i32 %27)
  %29 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %30 = call i32 @skynet_harbor_start(%struct.skynet_context* %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %18, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i64*) #1

declare dso_local i32 @skynet_callback(%struct.skynet_context*, %struct.harbor*, i32) #1

declare dso_local i32 @skynet_harbor_start(%struct.skynet_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
