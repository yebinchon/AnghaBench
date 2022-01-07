; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_notify.c_LsapNotifyPolicyChange.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_notify.c_LsapNotifyPolicyChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"LsapNotifyPolicyChange(%lu)\0A\00", align 1
@NotificationListLock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NotificationListHead = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@LSA_NOTIFICATION_ENTRY = common dso_local global i32 0, align 4
@Entry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Notify event %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LsapNotifyPolicyChange(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @RtlAcquireResourceShared(i32* @NotificationListLock, i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @NotificationListHead, i32 0, i32 0), align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  br label %11

11:                                               ; preds = %29, %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, @NotificationListHead
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = load i32, i32* @LSA_NOTIFICATION_ENTRY, align 4
  %17 = load i32, i32* @Entry, align 4
  %18 = call %struct.TYPE_6__* @CONTAINING_RECORD(%struct.TYPE_7__* %15, i32 %16, i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %24, %14
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %4, align 8
  br label %11

33:                                               ; preds = %11
  %34 = call i32 @RtlReleaseResource(i32* @NotificationListLock)
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32 @RtlAcquireResourceShared(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @CONTAINING_RECORD(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @RtlReleaseResource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
