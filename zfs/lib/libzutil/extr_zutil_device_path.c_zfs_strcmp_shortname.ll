; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_device_path.c_zfs_strcmp_shortname.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_device_path.c_zfs_strcmp_shortname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ZPOOL_IMPORT_PATH\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @zfs_strcmp_shortname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_strcmp_shortname(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %10, align 4
  store i8* null, i8** %13, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = call i8** @zpool_default_search_paths(i64* %17)
  store i8** %23, i8*** %16, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i8*, i8** %12, align 8
  %31 = call i8* @strdup(i8* %30)
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i8* @strtok(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %11, align 8
  br label %40

34:                                               ; preds = %3
  %35 = load i8**, i8*** %16, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %104, %40
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %105

44:                                               ; preds = %41
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  store i8 0, i8* %64, align 1
  br label %48

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %44
  %67 = load i32, i32* @MAXPATHLEN, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @snprintf(i8* %22, i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @MAXPATHLEN, align 4
  %75 = call i32 @zfs_append_partition(i8* %22, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  %82 = call i64 @strcmp(i8* %22, i8* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  br label %105

85:                                               ; preds = %80, %76
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %89, i8** %11, align 8
  br label %104

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %17, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i8**, i8*** %16, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %11, align 8
  br label %103

102:                                              ; preds = %90
  store i8* null, i8** %11, align 8
  br label %103

103:                                              ; preds = %102, %96
  br label %104

104:                                              ; preds = %103, %88
  br label %41

105:                                              ; preds = %84, %41
  %106 = load i8*, i8** %12, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @free(i8* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %10, align 4
  %113 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %113)
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8** @zpool_default_search_paths(i64*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @zfs_append_partition(i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
