; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_read_directory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_read_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@ET_SHELL = common dso_local global i64 0, align 8
@Globals = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@ET_UNIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64*, i32, i32)* @read_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_directory(%struct.TYPE_10__* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ET_SHELL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @read_directory_shell(%struct.TYPE_10__* %24, i32 %25)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Globals, i32 0, i32 0), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %23
  %30 = load i64*, i64** %6, align 8
  store i64* %30, i64** %12, align 8
  store i64* %17, i64** %13, align 8
  br label %31

31:                                               ; preds = %35, %29
  %32 = load i64*, i64** %12, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i64*, i64** %12, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %12, align 8
  %38 = load i64, i64* %36, align 8
  %39 = load i64*, i64** %13, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %13, align 8
  store i64 %38, i64* %39, align 8
  br label %31

41:                                               ; preds = %31
  %42 = load i64*, i64** %13, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %13, align 8
  store i64 92, i64* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %11, align 8
  br label %47

47:                                               ; preds = %66, %41
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @read_directory_shell(%struct.TYPE_10__* %59, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @SortDirectory(%struct.TYPE_10__* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %50
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %11, align 8
  br label %47

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %23
  br label %126

72:                                               ; preds = %4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = load i64*, i64** %6, align 8
  %75 = call i32 @read_directory_win(%struct.TYPE_10__* %73, i64* %74)
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Globals, i32 0, i32 0), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %125

78:                                               ; preds = %72
  %79 = load i64*, i64** %6, align 8
  store i64* %79, i64** %12, align 8
  store i64* %17, i64** %13, align 8
  br label %80

80:                                               ; preds = %84, %78
  %81 = load i64*, i64** %12, align 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i64*, i64** %12, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 1
  store i64* %86, i64** %12, align 8
  %87 = load i64, i64* %85, align 8
  %88 = load i64*, i64** %13, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %13, align 8
  store i64 %87, i64* %88, align 8
  br label %80

90:                                               ; preds = %80
  %91 = load i64*, i64** %13, align 8
  %92 = getelementptr inbounds i64, i64* %91, i32 1
  store i64* %92, i64** %13, align 8
  store i64 92, i64* %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %11, align 8
  br label %96

96:                                               ; preds = %120, %90
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = icmp ne %struct.TYPE_10__* %97, null
  br i1 %98, label %99, label %124

99:                                               ; preds = %96
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %99
  %108 = load i64*, i64** %13, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @lstrcpyW(i64* %108, i32 %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %115 = call i32 @read_directory_win(%struct.TYPE_10__* %114, i64* %17)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @SortDirectory(%struct.TYPE_10__* %116, i32 %117)
  br label %119

119:                                              ; preds = %107, %99
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  store %struct.TYPE_10__* %123, %struct.TYPE_10__** %11, align 8
  br label %96

124:                                              ; preds = %96
  br label %125

125:                                              ; preds = %124, %72
  br label %126

126:                                              ; preds = %125, %71
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @SortDirectory(%struct.TYPE_10__* %127, i32 %128)
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_directory_shell(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @SortDirectory(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @read_directory_win(%struct.TYPE_10__*, i64*) #2

declare dso_local i32 @lstrcpyW(i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
