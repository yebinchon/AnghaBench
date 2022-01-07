; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_event_end_dialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_event_end_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }

@event_end_dialog.exitW = internal constant [5 x i8] c"Exit\00", align 1
@event_end_dialog.retryW = internal constant [6 x i8] c"Retry\00", align 1
@event_end_dialog.ignoreW = internal constant [7 x i8] c"Ignore\00", align 1
@event_end_dialog.returnW = internal constant [7 x i8] c"Return\00", align 1
@IDCANCEL = common dso_local global i64 0, align 8
@IDRETRY = common dso_local global i64 0, align 8
@IDOK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unknown argument string %s\0A\00", align 1
@IDABORT = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @event_end_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_end_dialog(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @strcmpW(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @event_end_dialog.exitW, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @IDCANCEL, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i64 %9, i64* %11, align 8
  br label %45

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strcmpW(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @event_end_dialog.retryW, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @IDRETRY, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  br label %44

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strcmpW(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @event_end_dialog.ignoreW, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @IDOK, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  br label %43

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strcmpW(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @event_end_dialog.returnW, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  br label %42

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @debugstr_w(i8* %36)
  %38 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* @IDABORT, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %32
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %16
  br label %45

45:                                               ; preds = %44, %8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @event_cleanup_subscriptions(i32 %48, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = call i32 @msi_dialog_end_dialog(%struct.TYPE_4__* %53)
  %55 = load i32, i32* @ERROR_SUCCESS, align 4
  ret i32 %55
}

declare dso_local i32 @strcmpW(i8*, i8*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @event_cleanup_subscriptions(i32, i32) #1

declare dso_local i32 @msi_dialog_end_dialog(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
