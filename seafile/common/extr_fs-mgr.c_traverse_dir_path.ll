; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_traverse_dir_path.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_traverse_dir_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__* }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"get seafdir %s:%s failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, %struct.TYPE_9__*, i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)*, i8*)* @traverse_dir_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_dir_path(i32* %0, i8* %1, i32 %2, i8* %3, %struct.TYPE_9__* %4, i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %13, align 8
  store i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)* %5, i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)** %14, align 8
  store i8* %6, i8** %15, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %19, align 8
  store i32 0, i32* %21, align 4
  %23 = load i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)*, i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)** %14, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = call i32 %23(i32* %24, i8* %25, %struct.TYPE_9__* %26, i8* %27, i64* %19)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %117

31:                                               ; preds = %7
  %32 = load i64, i64* %19, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %117

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_10__* @seaf_fs_manager_get_seafdir(i32* %36, i8* %37, i32 %38, i32 %41)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %16, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @seaf_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %49)
  store i32 -1, i32* %8, align 4
  br label %117

51:                                               ; preds = %35
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %17, align 8
  br label %55

55:                                               ; preds = %109, %51
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %57 = icmp ne %struct.TYPE_11__* %56, null
  br i1 %57, label %58, label %113

58:                                               ; preds = %55
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %18, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @g_strconcat(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32* null)
  store i8* %67, i8** %20, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @S_ISREG(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %58
  %74 = load i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)*, i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)** %14, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i8*, i8** %20, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = call i32 %74(i32* %75, i8* %76, %struct.TYPE_9__* %77, i8* %78, i64* %19)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i8*, i8** %20, align 8
  %83 = call i32 @g_free(i8* %82)
  store i32 -1, i32* %21, align 4
  br label %113

84:                                               ; preds = %73
  br label %106

85:                                               ; preds = %58
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @S_ISDIR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load i32*, i32** %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i8*, i8** %20, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %97 = load i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)*, i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)** %14, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = call i32 @traverse_dir_path(i32* %92, i8* %93, i32 %94, i8* %95, %struct.TYPE_9__* %96, i32 (i32*, i8*, %struct.TYPE_9__*, i8*, i64*)* %97, i8* %98)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i8*, i8** %20, align 8
  %103 = call i32 @g_free(i8* %102)
  store i32 -1, i32* %21, align 4
  br label %113

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %85
  br label %106

106:                                              ; preds = %105, %84
  %107 = load i8*, i8** %20, align 8
  %108 = call i32 @g_free(i8* %107)
  br label %109

109:                                              ; preds = %106
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %17, align 8
  br label %55

113:                                              ; preds = %101, %81, %55
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %115 = call i32 @seaf_dir_free(%struct.TYPE_10__* %114)
  %116 = load i32, i32* %21, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %113, %45, %34, %30
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_10__* @seaf_fs_manager_get_seafdir(i32*, i8*, i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i8* @g_strconcat(i8*, i8*, i32, i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @seaf_dir_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
