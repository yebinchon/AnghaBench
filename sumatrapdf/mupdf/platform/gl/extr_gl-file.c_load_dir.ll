; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_load_dir.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_load_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i64, %struct.TYPE_4__*, i64 (i8*)*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dirent = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@fc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@cmp_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @load_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_dir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 0), align 8
  %14 = call i32 @realpath(i8* %12, i8* %13)
  %15 = load i32, i32* @ctx, align 4
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 0), align 8
  %17 = call i32 @fz_is_directory(i32 %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %124

20:                                               ; preds = %1
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 0), align 8
  %22 = call i32 @ui_input_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 5), i8* %21)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 0), align 8
  %24 = call i32* @opendir(i8* %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 3), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 3), align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FILENAME_MAX, align 4
  %38 = call i32 @fz_strlcpy(i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  br label %119

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %115, %75, %41
  %43 = load i32*, i32** %5, align 8
  %44 = call %struct.dirent* @readdir(i32* %43)
  store %struct.dirent* %44, %struct.dirent** %6, align 8
  %45 = icmp ne %struct.dirent* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 3), align 8
  %49 = call i64 @nelem(%struct.TYPE_4__* %48)
  %50 = trunc i64 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %47, %51
  br label %53

53:                                               ; preds = %46, %42
  %54 = phi i1 [ false, %42 ], [ %52, %46 ]
  br i1 %54, label %55, label %116

55:                                               ; preds = %53
  %56 = load %struct.dirent*, %struct.dirent** %6, align 8
  %57 = getelementptr inbounds %struct.dirent, %struct.dirent* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %76

63:                                               ; preds = %55
  %64 = load %struct.dirent*, %struct.dirent** %6, align 8
  %65 = getelementptr inbounds %struct.dirent, %struct.dirent* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.dirent*, %struct.dirent** %6, align 8
  %71 = getelementptr inbounds %struct.dirent, %struct.dirent* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %42

76:                                               ; preds = %69, %63, %55
  %77 = trunc i64 %9 to i32
  %78 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 0), align 8
  %79 = load %struct.dirent*, %struct.dirent** %6, align 8
  %80 = getelementptr inbounds %struct.dirent, %struct.dirent* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @fz_snprintf(i8* %11, i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %78, i8* %81)
  %83 = load i32, i32* @ctx, align 4
  %84 = call i32 @fz_is_directory(i32 %83, i8* %11)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 3), align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 3), align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %76
  %96 = load i64 (i8*)*, i64 (i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 4), align 8
  %97 = icmp ne i64 (i8*)* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i64 (i8*)*, i64 (i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 4), align 8
  %100 = call i64 %99(i8* %11)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %98, %95, %76
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 3), align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dirent*, %struct.dirent** %6, align 8
  %109 = getelementptr inbounds %struct.dirent, %struct.dirent* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* @FILENAME_MAX, align 4
  %112 = call i32 @fz_strlcpy(i32 %107, i8* %110, i32 %111)
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  br label %115

115:                                              ; preds = %102, %98
  br label %42

116:                                              ; preds = %53
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @closedir(i32* %117)
  br label %119

119:                                              ; preds = %116, %27
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 3), align 8
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fc, i32 0, i32 2), align 8
  %122 = load i32, i32* @cmp_entry, align 4
  %123 = call i32 @qsort(%struct.TYPE_4__* %120, i64 %121, i32 8, i32 %122)
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %119, %19
  %125 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %7, align 4
  switch i32 %126, label %128 [
    i32 0, label %127
    i32 1, label %127
  ]

127:                                              ; preds = %124, %124
  ret void

128:                                              ; preds = %124
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @realpath(i8*, i8*) #2

declare dso_local i32 @fz_is_directory(i32, i8*) #2

declare dso_local i32 @ui_input_init(i32*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @fz_strlcpy(i32, i8*, i32) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @nelem(%struct.TYPE_4__*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @qsort(%struct.TYPE_4__*, i64, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
