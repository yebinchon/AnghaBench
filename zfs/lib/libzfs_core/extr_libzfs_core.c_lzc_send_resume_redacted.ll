; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_lzc_send_resume_redacted.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_lzc_send_resume_redacted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fromsnap\00", align 1
@LZC_SEND_FLAG_LARGE_BLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"largeblockok\00", align 1
@LZC_SEND_FLAG_EMBED_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"embedok\00", align 1
@LZC_SEND_FLAG_COMPRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"compressok\00", align 1
@LZC_SEND_FLAG_RAW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"rawok\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"resume_object\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"resume_offset\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"redactbook\00", align 1
@ZFS_IOC_SEND_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzc_send_resume_redacted(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = call i32* (...) @fnvlist_alloc()
  store i32* %17, i32** %15, align 8
  %18 = load i32*, i32** %15, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @fnvlist_add_int32(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load i32*, i32** %15, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @fnvlist_add_string(i32* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %7
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @LZC_SEND_FLAG_LARGE_BLOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %15, align 8
  %34 = call i32 @fnvlist_add_boolean(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @LZC_SEND_FLAG_EMBED_DATA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @fnvlist_add_boolean(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @LZC_SEND_FLAG_COMPRESS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @fnvlist_add_boolean(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @LZC_SEND_FLAG_RAW, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @fnvlist_add_boolean(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62, %59
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @fnvlist_add_uint64(i32* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @fnvlist_add_uint64(i32* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %65, %62
  %73 = load i8*, i8** %14, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32*, i32** %15, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 @fnvlist_add_string(i32* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32, i32* @ZFS_IOC_SEND_NEW, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @lzc_ioctl(i32 %80, i8* %81, i32* %82, i32* null)
  store i32 %83, i32* %16, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @nvlist_free(i32* %84)
  %86 = load i32, i32* %16, align 4
  ret i32 %86
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i32 @lzc_ioctl(i32, i8*, i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
