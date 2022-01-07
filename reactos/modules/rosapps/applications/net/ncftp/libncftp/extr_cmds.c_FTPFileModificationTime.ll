; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileModificationTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileModificationTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i8*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kModTimeUnknown = common dso_local global i32 0, align 4
@kCommandNotAvailable = common dso_local global i64 0, align 8
@kErrMDTMNotAvailable = common dso_local global i8* null, align 8
@kErrMallocFailed = common dso_local global i8* null, align 8
@kDontPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MDTM %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"19100\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Warning: Server has Y2K Bug in \22MDTM\22 command.\0A\00", align 1
@kErrMDTMFailed = common dso_local global i8* null, align 8
@kCommandAvailable = common dso_local global i64 0, align 8
@kNoErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPFileModificationTime(%struct.TYPE_15__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = icmp eq %struct.TYPE_15__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @kErrBadParameter, align 4
  store i32 %13, i32* %4, align 4
  br label %135

14:                                               ; preds = %3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @kLibraryMagic, align 4
  %19 = call i64 @strcmp(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @kErrBadMagic, align 4
  store i32 %22, i32* %4, align 4
  br label %135

23:                                               ; preds = %14
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @kErrBadParameter, align 4
  store i32 %30, i32* %4, align 4
  br label %135

31:                                               ; preds = %26
  %32 = load i32, i32* @kModTimeUnknown, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @kCommandNotAvailable, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i8*, i8** @kErrMDTMNotAvailable, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @kErrMDTMNotAvailable, align 8
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %8, align 4
  br label %133

45:                                               ; preds = %31
  %46 = call %struct.TYPE_14__* (...) @InitResponse()
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %9, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = icmp eq %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i8*, i8** @kErrMallocFailed, align 8
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i8*, i8** @kErrMallocFailed, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = load i32, i32* @kDontPerror, align 4
  %57 = call i32 @Error(%struct.TYPE_15__* %55, i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %132

58:                                               ; preds = %45
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @RCmd(%struct.TYPE_15__* %59, %struct.TYPE_14__* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = call i32 @DoneWithResponse(%struct.TYPE_15__* %66, %struct.TYPE_14__* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %135

70:                                               ; preds = %58
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @strncmp(i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = load i32, i32* @kDontPerror, align 4
  %82 = call i32 @Error(%struct.TYPE_15__* %80, i32 %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i8*, i8** @kErrMDTMFailed, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @kErrMDTMFailed, align 8
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %8, align 4
  br label %127

88:                                               ; preds = %70
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @UnMDTMDate(i32 %97)
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i64, i64* @kCommandAvailable, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* @kNoErr, align 4
  store i32 %103, i32* %8, align 4
  br label %126

104:                                              ; preds = %88
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @UNIMPLEMENTED_CMD(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load i64, i64* @kCommandNotAvailable, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i8*, i8** @kErrMDTMNotAvailable, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @kErrMDTMNotAvailable, align 8
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %8, align 4
  br label %125

119:                                              ; preds = %104
  %120 = load i8*, i8** @kErrMDTMFailed, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** @kErrMDTMFailed, align 8
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %119, %110
  br label %126

126:                                              ; preds = %125, %91
  br label %127

127:                                              ; preds = %126, %79
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %131 = call i32 @DoneWithResponse(%struct.TYPE_15__* %129, %struct.TYPE_14__* %130)
  br label %132

132:                                              ; preds = %128, %49
  br label %133

133:                                              ; preds = %132, %39
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %65, %29, %21, %12
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_14__* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @RCmd(%struct.TYPE_15__*, %struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @UnMDTMDate(i32) #1

declare dso_local i64 @UNIMPLEMENTED_CMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
