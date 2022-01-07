; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i8*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kSizeUnknown = common dso_local global i64 0, align 8
@kCommandNotAvailable = common dso_local global i64 0, align 8
@kErrSIZENotAvailable = common dso_local global i8* null, align 8
@kErrMallocFailed = common dso_local global i8* null, align 8
@kDontPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SIZE %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@kCommandAvailable = common dso_local global i64 0, align 8
@kNoErr = common dso_local global i32 0, align 4
@kErrSIZEFailed = common dso_local global i8* null, align 8
@SCANF_LONG_LONG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPFileSize(%struct.TYPE_16__* %0, i8* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @kErrBadParameter, align 4
  store i32 %15, i32* %5, align 4
  br label %126

16:                                               ; preds = %4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @kLibraryMagic, align 4
  %21 = call i64 @strcmp(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @kErrBadMagic, align 4
  store i32 %24, i32* %5, align 4
  br label %126

25:                                               ; preds = %16
  %26 = load i64*, i64** %8, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @kErrBadParameter, align 4
  store i32 %32, i32* %5, align 4
  br label %126

33:                                               ; preds = %28
  %34 = load i64, i64* @kSizeUnknown, align 8
  %35 = load i64*, i64** %8, align 8
  store i64 %34, i64* %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @FTPSetTransferType(%struct.TYPE_16__* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %126

43:                                               ; preds = %33
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @kCommandNotAvailable, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i8*, i8** @kErrSIZENotAvailable, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @kErrSIZENotAvailable, align 8
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %10, align 4
  br label %124

55:                                               ; preds = %43
  %56 = call %struct.TYPE_15__* (...) @InitResponse()
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %11, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %58 = icmp eq %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i8*, i8** @kErrMallocFailed, align 8
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** @kErrMallocFailed, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = load i32, i32* @kDontPerror, align 4
  %67 = call i32 @Error(%struct.TYPE_16__* %65, i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %123

68:                                               ; preds = %55
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @RCmd(%struct.TYPE_16__* %69, %struct.TYPE_15__* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %78 = call i32 @DoneWithResponse(%struct.TYPE_16__* %76, %struct.TYPE_15__* %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %126

80:                                               ; preds = %68
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64*, i64** %8, align 8
  %91 = call i32 @sscanf(i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %90)
  %92 = load i64, i64* @kCommandAvailable, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* @kNoErr, align 4
  store i32 %95, i32* %10, align 4
  br label %118

96:                                               ; preds = %80
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @UNIMPLEMENTED_CMD(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load i64, i64* @kCommandNotAvailable, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i8*, i8** @kErrSIZENotAvailable, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** @kErrSIZENotAvailable, align 8
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %10, align 4
  br label %117

111:                                              ; preds = %96
  %112 = load i8*, i8** @kErrSIZEFailed, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @kErrSIZEFailed, align 8
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %111, %102
  br label %118

118:                                              ; preds = %117, %83
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %122 = call i32 @DoneWithResponse(%struct.TYPE_16__* %120, %struct.TYPE_15__* %121)
  br label %123

123:                                              ; preds = %119, %59
  br label %124

124:                                              ; preds = %123, %49
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %75, %41, %31, %23, %14
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @FTPSetTransferType(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_15__* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @RCmd(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @sscanf(i32, i8*, i64*) #1

declare dso_local i64 @UNIMPLEMENTED_CMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
