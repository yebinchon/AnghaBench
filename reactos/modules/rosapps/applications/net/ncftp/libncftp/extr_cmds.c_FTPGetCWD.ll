; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPGetCWD.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPGetCWD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kErrInvalidDirParam = common dso_local global i8* null, align 8
@kErrMallocFailed = common dso_local global i8* null, align 8
@kDontPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@kNoErr = common dso_local global i32 0, align 4
@kErrPWDFailed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPGetCWD(%struct.TYPE_15__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = icmp eq %struct.TYPE_15__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @kErrBadParameter, align 4
  store i32 %15, i32* %4, align 4
  br label %130

16:                                               ; preds = %3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @kLibraryMagic, align 4
  %21 = call i64 @strcmp(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @kErrBadMagic, align 4
  store i32 %24, i32* %4, align 4
  br label %130

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %25
  %32 = load i8*, i8** @kErrInvalidDirParam, align 8
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i8*, i8** @kErrInvalidDirParam, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %128

37:                                               ; preds = %28
  %38 = call %struct.TYPE_14__* (...) @InitResponse()
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %8, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = icmp eq %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i8*, i8** @kErrMallocFailed, align 8
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** @kErrMallocFailed, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = load i32, i32* @kDontPerror, align 4
  %49 = call i32 @Error(%struct.TYPE_15__* %47, i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %127

50:                                               ; preds = %37
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = call i32 @RCmd(%struct.TYPE_15__* %51, %struct.TYPE_14__* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %113

56:                                               ; preds = %50
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @strrchr(i8* %62, i8 signext 34)
  store i8* %63, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %89

65:                                               ; preds = %56
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 34)
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %65
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i8*, i8** %10, align 8
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @Strncpy(i8* %83, i8* %84, i64 %85)
  %87 = load i8*, i8** %10, align 8
  store i8 34, i8* %87, align 1
  br label %88

88:                                               ; preds = %79, %75, %65
  br label %111

89:                                               ; preds = %56
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @strchr(i8* %95, i8 signext 32)
  store i8* %96, i8** %10, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %89
  %99 = load i8*, i8** %10, align 8
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %6, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @Strncpy(i8* %100, i8* %106, i64 %107)
  %109 = load i8*, i8** %10, align 8
  store i8 32, i8* %109, align 1
  br label %110

110:                                              ; preds = %98, %89
  br label %111

111:                                              ; preds = %110, %88
  %112 = load i32, i32* @kNoErr, align 4
  store i32 %112, i32* %11, align 4
  br label %123

113:                                              ; preds = %50
  %114 = load i32, i32* %11, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i8*, i8** @kErrPWDFailed, align 8
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %11, align 4
  %119 = load i8*, i8** @kErrPWDFailed, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %116, %113
  br label %123

123:                                              ; preds = %122, %111
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = call i32 @DoneWithResponse(%struct.TYPE_15__* %124, %struct.TYPE_14__* %125)
  br label %127

127:                                              ; preds = %123, %41
  br label %128

128:                                              ; preds = %127, %31
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %23, %14
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_14__* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @RCmd(%struct.TYPE_15__*, %struct.TYPE_14__*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @Strncpy(i8*, i8*, i64) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
