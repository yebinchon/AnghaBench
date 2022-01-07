; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infrosput.c_InfWriteFile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infrosput.c_InfWriteFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [40 x i8] c"Failed to create buffer (Status 0x%lx)\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@FILE_NON_DIRECTORY_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"NtOpenFile() failed (Status %lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"NtOpenFile() successful\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i32] [i32 59, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [5 x i32] [i32 13, i32 10, i32 13, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"NtWriteFile() failed (Status %lx)\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfWriteFile(i64 %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @InfpBuildFileBuffer(i32 %19, i32** %13, i32* %14)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @INF_SUCCESS(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  %26 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %130

28:                                               ; preds = %3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = call i32 @InitializeObjectAttributes(i32* %8, %struct.TYPE_5__* %29, i32 0, i32* null, i32* null)
  %31 = load i32, i32* @GENERIC_WRITE, align 4
  %32 = load i32, i32* @SYNCHRONIZE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %35 = load i32, i32* @FILE_NON_DIRECTORY_FILE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @NtOpenFile(i32* %10, i32 %33, i32* %8, i32* %9, i32 0, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @INF_SUCCESS(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @FREE(i32* %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %130

47:                                               ; preds = %28
  %48 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = icmp ne %struct.TYPE_5__* null, %49
  br i1 %50, label %51, label %112

51:                                               ; preds = %47
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 0, %54
  br i1 %55, label %56, label %112

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 28
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32* @MALLOC(i32 %63)
  store i32* %64, i32** %15, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = icmp ne i32* null, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %56
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @strcpyW(i32* %68, i8* bitcast ([3 x i32]* @.str.3 to i8*))
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %92, %67
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, 4
  %78 = icmp ult i64 %72, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %70
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 2, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  br label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %70

95:                                               ; preds = %70
  %96 = load i32*, i32** %15, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = udiv i64 %100, 4
  %102 = add i64 2, %101
  %103 = getelementptr inbounds i32, i32* %96, i64 %102
  %104 = call i32 @strcpyW(i32* %103, i8* bitcast ([5 x i32]* @.str.4 to i8*))
  %105 = load i32, i32* %10, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @NtWriteFile(i32 %105, i32* null, i32* null, i32* null, i32* %9, i32* %106, i32 %107, i32* null, i32* null)
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @FREE(i32* %109)
  br label %111

111:                                              ; preds = %95, %56
  br label %112

112:                                              ; preds = %111, %51, %47
  %113 = load i32, i32* %10, align 4
  %114 = load i32*, i32** %13, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @NtWriteFile(i32 %113, i32* null, i32* null, i32* null, i32* %9, i32* %114, i32 %115, i32* null, i32* null)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @NtClose(i32 %117)
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @FREE(i32* %119)
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @INF_SUCCESS(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %112
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @DPRINT1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %4, align 4
  br label %130

128:                                              ; preds = %112
  %129 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %124, %41, %24
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @InfpBuildFileBuffer(i32, i32**, i32*) #1

declare dso_local i32 @INF_SUCCESS(i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, %struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenFile(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @FREE(i32*) #1

declare dso_local i32* @MALLOC(i32) #1

declare dso_local i32 @strcpyW(i32*, i8*) #1

declare dso_local i32 @NtWriteFile(i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
