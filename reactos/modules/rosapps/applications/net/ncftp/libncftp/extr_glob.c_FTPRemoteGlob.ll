; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPRemoteGlob.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPRemoteGlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__* }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i8* null, align 8
@kErrBadMagic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@kErrGlobNoMatch = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c": No such file or directory\00", align 1
@kErrGlobFailed = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c": No match\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"  Rglob [%s]\0A\00", align 1
@kNoErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPRemoteGlob(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @kErrBadParameter, align 4
  store i32 %17, i32* %5, align 4
  br label %171

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
  br label %171

27:                                               ; preds = %18
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = icmp eq %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @kErrBadParameter, align 4
  store i32 %31, i32* %5, align 4
  br label %171

32:                                               ; preds = %27
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = call i32 @InitLineList(%struct.TYPE_15__* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %32
  %44 = load i32, i32* @kErrBadParameter, align 4
  store i32 %44, i32* %5, align 4
  br label %171

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %161

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @GLOBCHARSINSTR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %161

52:                                               ; preds = %48
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %62

62:                                               ; preds = %61, %57
  br label %63

63:                                               ; preds = %62, %56
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @FTPListToMemory2(%struct.TYPE_16__* %64, i8* %65, %struct.TYPE_15__* %66, i8* %67, i32 0, i32* null)
  store i32 %68, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load i8*, i8** %11, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %5, align 4
  br label %171

77:                                               ; preds = %70
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @FTPListToMemory2(%struct.TYPE_16__* %78, i8* %79, %struct.TYPE_15__* %80, i8* %81, i32 0, i32* null)
  store i32 %82, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %5, align 4
  br label %171

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %63
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = icmp eq %struct.TYPE_14__* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @kErrGlobNoMatch, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @kErrGlobNoMatch, align 4
  store i32 %96, i32* %5, align 4
  br label %171

97:                                               ; preds = %87
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = icmp eq %struct.TYPE_14__* %100, %103
  br i1 %104, label %105, label %140

105:                                              ; preds = %97
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @strchr(i32 %110, i8 signext 58)
  store i8* %111, i8** %10, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %139

114:                                              ; preds = %105
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 (i8*, i8*, i64, ...) bitcast (i32 (...)* @ISTRNEQ to i32 (i8*, i8*, i64, ...)*)(i8* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 27)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = call i32 @RemoveLine(%struct.TYPE_15__* %119, %struct.TYPE_14__* %122)
  %124 = load i32, i32* @kErrGlobFailed, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @kErrGlobFailed, align 4
  store i32 %127, i32* %5, align 4
  br label %171

128:                                              ; preds = %114
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 (i8*, i8*, i64, ...) bitcast (i32 (...)* @ISTRNEQ to i32 (i8*, i8*, i64, ...)*)(i8* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 10)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32, i32* @kErrGlobNoMatch, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* @kErrGlobNoMatch, align 4
  store i32 %136, i32* %5, align 4
  br label %171

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138, %105
  br label %140

140:                                              ; preds = %139, %97
  %141 = load i8*, i8** %8, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %143 = call i32 @RemoteGlobCollapse(i8* %141, %struct.TYPE_15__* %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  store %struct.TYPE_14__* %146, %struct.TYPE_14__** %12, align 8
  br label %147

147:                                              ; preds = %156, %140
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %149 = icmp ne %struct.TYPE_14__* %148, null
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @PrintF(%struct.TYPE_16__* %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %150
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  store %struct.TYPE_14__* %159, %struct.TYPE_14__** %12, align 8
  br label %147

160:                                              ; preds = %147
  br label %169

161:                                              ; preds = %48, %45
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %163, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %165, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @AddLine(%struct.TYPE_15__* %166, i8* %167)
  br label %169

169:                                              ; preds = %161, %160
  %170 = load i32, i32* @kNoErr, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %169, %132, %118, %92, %84, %75, %43, %30, %25, %16
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @InitLineList(%struct.TYPE_15__*) #1

declare dso_local i64 @GLOBCHARSINSTR(i8*) #1

declare dso_local i32 @FTPListToMemory2(%struct.TYPE_16__*, i8*, %struct.TYPE_15__*, i8*, i32, i32*) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @ISTRNEQ(...) #1

declare dso_local i32 @RemoveLine(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @RemoteGlobCollapse(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @PrintF(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @AddLine(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
