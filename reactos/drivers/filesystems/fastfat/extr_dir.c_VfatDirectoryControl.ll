; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_dir.c_VfatDirectoryControl.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_dir.c_VfatDirectoryControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Unexpected minor function %x in VFAT driver\0A\00", align 1
@STATUS_INVALID_DEVICE_REQUEST = common dso_local global i64 0, align 8
@STATUS_PENDING = common dso_local global i64 0, align 8
@IRPCONTEXT_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @VfatDirectoryControl(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %5, i64* %4, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %20 [
    i32 128, label %14
    i32 129, label %17
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = call i64 @DoQuery(%struct.TYPE_10__* %15)
  store i64 %16, i64* %4, align 8
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = call i64 @VfatNotifyChangeDirectory(%struct.TYPE_10__* %18)
  store i64 %19, i64* %4, align 8
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i64, i64* @STATUS_INVALID_DEVICE_REQUEST, align 8
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %20, %17, %14
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @STATUS_PENDING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IRPCONTEXT_COMPLETE, align 4
  %35 = call i64 @BooleanFlagOn(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = call i64 @VfatMarkIrpContextForQueue(%struct.TYPE_10__* %38)
  store i64 %39, i64* %2, align 8
  br label %42

40:                                               ; preds = %30, %26
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i64 @DoQuery(%struct.TYPE_10__*) #1

declare dso_local i64 @VfatNotifyChangeDirectory(%struct.TYPE_10__*) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i64 @BooleanFlagOn(i32, i32) #1

declare dso_local i64 @VfatMarkIrpContextForQueue(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
