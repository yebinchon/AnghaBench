; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_traverse_dir.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_traverse_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i8*, i32 }

@FALSE = common dso_local global i64 0, align 8
@SEAF_METADATA_TYPE_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[fs-mgr]get seafdir %s failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)*, i8*, i64)* @traverse_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_dir(i32* %0, i8* %1, i32 %2, i8* %3, i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)* %4, i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %19, align 8
  %21 = load i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)*, i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)** %13, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* @SEAF_METADATA_TYPE_DIR, align 4
  %27 = load i8*, i8** %14, align 8
  %28 = call i32 %21(i32* %22, i8* %23, i32 %24, i8* %25, i32 %26, i8* %27, i64* %19)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %7
  %31 = load i64, i64* %15, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 -1, i32* %8, align 4
  br label %125

34:                                               ; preds = %30, %7
  %35 = load i64, i64* %19, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %125

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = call %struct.TYPE_7__* @seaf_fs_manager_get_seafdir(i32* %39, i8* %40, i32 %41, i8* %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %16, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @seaf_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load i64, i64* %15, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %125

52:                                               ; preds = %46
  store i32 -1, i32* %8, align 4
  br label %125

53:                                               ; preds = %38
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %17, align 8
  br label %57

57:                                               ; preds = %118, %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %60, label %122

60:                                               ; preds = %57
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %18, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @S_ISREG(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %60
  %71 = load i32*, i32** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)*, i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)** %13, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = call i64 @traverse_file(i32* %71, i8* %72, i32 %73, i8* %76, i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)* %77, i8* %78, i64 %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %70
  %83 = load i64, i64* %15, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %87 = call i32 @seaf_dir_free(%struct.TYPE_7__* %86)
  store i32 -1, i32* %8, align 4
  br label %125

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %70
  br label %117

90:                                               ; preds = %60
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @S_ISDIR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %90
  %97 = load i32*, i32** %9, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)*, i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)** %13, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i64, i64* %15, align 8
  %106 = call i32 @traverse_dir(i32* %97, i8* %98, i32 %99, i8* %102, i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)* %103, i8* %104, i64 %105)
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %96
  %109 = load i64, i64* %15, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %113 = call i32 @seaf_dir_free(%struct.TYPE_7__* %112)
  store i32 -1, i32* %8, align 4
  br label %125

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %96
  br label %116

116:                                              ; preds = %115, %90
  br label %117

117:                                              ; preds = %116, %89
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %17, align 8
  br label %57

122:                                              ; preds = %57
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %124 = call i32 @seaf_dir_free(%struct.TYPE_7__* %123)
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %122, %111, %85, %52, %51, %37, %33
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_7__* @seaf_fs_manager_get_seafdir(i32*, i8*, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @traverse_file(i32*, i8*, i32, i8*, i32 (i32*, i8*, i32, i8*, i32, i8*, i64*)*, i8*, i64) #1

declare dso_local i32 @seaf_dir_free(%struct.TYPE_7__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
