; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_pBuildFileList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_pBuildFileList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32 }
%struct.TYPE_9__ = type { i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"malloc() failed in pLoadFileList()\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i32] [i32 59, i32 0], align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32)* @pBuildFileList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @pBuildFileList(i32 %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %29 = mul nuw i64 4, %20
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @StringCbCopyW(i32* %22, i32 %30, i32 %31)
  %33 = call i32 @PathRemoveFileSpecW(i32* %22)
  %34 = call i32 @GdipGetImageDecodersSize(i64* %15, i64* %16)
  %35 = load i64, i64* %16, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i8* @malloc(i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %14, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %1
  %42 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  store i32 1, i32* %18, align 4
  br label %172

43:                                               ; preds = %1
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %47 = call i32 @GdipGetImageDecoders(i64 %44, i64 %45, %struct.TYPE_10__* %46)
  %48 = call i8* @malloc(i32 32)
  %49 = bitcast i8* %48 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %12, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = icmp ne %struct.TYPE_10__* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %55 = call i32 @free(%struct.TYPE_10__* %54)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  store i32 1, i32* %18, align 4
  br label %172

56:                                               ; preds = %43
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %13, align 8
  store i64 0, i64* %17, align 8
  br label %58

58:                                               ; preds = %139, %56
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* %15, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %142

62:                                               ; preds = %58
  %63 = mul nuw i64 4, %27
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %66 = load i64, i64* %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @StringCbCopyW(i32* %28, i32 %64, i32 %69)
  %71 = call i32* @wcstok(i32* %28, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  store i32* %71, i32** %5, align 8
  br label %72

72:                                               ; preds = %136, %62
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %138

75:                                               ; preds = %72
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @PathCombineW(i32* %25, i32* %22, i32* %76)
  %78 = call i64 @FindFirstFileW(i32* %25, %struct.TYPE_9__* %10)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %136

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %129, %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @PathCombineW(i32* %86, i32* %22, i32* %88)
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @wcscmp(i32 %90, i32* %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %11, align 8
  br label %98

98:                                               ; preds = %96, %83
  %99 = call i8* @malloc(i32 32)
  %100 = bitcast i8* %99 to %struct.TYPE_10__*
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %102, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  br i1 %106, label %120, label %107

107:                                              ; preds = %98
  %108 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %111, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %114, align 8
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @FindClose(i64 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %118 = call i32 @free(%struct.TYPE_10__* %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %2, align 8
  store i32 1, i32* %18, align 4
  br label %172

120:                                              ; preds = %98
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %13, align 8
  br label %129

129:                                              ; preds = %120
  %130 = load i64, i64* %4, align 8
  %131 = call i64 @FindNextFileW(i64 %130, %struct.TYPE_9__* %10)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %83, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* %4, align 8
  %135 = call i32 @FindClose(i64 %134)
  br label %136

136:                                              ; preds = %133, %75
  %137 = call i32* @wcstok(i32* null, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  store i32* %137, i32** %5, align 8
  br label %72

138:                                              ; preds = %72
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %17, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %17, align 8
  br label %58

142:                                              ; preds = %58
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %144 = icmp eq %struct.TYPE_10__* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @MAX_PATH, align 4
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @StringCchCopyW(i32* %148, i32 %149, i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %152, %struct.TYPE_10__** %11, align 8
  br label %161

153:                                              ; preds = %142
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  store %struct.TYPE_10__* %156, %struct.TYPE_10__** %13, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = call i32 @free(%struct.TYPE_10__* %159)
  br label %161

161:                                              ; preds = %153, %145
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  store %struct.TYPE_10__* %162, %struct.TYPE_10__** %164, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  store %struct.TYPE_10__* %165, %struct.TYPE_10__** %167, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %168, %struct.TYPE_10__** %13, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %170 = call i32 @free(%struct.TYPE_10__* %169)
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %171, %struct.TYPE_10__** %2, align 8
  store i32 1, i32* %18, align 4
  br label %172

172:                                              ; preds = %161, %107, %52, %41
  %173 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StringCbCopyW(i32*, i32, i32) #2

declare dso_local i32 @PathRemoveFileSpecW(i32*) #2

declare dso_local i32 @GdipGetImageDecodersSize(i64*, i64*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @DPRINT1(i8*) #2

declare dso_local i32 @GdipGetImageDecoders(i64, i64, %struct.TYPE_10__*) #2

declare dso_local i32 @free(%struct.TYPE_10__*) #2

declare dso_local i32* @wcstok(i32*, i8*) #2

declare dso_local i32 @PathCombineW(i32*, i32*, i32*) #2

declare dso_local i64 @FindFirstFileW(i32*, %struct.TYPE_9__*) #2

declare dso_local i64 @wcscmp(i32, i32*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i64 @FindNextFileW(i64, %struct.TYPE_9__*) #2

declare dso_local i32 @StringCchCopyW(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
