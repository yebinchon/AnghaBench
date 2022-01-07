; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPFtwL2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPFtwL2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_14__* }

@kErrRecursionLimitReached = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"**\00", align 1
@kGlobYes = common dso_local global i32 0, align 4
@kNoErr = common dso_local global i32 0, align 4
@kErrGlobNoMatch = common dso_local global i32 0, align 4
@kErrBadLineList = common dso_local global i32 0, align 4
@kFtwDir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@kErrCannotGoToPrevDir = common dso_local global i8* null, align 8
@kFtwFile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i8*, i64, i32 (%struct.TYPE_16__*, i8*, i32)*, i32)* @FTPFtwL2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FTPFtwL2(%struct.TYPE_16__* %0, i8* %1, i8* %2, i64 %3, i32 (%struct.TYPE_16__*, i8*, i32)* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (%struct.TYPE_16__*, i8*, i32)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 (%struct.TYPE_16__*, i8*, i32)* %4, i32 (%struct.TYPE_16__*, i8*, i32)** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %6
  %22 = load i32, i32* @kErrRecursionLimitReached, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store i32 %22, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  store i32 %25, i32* %7, align 4
  br label %183

26:                                               ; preds = %6
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = load i32, i32* @kGlobYes, align 4
  %29 = call i32 @FTPRemoteGlob(%struct.TYPE_16__* %27, %struct.TYPE_15__* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* @kNoErr, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* @kErrGlobNoMatch, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @kNoErr, align 4
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %7, align 4
  br label %183

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %15, align 8
  br label %44

44:                                               ; preds = %176, %41
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %46 = icmp ne %struct.TYPE_14__* %45, null
  br i1 %46, label %47, label %180

47:                                               ; preds = %44
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %16, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @kErrBadLineList, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %180

57:                                               ; preds = %47
  %58 = load i8*, i8** %16, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load i8*, i8** %16, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %16, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %63
  br label %176

82:                                               ; preds = %75, %69, %57
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 @FTPIsDir(%struct.TYPE_16__* %83, i8* %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %176

89:                                               ; preds = %82
  %90 = load i32, i32* %18, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %159

92:                                               ; preds = %89
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load i64, i64* %11, align 8
  %96 = call i8* @Strnpcat(i8* %93, i8* %94, i64 %95)
  store i8* %96, i8** %17, align 8
  %97 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %12, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* @kFtwDir, align 4
  %101 = call i32 %97(%struct.TYPE_16__* %98, i8* %99, i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* @kNoErr, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %180

106:                                              ; preds = %92
  %107 = load i8*, i8** %9, align 8
  %108 = call i32* @strchr(i8* %107, i8 signext 47)
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i8*, i8** %9, align 8
  %112 = call i32* @strrchr(i8* %111, i8 signext 92)
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i8*, i8** %17, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %17, align 8
  store i8 92, i8* %115, align 1
  br label %120

117:                                              ; preds = %110, %106
  %118 = load i8*, i8** %17, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %17, align 8
  store i8 47, i8* %118, align 1
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i8*, i8** %17, align 8
  store i8 0, i8* %121, align 1
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = call i32 @FTPChdir(%struct.TYPE_16__* %122, i8* %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* @kNoErr, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %153

128:                                              ; preds = %120
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %17, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %12, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sub nsw i32 %134, 1
  %136 = call i32 @FTPFtwL2(%struct.TYPE_16__* %129, i8* %130, i8* %131, i64 %132, i32 (%struct.TYPE_16__*, i8*, i32)* %133, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* @kNoErr, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %180

141:                                              ; preds = %128
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %143 = call i32 @FTPChdir(%struct.TYPE_16__* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %147 = ptrtoint i8* %146 to i32
  store i32 %147, i32* %18, align 4
  %148 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  br label %180

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152, %120
  %154 = load i8*, i8** %10, align 8
  store i8 0, i8* %154, align 1
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %180

158:                                              ; preds = %153
  br label %174

159:                                              ; preds = %89
  %160 = load i8*, i8** %9, align 8
  %161 = load i8*, i8** %16, align 8
  %162 = load i64, i64* %11, align 8
  %163 = call i8* @Strnpcat(i8* %160, i8* %161, i64 %162)
  store i8* %163, i8** %17, align 8
  %164 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %12, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* @kFtwFile, align 4
  %168 = call i32 %164(%struct.TYPE_16__* %165, i8* %166, i32 %167)
  store i32 %168, i32* %18, align 4
  %169 = load i8*, i8** %10, align 8
  store i8 0, i8* %169, align 1
  %170 = load i32, i32* %18, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %159
  br label %180

173:                                              ; preds = %159
  br label %174

174:                                              ; preds = %173, %158
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175, %88, %81
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  store %struct.TYPE_14__* %179, %struct.TYPE_14__** %15, align 8
  br label %44

180:                                              ; preds = %172, %157, %145, %140, %105, %53, %44
  %181 = call i32 @DisposeLineListContents(%struct.TYPE_15__* %14)
  %182 = load i32, i32* %18, align 4
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %180, %39, %21
  %184 = load i32, i32* %7, align 4
  ret i32 %184
}

declare dso_local i32 @FTPRemoteGlob(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @FTPIsDir(%struct.TYPE_16__*, i8*) #1

declare dso_local i8* @Strnpcat(i8*, i8*, i64) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @FTPChdir(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @DisposeLineListContents(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
