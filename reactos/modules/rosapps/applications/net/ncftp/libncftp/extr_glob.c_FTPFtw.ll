; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPFtw.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPFtw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@kErrNotADirectory = common dso_local global i32 0, align 4
@kNoErr = common dso_local global i32 0, align 4
@kErrCannotGoToPrevDir = common dso_local global i8* null, align 8
@kFtwDir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPFtw(%struct.TYPE_11__* %0, i8* %1, i32 (%struct.TYPE_11__*, i8*, i32)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (%struct.TYPE_11__*, i8*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca [2048 x i8], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (%struct.TYPE_11__*, i8*, i32)* %2, i32 (%struct.TYPE_11__*, i8*, i32)** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @FTPIsDir(%struct.TYPE_11__* %15, i8* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %128

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* @kErrNotADirectory, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 %26, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %128

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %34 = call i32 @FTPGetCWD(%struct.TYPE_11__* %32, i8* %33, i32 1024)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @FTPChdir(%struct.TYPE_11__* %35, i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @kNoErr, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %128

43:                                               ; preds = %31
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %46 = call i32 @FTPGetCWD(%struct.TYPE_11__* %44, i8* %45, i32 2045)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @kNoErr, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %53 = call i32 @FTPChdir(%struct.TYPE_11__* %51, i8* %52)
  %54 = load i32, i32* @kNoErr, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %50
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %128

65:                                               ; preds = %43
  %66 = load i32 (%struct.TYPE_11__*, i8*, i32)*, i32 (%struct.TYPE_11__*, i8*, i32)** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %69 = load i32, i32* @kFtwDir, align 4
  %70 = call i32 %66(%struct.TYPE_11__* %67, i8* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @kNoErr, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %65
  %75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %76 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %77 = call i32 @strlen(i8* %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8* %79, i8** %12, align 8
  %80 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %81 = call i32* @strchr(i8* %80, i8 signext 47)
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %85 = call i32* @strrchr(i8* %84, i8 signext 92)
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8*, i8** %12, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %12, align 8
  store i8 92, i8* %88, align 1
  br label %93

90:                                               ; preds = %83, %74
  %91 = load i8*, i8** %12, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %12, align 8
  store i8 47, i8* %91, align 1
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i8*, i8** %12, align 8
  store i8 0, i8* %94, align 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %97 = load i8*, i8** %12, align 8
  %98 = load i32 (%struct.TYPE_11__*, i8*, i32)*, i32 (%struct.TYPE_11__*, i8*, i32)** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @FTPFtwL2(%struct.TYPE_11__* %95, i8* %96, i8* %97, i32 2048, i32 (%struct.TYPE_11__*, i8*, i32)* %98, i32 %100)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %93, %65
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %105 = call i32 @FTPChdir(%struct.TYPE_11__* %103, i8* %104)
  %106 = load i32, i32* @kNoErr, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %10, align 4
  %111 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %5, align 4
  br label %128

116:                                              ; preds = %102
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @kNoErr, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @kNoErr, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %124, %120, %116
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %108, %63, %41, %25, %20
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @FTPIsDir(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @FTPGetCWD(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @FTPChdir(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @FTPFtwL2(%struct.TYPE_11__*, i8*, i8*, i32, i32 (%struct.TYPE_11__*, i8*, i32)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
