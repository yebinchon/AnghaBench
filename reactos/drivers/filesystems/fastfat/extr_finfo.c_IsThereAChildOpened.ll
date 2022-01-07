; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_IsThereAChildOpened.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_IsThereAChildOpened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@VFATFCB = common dso_local global i32 0, align 4
@ParentListEntry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"At least one children file opened! %wZ (%u, %u)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @IsThereAChildOpened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IsThereAChildOpened(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %4, align 8
  br label %10

10:                                               ; preds = %59, %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = icmp ne %struct.TYPE_9__* %11, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %10
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = load i32, i32* @VFATFCB, align 4
  %18 = load i32, i32* @ParentListEntry, align 4
  %19 = call %struct.TYPE_8__* @CONTAINING_RECORD(%struct.TYPE_9__* %16, i32 %17, i32 %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %15
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = icmp eq %struct.TYPE_8__* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* %33, i32 %36, i64 %39)
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %2, align 8
  br label %65

42:                                               ; preds = %15
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = call i64 @vfatFCBIsDirectory(%struct.TYPE_8__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = call i32 @IsListEmpty(%struct.TYPE_9__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = call i64 @IsThereAChildOpened(%struct.TYPE_8__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* %2, align 8
  br label %65

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %46, %42
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %4, align 8
  br label %10

63:                                               ; preds = %10
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %2, align 8
  br label %65

65:                                               ; preds = %63, %55, %24
  %66 = load i64, i64* %2, align 8
  ret i64 %66
}

declare dso_local %struct.TYPE_8__* @CONTAINING_RECORD(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32*, i32, i64) #1

declare dso_local i64 @vfatFCBIsDirectory(%struct.TYPE_8__*) #1

declare dso_local i32 @IsListEmpty(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
