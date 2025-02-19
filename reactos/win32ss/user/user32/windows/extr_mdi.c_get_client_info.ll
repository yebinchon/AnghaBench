; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_get_client_info.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_get_client_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@WND_OTHER_PROCESS = common dso_local global %struct.TYPE_6__* null, align 8
@WND_DESKTOP = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"client %p belongs to other process\0A\00", align 1
@WIN_ISMDICLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%p is not an MDI client\0A\00", align 1
@GWLP_MDIWND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @get_client_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_client_info(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_6__* @WIN_GetPtr(i32 %6)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WND_OTHER_PROCESS, align 8
  %13 = icmp eq %struct.TYPE_6__* %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WND_DESKTOP, align 8
  %17 = icmp eq %struct.TYPE_6__* %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @IsWindow(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  store i32* null, i32** %2, align 8
  br label %46

26:                                               ; preds = %14
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @WIN_ISMDICLIENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %4, align 8
  br label %41

38:                                               ; preds = %26
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = call i32 @WIN_ReleasePtr(%struct.TYPE_6__* %42)
  br label %44

44:                                               ; preds = %41, %1
  %45 = load i32*, i32** %4, align 8
  store i32* %45, i32** %2, align 8
  br label %46

46:                                               ; preds = %44, %25
  %47 = load i32*, i32** %2, align 8
  ret i32* %47
}

declare dso_local %struct.TYPE_6__* @WIN_GetPtr(i32) #1

declare dso_local i64 @IsWindow(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @WIN_ReleasePtr(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
