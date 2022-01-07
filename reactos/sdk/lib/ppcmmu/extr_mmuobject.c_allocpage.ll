; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_allocpage.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_allocpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i8* }

@FreeList = common dso_local global %struct.TYPE_7__* null, align 8
@PpcPageTable = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Problem! FreeList: page 0 is free\0A\00", align 1
@MMU_ADDR_RESERVED = common dso_local global i8* null, align 8
@NextPage = common dso_local global i32 0, align 4
@RamSize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Problem! NextPage is low (%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @allocpage() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @FreeList, align 8
  %4 = icmp ne %struct.TYPE_7__* %3, null
  br i1 %4, label %5, label %25

5:                                                ; preds = %0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @FreeList, align 8
  %7 = bitcast %struct.TYPE_7__* %6 to i8*
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PpcPageTable, align 8
  %9 = bitcast %struct.TYPE_6__* %8 to i8*
  %10 = icmp eq i8* %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = call i32 (i8*, ...) @fmtout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %13
  br label %13

14:                                               ; preds = %5
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @FreeList, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %2, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @FreeList, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** @FreeList, align 8
  %19 = load i8*, i8** @MMU_ADDR_RESERVED, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = bitcast %struct.TYPE_7__* %20 to %struct.TYPE_6__*
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = bitcast %struct.TYPE_7__* %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %1, align 8
  br label %65

25:                                               ; preds = %0
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* @NextPage, align 4
  %28 = call i32 @mmuisfreepage(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @NextPage, align 4
  %32 = load i32, i32* @RamSize, align 4
  %33 = call i32 @PPC_PAGE_NUMBER(i32 %32)
  %34 = icmp slt i32 %31, %33
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i1 [ false, %26 ], [ %34, %30 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32, i32* @NextPage, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @NextPage, align 4
  br label %26

40:                                               ; preds = %35
  %41 = load i32, i32* @NextPage, align 4
  %42 = load i32, i32* @RamSize, align 4
  %43 = call i32 @PPC_PAGE_NUMBER(i32 %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i32, i32* @NextPage, align 4
  %47 = icmp slt i32 %46, 48
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @NextPage, align 4
  %50 = call i32 (i8*, ...) @fmtout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %51
  br label %51

52:                                               ; preds = %45
  %53 = load i8*, i8** @MMU_ADDR_RESERVED, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PpcPageTable, align 8
  %55 = load i32, i32* @NextPage, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i8* %53, i8** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PpcPageTable, align 8
  %60 = load i32, i32* @NextPage, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @NextPage, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %62
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %1, align 8
  br label %65

64:                                               ; preds = %40
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %65

65:                                               ; preds = %64, %52, %14
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %66
}

declare dso_local i32 @fmtout(i8*, ...) #1

declare dso_local i32 @mmuisfreepage(i32) #1

declare dso_local i32 @PPC_PAGE_NUMBER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
