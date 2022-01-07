; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_calc_recursively.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_calc_recursively.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@CCNET_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"g_open() dir %s failed:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to stat on %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_8__**)* @calc_recursively to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_recursively(i8* %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @g_dir_open(i8* %13, i32 0, %struct.TYPE_8__** %7)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %19 = load i32, i32* @CCNET_DOMAIN, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @g_set_error(%struct.TYPE_8__** %18, i32 %19, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %23)
  store i32 -1, i32* %3, align 4
  br label %90

25:                                               ; preds = %2
  store i8* null, i8** %9, align 8
  br label %26

26:                                               ; preds = %85, %25
  %27 = load i32*, i32** %8, align 8
  %28 = call i8* @g_dir_read_name(i32* %27)
  store i8* %28, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @g_build_filename(i8* %31, i8* %32, i32* null)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @STAT_FUNC(i8* %34, %struct.TYPE_7__* %10)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %39 = load i32, i32* @CCNET_DOMAIN, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @g_set_error(%struct.TYPE_8__** %38, i32 %39, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %42)
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @g_free(i8* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @g_dir_close(i32* %46)
  store i32 -1, i32* %3, align 4
  br label %90

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @S_ISDIR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %56 = call i32 @calc_recursively(i8* %54, %struct.TYPE_8__** %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @g_free(i8* %60)
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @g_dir_close(i32* %62)
  store i32 -1, i32* %3, align 4
  br label %90

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @g_free(i8* %68)
  br label %85

70:                                               ; preds = %48
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @S_ISREG(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @g_free(i8* %82)
  br label %84

84:                                               ; preds = %75, %70
  br label %85

85:                                               ; preds = %84, %64
  br label %26

86:                                               ; preds = %26
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @g_dir_close(i32* %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %59, %37, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32* @g_dir_open(i8*, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @g_set_error(%struct.TYPE_8__**, i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @g_dir_read_name(i32*) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i64 @STAT_FUNC(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
