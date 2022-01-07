; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_pull-tar.c_tar_pull_make_local_copy.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_pull-tar.c_tar_pull_make_local_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, %struct.TYPE_5__*, i64, i32, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [8 x i8] c".nspawn\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@COPY_REFLINK = common dso_local global i32 0, align 4
@COPY_REPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Settings file %s already exists, not replacing.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Skipping creation of settings file, since none was found.\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Failed to copy settings files %s, ignoring: %m\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Created new settings file %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @tar_pull_make_local_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tar_pull_make_local_copy(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_5__* %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call i32 @assert(%struct.TYPE_5__* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pull_make_local_copy(i32 %20, i32 %23, i32 %26, i64 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %107

35:                                               ; preds = %17
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %106

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @assert(%struct.TYPE_5__* %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = call i32 @tar_pull_determine_path(%struct.TYPE_5__* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %107

53:                                               ; preds = %40
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @strjoina(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %60, i8** %5, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* @COPY_REFLINK, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %53
  %71 = load i32, i32* @COPY_REPLACE, align 4
  br label %73

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = or i32 %65, %74
  %76 = call i32 @copy_file_atomic(i32 %63, i8* %64, i32 436, i32 0, i32 0, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @EEXIST, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i32, i32* %4, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @log_warning_errno(i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %105

85:                                               ; preds = %73
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @log_debug_errno(i32 %91, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %104

93:                                               ; preds = %85
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %4, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @log_warning_errno(i32 %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  br label %103

100:                                              ; preds = %93
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @log_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %100, %96
  br label %104

104:                                              ; preds = %103, %90
  br label %105

105:                                              ; preds = %104, %81
  br label %106

106:                                              ; preds = %105, %35
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %51, %33, %16
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @pull_make_local_copy(i32, i32, i32, i64) #1

declare dso_local i32 @tar_pull_determine_path(%struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i8* @strjoina(i32, i8*, i32, i8*) #1

declare dso_local i32 @copy_file_atomic(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i8*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @log_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
