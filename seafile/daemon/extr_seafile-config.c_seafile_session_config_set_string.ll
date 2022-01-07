; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_seafile-config.c_seafile_session_config_set_string.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_seafile-config.c_seafile_session_config_set_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i8*, i8*, i8*, i32*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"REPLACE INTO Config VALUES ('%q', '%q');\00", align 1
@KEY_CLIENT_NAME = common dso_local global i8* null, align 8
@KEY_SYNC_EXTRA_TEMP_FILE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@KEY_DISABLE_VERIFY_CERTIFICATE = common dso_local global i8* null, align 8
@KEY_USE_PROXY = common dso_local global i8* null, align 8
@KEY_PROXY_TYPE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@KEY_PROXY_ADDR = common dso_local global i8* null, align 8
@KEY_PROXY_USERNAME = common dso_local global i8* null, align 8
@KEY_PROXY_PASSWORD = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_session_config_set_string(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @sqlite3_snprintf(i32 256, i8* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %17 = call i64 @sqlite_query_exec(i32 %15, i8* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %136

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** @KEY_CLIENT_NAME, align 8
  %23 = call i64 @g_strcmp0(i8* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @g_free(i32* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = call i32* @g_strdup(i8* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 7
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** @KEY_SYNC_EXTRA_TEMP_FILE, align 8
  %37 = call i64 @g_strcmp0(i8* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @g_strcmp0(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** @TRUE, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  br label %51

47:                                               ; preds = %39
  %48 = load i8*, i8** @FALSE, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** @KEY_DISABLE_VERIFY_CERTIFICATE, align 8
  %55 = call i64 @g_strcmp0(i8* %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = call i64 @g_strcmp0(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i8*, i8** @TRUE, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  br label %69

65:                                               ; preds = %57
  %66 = load i8*, i8** @FALSE, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** @KEY_USE_PROXY, align 8
  %73 = call i64 @g_strcmp0(i8* %71, i8* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @g_strcmp0(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** @TRUE, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  br label %87

83:                                               ; preds = %75
  %84 = load i8*, i8** @FALSE, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %70
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** @KEY_PROXY_TYPE, align 8
  %91 = call i64 @g_strcmp0(i8* %89, i8* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = call i64 @g_strcmp0(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %7, align 8
  %100 = call i32* @g_strdup(i8* %99)
  br label %101

101:                                              ; preds = %98, %97
  %102 = phi i32* [ null, %97 ], [ %100, %98 ]
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  store i32* %102, i32** %104, align 8
  br label %105

105:                                              ; preds = %101, %88
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** @KEY_PROXY_ADDR, align 8
  %108 = call i64 @g_strcmp0(i8* %106, i8* %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i8*, i8** %7, align 8
  %112 = call i32* @g_strdup(i8* %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  store i32* %112, i32** %114, align 8
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i8*, i8** %6, align 8
  %117 = load i8*, i8** @KEY_PROXY_USERNAME, align 8
  %118 = call i64 @g_strcmp0(i8* %116, i8* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load i8*, i8** %7, align 8
  %122 = call i32* @g_strdup(i8* %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  br label %125

125:                                              ; preds = %120, %115
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** @KEY_PROXY_PASSWORD, align 8
  %128 = call i64 @g_strcmp0(i8* %126, i8* %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i8*, i8** %7, align 8
  %132 = call i32* @g_strdup(i8* %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32* %132, i32** %134, align 8
  br label %135

135:                                              ; preds = %130, %125
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %19
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @sqlite_query_exec(i32, i8*) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32* @g_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
