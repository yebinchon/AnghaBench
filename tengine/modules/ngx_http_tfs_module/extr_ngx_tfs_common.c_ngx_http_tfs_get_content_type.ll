; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_get_content_type.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_get_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"image/gif\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"\FF\D8\FF\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\89PNG\0D\0A\1A\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"CWS\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"FWS\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"application/x-shockwave-flash\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"BA\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"CP\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"image/bmp\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"MM\00*\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"II*\00\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"MM\00+\00\08\00\00\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"II+\00\08\00\00\00\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"image/tiff\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_get_content_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @memcmp(i32* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ngx_str_set(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @NGX_OK, align 4
  store i32 %12, i32* %3, align 4
  br label %91

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @memcmp(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @ngx_str_set(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32, i32* @NGX_OK, align 4
  store i32 %20, i32* %3, align 4
  br label %91

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @memcmp(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @ngx_str_set(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* @NGX_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %91

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @memcmp(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @memcmp(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %29
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @ngx_str_set(i32* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %40 = load i32, i32* @NGX_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %91

41:                                               ; preds = %33
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @memcmp(i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 2)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @memcmp(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @memcmp(i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 2)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @memcmp(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 2)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = call i64 @memcmp(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 2)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @memcmp(i32* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 2)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61, %57, %53, %49, %45, %41
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @ngx_str_set(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %68 = load i32, i32* @NGX_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %91

69:                                               ; preds = %61
  %70 = load i32*, i32** %4, align 8
  %71 = call i64 @memcmp(i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = load i32*, i32** %4, align 8
  %75 = call i64 @memcmp(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %4, align 8
  %79 = call i64 @memcmp(i32* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 8)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %4, align 8
  %83 = call i64 @memcmp(i32* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 8)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81, %77, %73, %69
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @ngx_str_set(i32* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %88 = load i32, i32* @NGX_OK, align 4
  store i32 %88, i32* %3, align 4
  br label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %85, %65, %37, %25, %17, %9
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
