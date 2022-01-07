; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_io.c_FTPList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_io.c_FTPList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NLST\00", align 1
@kNetReading = common dso_local global i32 0, align 4
@kTypeAscii = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@kErrLISTFailed = common dso_local global i8* null, align 8
@kNoErr = common dso_local global i32 0, align 4
@kErrGeneric = common dso_local global i32 0, align 4
@kDoPerror = common dso_local global i32 0, align 4
@kDontPerror = common dso_local global i32 0, align 4
@kErrDataTimedOut = common dso_local global i32 0, align 4
@kErrFdopenR = common dso_local global i8* null, align 8
@kTimeoutErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPList(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca [768 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @kErrBadParameter, align 4
  store i32 %20, i32* %5, align 4
  br label %142

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @kLibraryMagic, align 4
  %26 = call i64 @strcmp(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @kErrBadMagic, align 4
  store i32 %29, i32* %5, align 4
  br label %142

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37, %30
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = load i32, i32* @kNetReading, align 4
  %46 = load i32, i32* @kTypeAscii, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (%struct.TYPE_6__*, i32, i32, i64, i8*, i8*, ...) @FTPStartDataCmd(%struct.TYPE_6__* %44, i32 %45, i32 %46, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  store volatile i32 %48, i32* %16, align 4
  br label %56

49:                                               ; preds = %37
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = load i32, i32* @kNetReading, align 4
  %52 = load i32, i32* @kTypeAscii, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 (%struct.TYPE_6__*, i32, i32, i64, i8*, i8*, ...) @FTPStartDataCmd(%struct.TYPE_6__* %50, i32 %51, i32 %52, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %53, i8* %54)
  store volatile i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %49, %43
  %57 = load volatile i32, i32* %16, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %128

59:                                               ; preds = %56
  %60 = getelementptr inbounds [768 x i8], [768 x i8]* %12, i64 0, i64 0
  %61 = getelementptr inbounds i8, i8* %60, i64 768
  store i8* %61, i8** %13, align 8
  store i8* null, i8** %14, align 8
  br label %62

62:                                               ; preds = %102, %59
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @alarm(i64 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [768 x i8], [768 x i8]* %12, i64 0, i64 0
  %78 = call i32 @BufferGets(i8* %73, i32 512, i32 %76, i8* %77, i8** %13, i8** %14, i32 768)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %103

85:                                               ; preds = %81
  br label %102

86:                                               ; preds = %72
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %96 = call i32 @STRNCAT(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32, i32* %7, align 4
  %98 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %99 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %100 = call i32 @strlen(i8* %99)
  %101 = call i32 @write(i32 %97, i8* %98, i32 %100)
  br label %102

102:                                              ; preds = %86, %85
  br label %62

103:                                              ; preds = %84
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 @alarm(i64 0)
  br label %110

110:                                              ; preds = %108, %103
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = call i32 @FTPEndDataCmd(%struct.TYPE_6__* %111, i32 1)
  store volatile i32 %112, i32* %16, align 4
  %113 = load volatile i32, i32* %16, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i8*, i8** @kErrLISTFailed, align 8
  %117 = ptrtoint i8* %116 to i32
  store volatile i32 %117, i32* %16, align 4
  %118 = load i8*, i8** @kErrLISTFailed, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %115, %110
  %123 = load i32, i32* @kNoErr, align 4
  store volatile i32 %123, i32* %16, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %140

128:                                              ; preds = %56
  %129 = load volatile i32, i32* %16, align 4
  %130 = load i32, i32* @kErrGeneric, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i8*, i8** @kErrLISTFailed, align 8
  %134 = ptrtoint i8* %133 to i32
  store volatile i32 %134, i32* %16, align 4
  %135 = load i8*, i8** @kErrLISTFailed, align 8
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %132, %128
  br label %140

140:                                              ; preds = %139, %122
  %141 = load volatile i32, i32* %16, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %28, %19
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @FTPStartDataCmd(%struct.TYPE_6__*, i32, i32, i64, i8*, i8*, ...) #1

declare dso_local i32 @alarm(i64) #1

declare dso_local i32 @BufferGets(i8*, i32, i32, i8*, i8**, i8**, i32) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @FTPEndDataCmd(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
