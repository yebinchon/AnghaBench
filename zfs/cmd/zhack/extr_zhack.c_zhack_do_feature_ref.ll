; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_zhack_do_feature_ref.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_zhack_do_feature_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { i8*, i8*, i32, i32, i32*, i32* }

@B_FALSE = common dso_local global i64 0, align 8
@SPA_FEATURE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"zhack\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"+md\00", align 1
@ZFEATURE_FLAG_MOS = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"error: missing feature or pool name\0A\00", align 1
@FTAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid feature guid: %s\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"'%s' is a real feature, will not change refcount\00", align 1
@ZFEATURE_FLAG_READONLY_COMPAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"feature is not enabled: %s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"feature refcount already 0: %s\00", align 1
@feature_decr_sync = common dso_local global i32 0, align 4
@feature_incr_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @zhack_do_feature_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zhack_do_feature_ref(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca [1 x i32], align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = load i64, i64* @B_FALSE, align 8
  store i64 %13, i64* %7, align 8
  %14 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %15 = load i32, i32* @SPA_FEATURE_NONE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* @SPA_FEATURE_NONE, align 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  store i32 1, i32* @optind, align 4
  br label %23

23:                                               ; preds = %39, %2
  %24 = load i32, i32* %3, align 4
  %25 = load i8**, i8*** %4, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %37 [
    i32 109, label %30
    i32 100, label %35
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @ZFEATURE_FLAG_MOS, align 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 8
  br label %39

35:                                               ; preds = %28
  %36 = load i64, i64* @B_TRUE, align 8
  store i64 %36, i64* %7, align 8
  br label %39

37:                                               ; preds = %28
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %35, %30
  br label %23

40:                                               ; preds = %23
  %41 = load i32, i32* @optind, align 4
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @optind, align 4
  %45 = load i8**, i8*** %4, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8** %47, i8*** %4, align 8
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %50, %40
  %55 = load i8**, i8*** %4, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %6, align 8
  %58 = load i8**, i8*** %4, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @zfeature_is_valid_guid(i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @FTAG, align 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @fatal(%struct.TYPE_11__* null, i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %66, %54
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* @B_FALSE, align 8
  %74 = load i32, i32* @FTAG, align 4
  %75 = call i32 @zhack_spa_open(i8* %72, i64 %73, i32 %74, %struct.TYPE_11__** %8)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @zfeature_is_supported(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = load i32, i32* @FTAG, align 4
  %86 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @fatal(%struct.TYPE_11__* %84, i32 %85, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %71
  %88 = load i32*, i32** %9, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @zap_contains(i32* %88, i32 %91, i8* %93)
  %95 = icmp eq i64 0, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load i32, i32* @ZFEATURE_FLAG_READONLY_COMPAT, align 4
  %98 = xor i32 %97, -1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %98
  store i32 %101, i32* %99, align 8
  br label %123

102:                                              ; preds = %87
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @zap_contains(i32* %103, i32 %106, i8* %108)
  %110 = icmp eq i64 0, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load i32, i32* @ZFEATURE_FLAG_READONLY_COMPAT, align 4
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 8
  br label %122

116:                                              ; preds = %102
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %118 = load i32, i32* @FTAG, align 4
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @fatal(%struct.TYPE_11__* %117, i32 %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %116, %111
  br label %123

123:                                              ; preds = %122, %96
  %124 = load i64, i64* %7, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %123
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %128 = call i64 @feature_get_refcount_from_disk(%struct.TYPE_11__* %127, %struct.TYPE_10__* %10, i64* %12)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i64, i64* %12, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %135 = load i32, i32* @FTAG, align 4
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @fatal(%struct.TYPE_11__* %134, i32 %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %133, %130, %126
  br label %140

140:                                              ; preds = %139, %123
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %142 = call i32 @spa_name(%struct.TYPE_11__* %141)
  %143 = load i64, i64* %7, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @feature_decr_sync, align 4
  br label %149

147:                                              ; preds = %140
  %148 = load i32, i32* @feature_incr_sync, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %152 = call i32 @dsl_sync_task(i32 %142, i32* null, i32 %150, %struct.TYPE_10__* %10, i32 5, i32 %151)
  %153 = call i32 @VERIFY0(i32 %152)
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = load i32, i32* @FTAG, align 4
  %156 = call i32 @spa_close(%struct.TYPE_11__* %154, i32 %155)
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @zfeature_is_valid_guid(i8*) #1

declare dso_local i32 @fatal(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @zhack_spa_open(i8*, i64, i32, %struct.TYPE_11__**) #1

declare dso_local i64 @zfeature_is_supported(i8*) #1

declare dso_local i64 @zap_contains(i32*, i32, i8*) #1

declare dso_local i64 @feature_get_refcount_from_disk(%struct.TYPE_11__*, %struct.TYPE_10__*, i64*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_sync_task(i32, i32*, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_11__*) #1

declare dso_local i32 @spa_close(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
