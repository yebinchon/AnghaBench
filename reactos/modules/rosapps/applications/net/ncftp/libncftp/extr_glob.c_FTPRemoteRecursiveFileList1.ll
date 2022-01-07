; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPRemoteRecursiveFileList1.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPRemoteRecursiveFileList1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@kNoErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-lRa\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPRemoteRecursiveFileList1(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [512 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %14 = call i32 @FTPGetCWD(%struct.TYPE_6__* %12, i8* %13, i32 512)
  store i32 %14, i32* %11, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %65

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @InitFileInfoList(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %65

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @FTPChdir(%struct.TYPE_6__* %25, i8* %26)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @ConcatFileToFileInfoList(i32 %30, i8* %31)
  %33 = load i32, i32* @kNoErr, align 4
  store i32 %33, i32* %4, align 4
  br label %65

34:                                               ; preds = %24
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = call i32 @FTPListToMemory2(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* null)
  store i32 %36, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %41 = call i32 @FTPChdir(%struct.TYPE_6__* %39, i8* %40)
  store i32 %41, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %65

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @UnLslR(i32* %9, i32* %8, i32 %49)
  %51 = call i32 @DisposeLineListContents(i32* %8)
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @ComputeRNames(i32* %9, i8* %52, i32 1, i32 1)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ConcatFileInfoList(i32 %54, i32* %9)
  %56 = call i32 @DisposeFileInfoListContents(i32* %9)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %59 = call i32 @FTPChdir(%struct.TYPE_6__* %57, i8* %58)
  store i32 %59, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %46
  %64 = load i32, i32* @kNoErr, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %61, %43, %29, %23, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @FTPGetCWD(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @InitFileInfoList(i32) #1

declare dso_local i32 @FTPChdir(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @ConcatFileToFileInfoList(i32, i8*) #1

declare dso_local i32 @FTPListToMemory2(%struct.TYPE_6__*, i8*, i32*, i8*, i32, i32*) #1

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
