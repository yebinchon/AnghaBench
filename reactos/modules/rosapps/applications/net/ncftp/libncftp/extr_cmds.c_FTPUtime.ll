; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPUtime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPUtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8*, i32 }
%struct.TYPE_10__ = type { i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kCommandNotAvailable = common dso_local global i64 0, align 8
@kErrUTIMENotAvailable = common dso_local global i8* null, align 8
@kErrMallocFailed = common dso_local global i8* null, align 8
@kDontPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SITE UTIME %s %s %s %s UTC\00", align 1
@kCommandAvailable = common dso_local global i64 0, align 8
@kNoErr = common dso_local global i32 0, align 4
@kErrUTIMEFailed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPUtime(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = icmp eq %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @kErrBadParameter, align 4
  store i32 %20, i32* %6, align 4
  br label %141

21:                                               ; preds = %5
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @kLibraryMagic, align 4
  %26 = call i64 @strcmp(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @kErrBadMagic, align 4
  store i32 %29, i32* %6, align 4
  br label %141

30:                                               ; preds = %21
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @kCommandNotAvailable, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** @kErrUTIMENotAvailable, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @kErrUTIMENotAvailable, align 8
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %15, align 4
  br label %139

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %42
  %49 = call i32 @time(i32* %9)
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %50
  %57 = call i32 @time(i32* %10)
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @GmTimeStr(i8* %67, i32 64, i32 %68)
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @GmTimeStr(i8* %70, i32 64, i32 %71)
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @GmTimeStr(i8* %73, i32 64, i32 %74)
  %76 = call %struct.TYPE_10__* (...) @InitResponse()
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %16, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %78 = icmp eq %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %66
  %80 = load i8*, i8** @kErrMallocFailed, align 8
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = load i8*, i8** @kErrMallocFailed, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = load i32, i32* @kDontPerror, align 4
  %87 = call i32 @Error(%struct.TYPE_11__* %85, i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %138

88:                                               ; preds = %66
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %95 = call i32 @RCmd(%struct.TYPE_11__* %89, %struct.TYPE_10__* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %91, i8* %92, i8* %93, i8* %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %101 = call i32 @DoneWithResponse(%struct.TYPE_11__* %99, %struct.TYPE_10__* %100)
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %141

103:                                              ; preds = %88
  %104 = load i32, i32* %15, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i64, i64* @kCommandAvailable, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* @kNoErr, align 4
  store i32 %110, i32* %15, align 4
  br label %133

111:                                              ; preds = %103
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @UNIMPLEMENTED_CMD(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load i64, i64* @kCommandNotAvailable, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i8*, i8** @kErrUTIMENotAvailable, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** @kErrUTIMENotAvailable, align 8
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %15, align 4
  br label %132

126:                                              ; preds = %111
  %127 = load i8*, i8** @kErrUTIMEFailed, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** @kErrUTIMEFailed, align 8
  %131 = ptrtoint i8* %130 to i32
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %126, %117
  br label %133

133:                                              ; preds = %132, %106
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %137 = call i32 @DoneWithResponse(%struct.TYPE_11__* %135, %struct.TYPE_10__* %136)
  br label %138

138:                                              ; preds = %134, %79
  br label %139

139:                                              ; preds = %138, %36
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %139, %98, %28, %19
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @GmTimeStr(i8*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @RCmd(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i64 @UNIMPLEMENTED_CMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
