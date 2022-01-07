; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPMListOneFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPMListOneFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i32* }

@kCommandNotAvailable = common dso_local global i64 0, align 8
@kServerTypeNcFTPd = common dso_local global i64 0, align 8
@kServerTypeRoxen = common dso_local global i64 0, align 8
@kErrMLSTNotAvailable = common dso_local global i8* null, align 8
@kErrMallocFailed = common dso_local global i32 0, align 4
@kDontPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MLST %s\00", align 1
@kErrInvalidMLSTResponse = common dso_local global i32 0, align 4
@kErrMLSTFailed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPMListOneFile(%struct.TYPE_17__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @kCommandNotAvailable, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %32, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @kServerTypeNcFTPd, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 19981201
  br i1 %25, label %32, label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @kServerTypeRoxen, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26, %21, %3
  %33 = load i8*, i8** @kErrMLSTNotAvailable, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  br label %132

40:                                               ; preds = %26
  %41 = call %struct.TYPE_16__* (...) @InitResponse()
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %9, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = icmp eq %struct.TYPE_16__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* @kErrMallocFailed, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  store i32 %45, i32* %8, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = load i32, i32* @kDontPerror, align 4
  %50 = call i32 @Error(%struct.TYPE_17__* %48, i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %130

51:                                               ; preds = %40
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @RCmd(%struct.TYPE_17__* %52, %struct.TYPE_16__* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %102

58:                                               ; preds = %51
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %102

66:                                               ; preds = %58
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = icmp ne %struct.TYPE_13__* %72, null
  br i1 %73, label %74, label %102

74:                                               ; preds = %66
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %74
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @UnMlsT(i32* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i32, i32* @kErrInvalidMLSTResponse, align 4
  store i32 %98, i32* %8, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %84
  br label %126

102:                                              ; preds = %74, %66, %58, %51
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @UNIMPLEMENTED_CMD(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load i64, i64* @kCommandNotAvailable, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load i8*, i8** @kErrMLSTNotAvailable, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i8*, i8** @kErrMLSTNotAvailable, align 8
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %8, align 4
  br label %125

118:                                              ; preds = %102
  %119 = load i8*, i8** @kErrMLSTFailed, align 8
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i8*, i8** @kErrMLSTFailed, align 8
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %118, %108
  br label %126

126:                                              ; preds = %125, %101
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %129 = call i32 @DoneWithResponse(%struct.TYPE_17__* %127, %struct.TYPE_16__* %128)
  br label %130

130:                                              ; preds = %126, %44
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %32
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_16__* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @RCmd(%struct.TYPE_17__*, %struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @UnMlsT(i32*, i32) #1

declare dso_local i64 @UNIMPLEMENTED_CMD(i32) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
