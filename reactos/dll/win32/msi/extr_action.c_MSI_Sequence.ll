; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_MSI_Sequence.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_MSI_Sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@MSI_Sequence.query = internal constant [60 x i8] c"SELECT * FROM `%s` WHERE `Sequence` > 0 ORDER BY `Sequence`\00", align 16
@.str = private unnamed_addr constant [7 x i8] c"%p %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ITERATE_Actions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MSI_Sequence(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @debugstr_w(i32 %8)
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %7, i32 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @MSI_OpenQuery(i32 %13, %struct.TYPE_8__** %5, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @MSI_Sequence.query, i64 0, i64 0), i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = load i32, i32* @ITERATE_Actions, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = call i64 @MSI_IterateRecords(%struct.TYPE_8__* %20, i32* null, i32 %21, %struct.TYPE_9__* %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @msiobj_release(i32* %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load i64, i64* %6, align 8
  ret i64 %28
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i64 @MSI_OpenQuery(i32, %struct.TYPE_8__**, i8*, i32) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_8__*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
