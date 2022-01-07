; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_FixupUpdateSequenceArray.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_FixupUpdateSequenceArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64 }

@.str = private unnamed_addr constant [61 x i8] c"FixupUpdateSequenceArray(%p, %p)\0AUSANumber: %u\09USACount: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Mismatch with USA: %u read, %u expected\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FixupUpdateSequenceArray(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = ptrtoint %struct.TYPE_9__* %10 to i64
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %6, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %18, i64** %6, align 8
  %19 = load i64, i64* %17, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = ptrtoint %struct.TYPE_9__* %24 to i64
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = sub nsw i64 %30, 2
  %32 = inttoptr i64 %31 to i64*
  store i64* %32, i64** %9, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @DPRINT(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %33, %struct.TYPE_9__* %34, i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %52, %2
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @DPRINT1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %49)
  %51 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %51, i32* %3, align 4
  br label %69

52:                                               ; preds = %41
  %53 = load i64*, i64** %6, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %6, align 8
  %55 = load i64, i64* %53, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = ptrtoint i64* %57 to i64
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = inttoptr i64 %63 to i64*
  store i64* %64, i64** %9, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %8, align 8
  br label %38

67:                                               ; preds = %38
  %68 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %46
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_10__*, %struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @DPRINT1(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
