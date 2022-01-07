; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPRemoteRecursiveFileList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPRemoteRecursiveFileList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-lRa\00", align 1
@kNoErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPRemoteRecursiveFileList(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [512 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %17 = call i32 @FTPGetCWD(%struct.TYPE_11__* %15, i8* %16, i32 512)
  store i32 %17, i32* %13, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @InitFileInfoList(i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %8, align 8
  br label %27

27:                                               ; preds = %73, %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %9, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %73

40:                                               ; preds = %30
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @FTPChdir(%struct.TYPE_11__* %41, i8* %42)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 @ConcatFileToFileInfoList(i32 %46, i8* %47)
  br label %73

49:                                               ; preds = %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = call i32 @FTPListToMemory2(%struct.TYPE_11__* %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* null)
  store i32 %51, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %65

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @UnLslR(i32* %11, i32* %10, i32 %57)
  %59 = call i32 @DisposeLineListContents(i32* %10)
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @ComputeRNames(i32* %11, i8* %60, i32 1, i32 1)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ConcatFileInfoList(i32 %62, i32* %11)
  %64 = call i32 @DisposeFileInfoListContents(i32* %11)
  br label %65

65:                                               ; preds = %54, %53
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %68 = call i32 @FTPChdir(%struct.TYPE_11__* %66, i8* %67)
  store i32 %68, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %4, align 4
  br label %77

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %45, %39
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %8, align 8
  br label %27

75:                                               ; preds = %27
  %76 = load i32, i32* @kNoErr, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %70, %19
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @FTPGetCWD(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @InitFileInfoList(i32) #1

declare dso_local i32 @FTPChdir(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @ConcatFileToFileInfoList(i32, i8*) #1

declare dso_local i32 @FTPListToMemory2(%struct.TYPE_11__*, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @UnLslR(i32*, i32*, i32) #1

declare dso_local i32 @DisposeLineListContents(i32*) #1

declare dso_local i32 @ComputeRNames(i32*, i8*, i32, i32) #1

declare dso_local i32 @ConcatFileInfoList(i32, i32*) #1

declare dso_local i32 @DisposeFileInfoListContents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
