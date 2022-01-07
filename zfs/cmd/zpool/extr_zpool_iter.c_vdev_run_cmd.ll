; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_vdev_run_cmd.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_vdev_run_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"PATH=/bin:/sbin:/usr/bin:/usr/sbin\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"VDEV_PATH=%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"VDEV_UPATH=%s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"VDEV_ENC_SYSFS_PATH=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @vdev_run_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_run_cmd(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8*], align 16
  %7 = alloca [5 x i8*], align 16
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8* null, i8** %13, align 8
  %14 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false)
  %15 = bitcast i8* %14 to [5 x i8*]*
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8** %16, align 16
  store i8** null, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %26 ]
  %29 = call i32 @asprintf(i8** %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %95

33:                                               ; preds = %27
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %43 ]
  %46 = call i32 @asprintf(i8** %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %95

50:                                               ; preds = %44
  %51 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %60 ]
  %63 = call i32 @asprintf(i8** %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %95

67:                                               ; preds = %61
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %70 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %71 = call i32 @libzfs_run_process_get_stdout_nopath(i8* %68, i8** %69, i8** %70, i8*** %8, i32* %9)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %95

75:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %91, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = load i8**, i8*** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @vdev_process_cmd_output(%struct.TYPE_4__* %81, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %94

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %76

94:                                               ; preds = %89, %76
  br label %95

95:                                               ; preds = %94, %74, %66, %49, %32
  %96 = load i8**, i8*** %8, align 8
  %97 = icmp ne i8** %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i8**, i8*** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @libzfs_free_str_array(i8** %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  store i32 1, i32* %10, align 4
  br label %103

103:                                              ; preds = %121, %102
  %104 = load i32, i32* %10, align 4
  %105 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %106 = call i32 @ARRAY_SIZE(i8** %105)
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @free(i8* %118)
  br label %120

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %103

124:                                              ; preds = %103
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #2

declare dso_local i32 @libzfs_run_process_get_stdout_nopath(i8*, i8**, i8**, i8***, i32*) #2

declare dso_local i64 @vdev_process_cmd_output(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @libzfs_free_str_array(i8**, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
