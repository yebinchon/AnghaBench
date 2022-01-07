; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_create_msiserver.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_create_msiserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%p %p)\0A\00", align 1
@CLASS_E_NOAGGREGATION = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@Installer_tid = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @create_msiserver(i32* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %8, i8** %9)
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @CLASS_E_NOAGGREGATION, align 8
  store i64 %14, i64* %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = call %struct.TYPE_5__* @msi_alloc(i32 4)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %20, i64* %3, align 8
  br label %38

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = load i32, i32* @Installer_tid, align 4
  %24 = call i64 @init_automation_object(%struct.TYPE_5__* %22, i32 0, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = call i32 @msi_free(%struct.TYPE_5__* %29)
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %3, align 8
  br label %38

32:                                               ; preds = %21
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to i8*
  %36 = load i8**, i8*** %5, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %32, %28, %19, %13
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @TRACE(i8*, i32*, i8**) #1

declare dso_local %struct.TYPE_5__* @msi_alloc(i32) #1

declare dso_local i64 @init_automation_object(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @msi_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
