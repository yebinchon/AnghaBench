; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspLoadHwBreakpoint.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspLoadHwBreakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [41 x i8] c"GspLoadHwBreakpoint(0x%p, %d, 0x%p, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Setting DR0 to 0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Setting DR1 to 0x%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Setting DR2 to 0x%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Setting DR3 to 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8*, i32, i32)* @GspLoadHwBreakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GspLoadHwBreakpoint(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = bitcast %struct.TYPE_3__* %11 to i8*
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 (i8*, i8*, ...) @DPRINT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13, i8* %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @DR7_GLOBAL_ENABLE(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @DR7_LEN(i32 %19, i32 %20)
  %22 = or i32 %18, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @DR7_TYPE(i32 %23, i32 %24)
  %26 = or i32 %22, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %56 [
    i32 0, label %32
    i32 1, label %38
    i32 2, label %44
    i32 3, label %50
  ]

32:                                               ; preds = %5
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (i8*, i8*, ...) @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  br label %56

38:                                               ; preds = %5
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 (i8*, i8*, ...) @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  br label %56

44:                                               ; preds = %5
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 (i8*, i8*, ...) @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %56

50:                                               ; preds = %5
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 (i8*, i8*, ...) @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %5, %50, %44, %38, %32
  ret void
}

declare dso_local i32 @DPRINT(i8*, i8*, ...) #1

declare dso_local i32 @DR7_GLOBAL_ENABLE(i32) #1

declare dso_local i32 @DR7_LEN(i32, i32) #1

declare dso_local i32 @DR7_TYPE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
