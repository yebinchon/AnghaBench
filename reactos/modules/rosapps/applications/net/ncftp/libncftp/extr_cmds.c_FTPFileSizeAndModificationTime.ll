; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileSizeAndModificationTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileSizeAndModificationTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kModTimeUnknown = common dso_local global i32 0, align 4
@kSizeUnknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPFileSizeAndModificationTime(%struct.TYPE_10__* %0, i8* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @kErrBadParameter, align 4
  store i32 %17, i32* %6, align 4
  br label %81

18:                                               ; preds = %5
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @kLibraryMagic, align 4
  %23 = call i64 @strcmp(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @kErrBadMagic, align 4
  store i32 %26, i32* %6, align 4
  br label %81

27:                                               ; preds = %18
  %28 = load i32*, i32** %11, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30, %27
  %37 = load i32, i32* @kErrBadParameter, align 4
  store i32 %37, i32* %6, align 4
  br label %81

38:                                               ; preds = %33
  %39 = load i32, i32* @kModTimeUnknown, align 4
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @kSizeUnknown, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @FTPSetTransferType(%struct.TYPE_10__* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %81

50:                                               ; preds = %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @FTPMListOneFile(%struct.TYPE_10__* %51, i8* %52, %struct.TYPE_9__* %12)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @FTPFileSize(%struct.TYPE_10__* %57, i8* %58, i32* %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %81

66:                                               ; preds = %56
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @FTPFileModificationTime(%struct.TYPE_10__* %67, i8* %68, i32* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %6, align 4
  br label %81

72:                                               ; preds = %50
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %66, %64, %48, %36, %25, %16
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @FTPSetTransferType(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @FTPMListOneFile(%struct.TYPE_10__*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @FTPFileSize(%struct.TYPE_10__*, i8*, i32*, i32) #1

declare dso_local i32 @FTPFileModificationTime(%struct.TYPE_10__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
