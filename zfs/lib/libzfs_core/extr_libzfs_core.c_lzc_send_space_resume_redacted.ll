; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_lzc_send_space_resume_redacted.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_lzc_send_space_resume_redacted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@LZC_SEND_FLAG_LARGE_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"largeblockok\00", align 1
@LZC_SEND_FLAG_EMBED_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"embedok\00", align 1
@LZC_SEND_FLAG_COMPRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"compressok\00", align 1
@LZC_SEND_FLAG_RAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"rawok\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"resume_object\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"resume_offset\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"redactbook\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@ZFS_IOC_SEND_SPACE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"space\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzc_send_space_resume_redacted(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %22 = call i32* (...) @fnvlist_alloc()
  store i32* %22, i32** %19, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %9
  %26 = load i32*, i32** %19, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @fnvlist_add_string(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %9
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @LZC_SEND_FLAG_LARGE_BLOCK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %19, align 8
  %36 = call i32 @fnvlist_add_boolean(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @LZC_SEND_FLAG_EMBED_DATA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %19, align 8
  %44 = call i32 @fnvlist_add_boolean(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @LZC_SEND_FLAG_COMPRESS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** %19, align 8
  %52 = call i32 @fnvlist_add_boolean(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @LZC_SEND_FLAG_RAW, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %19, align 8
  %60 = call i32 @fnvlist_add_boolean(i32* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** %19, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @fnvlist_add_uint64(i32* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %19, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @fnvlist_add_uint64(i32* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %19, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @fnvlist_add_uint64(i32* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %67, %64
  %78 = load i8*, i8** %16, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32*, i32** %19, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = call i32 @fnvlist_add_string(i32* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32*, i32** %19, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @fnvlist_add_int32(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* @ZFS_IOC_SEND_SPACE, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @lzc_ioctl(i32 %92, i8* %93, i32* %94, i32** %20)
  store i32 %95, i32* %21, align 4
  %96 = load i32*, i32** %19, align 8
  %97 = call i32 @nvlist_free(i32* %96)
  %98 = load i32, i32* %21, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load i32*, i32** %20, align 8
  %102 = call i32 @fnvlist_lookup_uint64(i32* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %103 = load i32*, i32** %18, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %91
  %105 = load i32*, i32** %20, align 8
  %106 = call i32 @nvlist_free(i32* %105)
  %107 = load i32, i32* %21, align 4
  ret i32 %107
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @lzc_ioctl(i32, i8*, i32*, i32**) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @fnvlist_lookup_uint64(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
