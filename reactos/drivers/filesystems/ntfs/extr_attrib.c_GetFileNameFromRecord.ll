; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_GetFileNameFromRecord.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_GetFileNameFromRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@AttributeFileName = common dso_local global i64 0, align 8
@NTFS_FILE_NAME_WIN32_AND_DOS = common dso_local global i64 0, align 8
@NTFS_FILE_NAME_WIN32 = common dso_local global i64 0, align 8
@NTFS_FILE_NAME_DOS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @GetFileNameFromRecord(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @FindFirstAttribute(i32* %8, i32 %12, i32 %13, i32 %14, %struct.TYPE_8__** %9)
  store i32 %15, i32* %11, align 4
  br label %16

16:                                               ; preds = %64, %3
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @NT_SUCCESS(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AttributeFileName, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = ptrtoint %struct.TYPE_8__* %27 to i64
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %28, %32
  %34 = inttoptr i64 %33 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %10, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %60, label %40

40:                                               ; preds = %26
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NTFS_FILE_NAME_WIN32_AND_DOS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @NTFS_FILE_NAME_WIN32, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NTFS_FILE_NAME_WIN32_AND_DOS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @NTFS_FILE_NAME_DOS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %46, %26
  %61 = call i32 @FindCloseAttribute(i32* %8)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %4, align 8
  br label %68

63:                                               ; preds = %56, %50
  br label %64

64:                                               ; preds = %63, %20
  %65 = call i32 @FindNextAttribute(i32* %8, %struct.TYPE_8__** %9)
  store i32 %65, i32* %11, align 4
  br label %16

66:                                               ; preds = %16
  %67 = call i32 @FindCloseAttribute(i32* %8)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %68

68:                                               ; preds = %66, %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %69
}

declare dso_local i32 @FindFirstAttribute(i32*, i32, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @FindCloseAttribute(i32*) #1

declare dso_local i32 @FindNextAttribute(i32*, %struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
