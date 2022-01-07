; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_open.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.zfs_open_bookmarks_cb_data = type { i8*, %struct.TYPE_6__*, i32* }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cannot open '%s'\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@zfs_open_bookmarks_cb = common dso_local global i32 0, align 4
@EZFS_NOENT = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @zfs_open(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.zfs_open_bookmarks_cb_data, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %17 = load i32, i32* @TEXT_DOMAIN, align 4
  %18 = call i8* @dgettext(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @snprintf(i8* %16, i32 1024, i8* %18, i8* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @B_FALSE, align 4
  %25 = call i32 @zfs_validate_name(i32* %21, i8* %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %31 = call i32 @zfs_error(i32* %28, i32 %29, i8* %30)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %139

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 35)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  store i64 0, i64* @errno, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call %struct.TYPE_6__* @make_dataset_handle(i32* %38, i8* %39)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %8, align 8
  %41 = icmp eq %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @errno, align 8
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %46 = call i32 @zfs_standard_error(i32* %43, i64 %44, i8* %45)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %139

47:                                               ; preds = %37
  br label %123

48:                                               ; preds = %32
  %49 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %11, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %12, align 8
  %53 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 0
  %54 = load i8*, i8** %6, align 8
  store i8* %54, i8** %53, align 8
  %55 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %55, align 8
  %56 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = icmp ult i64 %61, %50
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @strncpy(i8* %52, i8* %65, i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = getelementptr inbounds i8, i8* %52, i64 %77
  store i8 0, i8* %78, align 1
  store i64 0, i64* @errno, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call %struct.TYPE_6__* @make_dataset_handle(i32* %79, i8* %52)
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %13, align 8
  %81 = icmp eq %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %48
  %83 = load i32*, i32** %5, align 8
  %84 = load i64, i64* @errno, align 8
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %86 = call i32 @zfs_standard_error(i32* %83, i64 %84, i8* %85)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %119

87:                                               ; preds = %48
  store i64 0, i64* @errno, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %89 = load i32, i32* @zfs_open_bookmarks_cb, align 4
  %90 = call i64 @zfs_iter_bookmarks(%struct.TYPE_6__* %88, i32 %89, %struct.zfs_open_bookmarks_cb_data* %14)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = icmp eq %struct.TYPE_6__* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @EZFS_NOENT, align 4
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %100 = call i32 @zfs_error(i32* %97, i32 %98, i8* %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %102 = call i32 @zfs_close(%struct.TYPE_6__* %101)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %119

103:                                              ; preds = %92, %87
  %104 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = icmp eq %struct.TYPE_6__* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = load i64, i64* @errno, align 8
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %111 = call i32 @zfs_standard_error(i32* %108, i64 %109, i8* %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %113 = call i32 @zfs_close(%struct.TYPE_6__* %112)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %119

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %8, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %118 = call i32 @zfs_close(%struct.TYPE_6__* %117)
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %114, %107, %96, %82
  %120 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %15, align 4
  switch i32 %121, label %141 [
    i32 0, label %122
    i32 1, label %139
  ]

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %47
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* @EZFS_BADTYPE, align 4
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %134 = call i32 @zfs_error(i32* %131, i32 %132, i8* %133)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %136 = call i32 @zfs_close(%struct.TYPE_6__* %135)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %139

137:                                              ; preds = %123
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %4, align 8
  br label %139

139:                                              ; preds = %137, %130, %119, %42, %27
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %140

141:                                              ; preds = %119
  unreachable
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_validate_name(i32*, i8*, i32, i32) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_6__* @make_dataset_handle(i32*, i8*) #1

declare dso_local i32 @zfs_standard_error(i32*, i64, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @zfs_iter_bookmarks(%struct.TYPE_6__*, i32, %struct.zfs_open_bookmarks_cb_data*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
