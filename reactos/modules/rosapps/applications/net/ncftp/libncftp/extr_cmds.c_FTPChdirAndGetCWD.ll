; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPChdirAndGetCWD.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPChdirAndGetCWD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i8* null, align 8
@kErrBadMagic = common dso_local global i32 0, align 4
@kErrInvalidDirParam = common dso_local global i8* null, align 8
@kErrMallocFailed = common dso_local global i8* null, align 8
@kDontPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CDUP\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CWD %s\00", align 1
@kNoErr = common dso_local global i32 0, align 4
@kErrCWDFailed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPChdirAndGetCWD(%struct.TYPE_16__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @kErrBadParameter, align 4
  store i32 %17, i32* %5, align 4
  br label %152

18:                                               ; preds = %4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** @kLibraryMagic, align 8
  %23 = call i64 @strcmp(i8* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @kErrBadMagic, align 4
  store i32 %26, i32* %5, align 4
  br label %152

27:                                               ; preds = %18
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** @kErrInvalidDirParam, align 8
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load i8*, i8** @kErrInvalidDirParam, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %150

39:                                               ; preds = %30
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @FTPGetCWD(%struct.TYPE_16__* %46, i8* %47, i64 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %152

51:                                               ; preds = %39
  %52 = call %struct.TYPE_15__* (...) @InitResponse()
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %10, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %54 = icmp eq %struct.TYPE_15__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i8*, i8** @kErrMallocFailed, align 8
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load i8*, i8** @kErrMallocFailed, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = load i32, i32* @kDontPerror, align 4
  %63 = call i32 @Error(%struct.TYPE_16__* %61, i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %149

64:                                               ; preds = %51
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %71 = call i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, ...) @RCmd(%struct.TYPE_16__* %69, %struct.TYPE_15__* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %71, i32* %13, align 4
  br label %77

72:                                               ; preds = %64
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, ...) @RCmd(%struct.TYPE_16__* %73, %struct.TYPE_15__* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %72, %68
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %131

80:                                               ; preds = %77
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @strchr(i8* %86, i8 signext 34)
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp eq i8* %88, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %80
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @strrchr(i8* %102, i8 signext 34)
  store i8* %103, i8** %12, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %122

105:                                              ; preds = %96
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = icmp ne i8* %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i8*, i8** %12, align 8
  store i8 0, i8* %110, align 1
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %11, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @Strncpy(i8* %113, i8* %114, i64 %115)
  %117 = load i8*, i8** %12, align 8
  store i8 34, i8* %117, align 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = call i32 @DoneWithResponse(%struct.TYPE_16__* %118, %struct.TYPE_15__* %119)
  %121 = load i32, i32* @kNoErr, align 4
  store i32 %121, i32* %13, align 4
  br label %130

122:                                              ; preds = %105, %96, %80
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %125 = call i32 @DoneWithResponse(%struct.TYPE_16__* %123, %struct.TYPE_15__* %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i64, i64* %9, align 8
  %129 = call i32 @FTPGetCWD(%struct.TYPE_16__* %126, i8* %127, i64 %128)
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %122, %109
  br label %148

131:                                              ; preds = %77
  %132 = load i32, i32* %13, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i8*, i8** @kErrCWDFailed, align 8
  %136 = ptrtoint i8* %135 to i32
  store i32 %136, i32* %13, align 4
  %137 = load i8*, i8** @kErrCWDFailed, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %142 = call i32 @DoneWithResponse(%struct.TYPE_16__* %140, %struct.TYPE_15__* %141)
  br label %147

143:                                              ; preds = %131
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %146 = call i32 @DoneWithResponse(%struct.TYPE_16__* %144, %struct.TYPE_15__* %145)
  br label %147

147:                                              ; preds = %143, %134
  br label %148

148:                                              ; preds = %147, %130
  br label %149

149:                                              ; preds = %148, %55
  br label %150

150:                                              ; preds = %149, %33
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %45, %25, %16
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @FTPGetCWD(%struct.TYPE_16__*, i8*, i64) #1

declare dso_local %struct.TYPE_15__* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @RCmd(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @Strncpy(i8*, i8*, i64) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
