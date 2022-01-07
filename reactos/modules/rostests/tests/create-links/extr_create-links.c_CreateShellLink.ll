; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/create-links/extr_create-links.c_CreateShellLink.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/create-links/extr_create-links.c_CreateShellLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*, i32*, i32*)*, i64 (%struct.TYPE_16__*, i8*)*, i64 (%struct.TYPE_16__*, i8*, i32)*, i64 (%struct.TYPE_16__*, i8*)*, i64 (%struct.TYPE_16__*, i8*)*, i64 (%struct.TYPE_16__*, i8*)* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_17__*)*, i64 (%struct.TYPE_17__*, i32*, i32)* }

@MAX_PATH = common dso_local global i32 0, align 4
@CLSID_ShellLink = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IShellLink = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"creating shortcut file '%s' to %s...\0A\00", align 1
@IID_IPersistFile = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"OK\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"error %08x\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CreateShellLink(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %17, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %18, align 8
  %24 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %25 = bitcast %struct.TYPE_16__** %15 to i32*
  %26 = call i64 @CoCreateInstance(i32* @CLSID_ShellLink, i32* null, i32 %24, i32* @IID_IShellLink, i32* %25)
  store i64 %26, i64* %19, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load i64, i64* %19, align 8
  %31 = call i64 @SUCCEEDED(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %130

33:                                               ; preds = %7
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 6
  %38 = load i64 (%struct.TYPE_16__*, i8*)*, i64 (%struct.TYPE_16__*, i8*)** %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 %38(%struct.TYPE_16__* %39, i8* %40)
  store i64 %41, i64* %19, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 5
  %49 = load i64 (%struct.TYPE_16__*, i8*)*, i64 (%struct.TYPE_16__*, i8*)** %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i64 %49(%struct.TYPE_16__* %50, i8* %51)
  store i64 %52, i64* %19, align 8
  br label %53

53:                                               ; preds = %44, %33
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  %61 = load i64 (%struct.TYPE_16__*, i8*)*, i64 (%struct.TYPE_16__*, i8*)** %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i64 %61(%struct.TYPE_16__* %62, i8* %63)
  store i64 %64, i64* %19, align 8
  br label %65

65:                                               ; preds = %56, %53
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  %73 = load i64 (%struct.TYPE_16__*, i8*, i32)*, i64 (%struct.TYPE_16__*, i8*, i32)** %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i64 %73(%struct.TYPE_16__* %74, i8* %75, i32 %76)
  store i64 %77, i64* %19, align 8
  br label %78

78:                                               ; preds = %68, %65
  %79 = load i8*, i8** %14, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = load i64 (%struct.TYPE_16__*, i8*)*, i64 (%struct.TYPE_16__*, i8*)** %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = call i64 %86(%struct.TYPE_16__* %87, i8* %88)
  store i64 %89, i64* %19, align 8
  br label %90

90:                                               ; preds = %81, %78
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i64 (%struct.TYPE_16__*, i32*, i32*)*, i64 (%struct.TYPE_16__*, i32*, i32*)** %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %97 = bitcast %struct.TYPE_17__** %16 to i32*
  %98 = call i64 %95(%struct.TYPE_16__* %96, i32* @IID_IPersistFile, i32* %97)
  store i64 %98, i64* %19, align 8
  %99 = load i64, i64* %19, align 8
  %100 = call i64 @SUCCEEDED(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %90
  %103 = load i32, i32* @CP_ACP, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* @MAX_PATH, align 4
  %106 = call i32 @MultiByteToWideChar(i32 %103, i32 0, i8* %104, i32 -1, i32* %23, i32 %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i64 (%struct.TYPE_17__*, i32*, i32)*, i64 (%struct.TYPE_17__*, i32*, i32)** %110, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i64 %111(%struct.TYPE_17__* %112, i32* %23, i32 %113)
  store i64 %114, i64* %19, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %118, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %121 = call i32 %119(%struct.TYPE_17__* %120)
  br label %122

122:                                              ; preds = %102, %90
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %126, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %129 = call i32 %127(%struct.TYPE_16__* %128)
  br label %130

130:                                              ; preds = %122, %7
  %131 = load i64, i64* %19, align 8
  %132 = call i64 @SUCCEEDED(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %140

136:                                              ; preds = %130
  %137 = load i64, i64* %19, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %136, %134
  %141 = load i64, i64* %19, align 8
  %142 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %142)
  ret i64 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @SUCCEEDED(i64) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
