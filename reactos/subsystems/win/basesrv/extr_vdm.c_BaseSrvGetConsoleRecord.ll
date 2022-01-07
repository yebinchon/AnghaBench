; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/win/basesrv/extr_vdm.c_BaseSrvGetConsoleRecord.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/win/basesrv/extr_vdm.c_BaseSrvGetConsoleRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32* }

@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@VDMConsoleListHead = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@VDM_CONSOLE_RECORD = common dso_local global i32 0, align 4
@Entry = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BaseSrvGetConsoleRecord(i32* %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %11, i32* %3, align 4
  br label %48

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @VDMConsoleListHead, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  br label %14

14:                                               ; preds = %29, %12
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, @VDMConsoleListHead
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = load i32, i32* @VDM_CONSOLE_RECORD, align 4
  %20 = load i32, i32* @Entry, align 4
  %21 = call %struct.TYPE_7__* @CONTAINING_RECORD(%struct.TYPE_8__* %18, i32 %19, i32 %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %33

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %6, align 8
  br label %14

33:                                               ; preds = %27, %14
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = icmp eq %struct.TYPE_8__* %34, @VDMConsoleListHead
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @STATUS_SUCCESS, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @STATUS_NOT_FOUND, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_7__* @CONTAINING_RECORD(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
