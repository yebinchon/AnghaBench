; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/uptime/extr_uptime.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/uptime/extr_uptime.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"System Up Time:\09\09%I64u days, %I64u Hours, %I64u Minutes, %.2I64u Seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = call i32 @GetLocalTime(%struct.TYPE_6__* %6)
  %15 = call i64 @QueryPerformanceCounter(%struct.TYPE_7__* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = call i64 @QueryPerformanceFrequency(%struct.TYPE_7__* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %22, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sdiv i32 %26, 86400
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = srem i32 %28, 86400
  %30 = sdiv i32 %29, 3600
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = srem i32 %31, 86400
  %33 = srem i32 %32, 3600
  %34 = sdiv i32 %33, 60
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %9, align 4
  %36 = srem i32 %35, 86400
  %37 = srem i32 %36, 3600
  %38 = srem i32 %37, 60
  store i32 %38, i32* %13, align 4
  %39 = call i32 @_T(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (i32, i32, i32, ...) @_tprintf(i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %17, %2
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @GetLocalTime(%struct.TYPE_6__*) #1

declare dso_local i64 @QueryPerformanceCounter(%struct.TYPE_7__*) #1

declare dso_local i64 @QueryPerformanceFrequency(%struct.TYPE_7__*) #1

declare dso_local i32 @_tprintf(i32, i32, i32, ...) #1

declare dso_local i32 @_T(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
