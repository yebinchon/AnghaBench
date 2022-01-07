; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_zhack_do_feature_enable.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_zhack_do_feature_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i64, i32, i32* }

@SPA_FEATURE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"zhack\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"+rd:\00", align 1
@ZFEATURE_FLAG_READONLY_COMPAT = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"zhack injected\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"error: missing feature or pool name\0A\00", align 1
@FTAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid feature guid: %s\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"'%s' is a real feature, will not enable\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"feature already enabled: %s\00", align 1
@zhack_feature_enable_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @zhack_do_feature_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zhack_do_feature_enable(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca [1 x i32], align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %13 = load i32, i32* @SPA_FEATURE_NONE, align 4
  store i32 %13, i32* %12, align 4
  store i8* null, i8** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 5
  store i32* %16, i32** %17, align 8
  %18 = load i32, i32* @SPA_FEATURE_NONE, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  store i32 1, i32* @optind, align 4
  br label %20

20:                                               ; preds = %37, %2
  %21 = load i32, i32* %3, align 4
  %22 = load i8**, i8*** %4, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %35 [
    i32 114, label %27
    i32 100, label %32
  ]

27:                                               ; preds = %25
  %28 = load i64, i64* @ZFEATURE_FLAG_READONLY_COMPAT, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = or i64 %30, %28
  store i64 %31, i64* %29, align 8
  br label %37

32:                                               ; preds = %25
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i8* @strdup(i8* %33)
  store i8* %34, i8** %6, align 8
  br label %37

35:                                               ; preds = %25
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %32, %27
  br label %20

38:                                               ; preds = %20
  %39 = load i8*, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i8* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* @optind, align 4
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @optind, align 4
  %50 = load i8**, i8*** %4, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8*, i8** %50, i64 %51
  store i8** %52, i8*** %4, align 8
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %55, %43
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %7, align 8
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @zfeature_is_valid_guid(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* @FTAG, align 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @fatal(%struct.TYPE_9__* null, i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %71, %59
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* @B_FALSE, align 4
  %79 = load i32, i32* @FTAG, align 4
  %80 = call i32 @zhack_spa_open(i8* %77, i32 %78, i32 %79, %struct.TYPE_9__** %8)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @zfeature_is_supported(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = load i32, i32* @FTAG, align 4
  %91 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @fatal(%struct.TYPE_9__* %89, i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %76
  %93 = load i32*, i32** %9, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @zap_contains(i32* %93, i32 %96, i8* %98)
  %100 = icmp eq i64 0, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = load i32, i32* @FTAG, align 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @fatal(%struct.TYPE_9__* %102, i32 %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %101, %92
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = call i32 @spa_name(%struct.TYPE_9__* %108)
  %110 = load i32, i32* @zhack_feature_enable_sync, align 4
  %111 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %112 = call i32 @dsl_sync_task(i32 %109, i32* null, i32 %110, %struct.TYPE_8__* %10, i32 5, i32 %111)
  %113 = call i32 @VERIFY0(i32 %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = load i32, i32* @FTAG, align 4
  %116 = call i32 @spa_close(%struct.TYPE_9__* %114, i32 %115)
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @free(i8* %117)
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @zfeature_is_valid_guid(i8*) #1

declare dso_local i32 @fatal(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @zhack_spa_open(i8*, i32, i32, %struct.TYPE_9__**) #1

declare dso_local i64 @zfeature_is_supported(i8*) #1

declare dso_local i64 @zap_contains(i32*, i32, i8*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_sync_task(i32, i32*, i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_9__*) #1

declare dso_local i32 @spa_close(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
