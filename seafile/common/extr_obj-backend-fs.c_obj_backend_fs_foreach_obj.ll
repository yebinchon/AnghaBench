; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_obj-backend-fs.c_obj_backend_fs_foreach_obj.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_obj-backend-fs.c_obj_backend_fs_foreach_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to open object dir %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32, i32 (i8*, i32, i8*, i8*)*, i8*)* @obj_backend_fs_foreach_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obj_backend_fs_foreach_obj(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 (i8*, i32, i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, i32, i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [128 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (i8*, i32, i8*, i8*)* %3, i32 (i8*, i32, i8*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %11, align 8
  store i8* null, i8** %12, align 8
  store i32* null, i32** %14, align 8
  %26 = load i32, i32* @SEAF_PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %19, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  store i32 0, i32* %22, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @g_build_filename(i32 %32, i8* %33, i32* null)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = call i32* @g_dir_open(i8* %37, i32 0, i32* null)
  store i32* %38, i32** %14, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %5
  br label %91

42:                                               ; preds = %5
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @memcpy(i8* %29, i8* %43, i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %29, i64 %47
  store i8* %48, i8** %21, align 8
  br label %49

49:                                               ; preds = %87, %64, %42
  %50 = load i32*, i32** %14, align 8
  %51 = call i8* @g_dir_read_name(i32* %50)
  store i8* %51, i8** %16, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  %54 = load i8*, i8** %21, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 %27, %56
  %58 = trunc i64 %57 to i32
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %54, i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = call i32* @g_dir_open(i8* %29, i32 0, i32* null)
  store i32* %61, i32** %15, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %53
  %65 = call i32 @seaf_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %49

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %86, %66
  %68 = load i32*, i32** %15, align 8
  %69 = call i8* @g_dir_read_name(i32* %68)
  store i8* %69, i8** %17, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %73 = load i8*, i8** %16, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %72, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %74)
  %76 = load i32 (i8*, i32, i8*, i8*)*, i32 (i8*, i32, i8*, i8*)** %9, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 %76(i8* %77, i32 %78, i8* %79, i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @g_dir_close(i32* %84)
  br label %91

86:                                               ; preds = %71
  br label %67

87:                                               ; preds = %67
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @g_dir_close(i32* %88)
  br label %49

90:                                               ; preds = %49
  br label %91

91:                                               ; preds = %90, %83, %41
  %92 = load i32*, i32** %14, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @g_dir_close(i32* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @g_free(i8* %98)
  %100 = load i32, i32* %22, align 4
  %101 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %101)
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @g_build_filename(i32, i8*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @g_dir_open(i8*, i32, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i8* @g_dir_read_name(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @seaf_warning(i8*, i8*) #2

declare dso_local i32 @g_dir_close(i32*) #2

declare dso_local i32 @g_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
