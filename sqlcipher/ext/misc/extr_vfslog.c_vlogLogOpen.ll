; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogLogOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogLogOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i64, i32, %struct.TYPE_8__*, %struct.TYPE_8__** }

@.str = private unnamed_addr constant [5 x i8] c"-wal\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-journal\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"-mj??????9??\00", align 1
@SQLITE_MUTEX_STATIC_MASTER = common dso_local global i32 0, align 4
@allLogs = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"%.*s-debuglog-%lld\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*)* @vlogLogOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @vlogLogOpen(i8* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 4
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 -4
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %177

24:                                               ; preds = %15, %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 8
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 -8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 8
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %51

38:                                               ; preds = %27, %24
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 12
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = getelementptr inbounds i8, i8* %45, i64 -12
  %47 = call i64 @sqlite3_strglob(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %177

50:                                               ; preds = %41, %38
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 96, %54
  %56 = add i64 %55, 60
  %57 = trunc i64 %56 to i32
  %58 = call %struct.TYPE_8__* @sqlite3_malloc64(i32 %57)
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %8, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = icmp eq %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %177

62:                                               ; preds = %52
  %63 = load i32, i32* @SQLITE_MUTEX_STATIC_MASTER, align 4
  %64 = call i32* @sqlite3_mutex_alloc(i32 %63)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @sqlite3_mutex_enter(i32* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @allLogs, align 8
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %7, align 8
  br label %68

68:                                               ; preds = %87, %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = icmp ne %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @memcmp(i8* %80, i8* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  br label %91

86:                                               ; preds = %77, %71
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %7, align 8
  br label %68

91:                                               ; preds = %85, %68
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = icmp eq %struct.TYPE_8__* %92, null
  br i1 %93, label %94, label %153

94:                                               ; preds = %91
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = call i32 @memset(%struct.TYPE_8__* %96, i32 0, i32 96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 2
  %100 = bitcast %struct.TYPE_8__* %99 to i8*
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = call i32 (...) @vlog_time()
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 60
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i8*, i8** %3, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @sqlite3_snprintf(i32 %105, i8* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %109, i8* %110, i32 %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @fopen(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %94
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @sqlite3_mutex_leave(i32* %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = call i32 @sqlite3_free(%struct.TYPE_8__* %126)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %177

128:                                              ; preds = %94
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  store i64 %135, i64* %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 5
  store %struct.TYPE_8__** @allLogs, %struct.TYPE_8__*** %140, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @allLogs, align 8
  %142 = icmp ne %struct.TYPE_8__* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %128
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** @allLogs, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 5
  store %struct.TYPE_8__** %145, %struct.TYPE_8__*** %147, align 8
  br label %148

148:                                              ; preds = %143, %128
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** @allLogs, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  store %struct.TYPE_8__* %149, %struct.TYPE_8__** %151, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %152, %struct.TYPE_8__** @allLogs, align 8
  br label %153

153:                                              ; preds = %148, %91
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @sqlite3_mutex_leave(i32* %154)
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %157 = icmp ne %struct.TYPE_8__* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = call i32 @sqlite3_free(%struct.TYPE_8__* %159)
  br label %162

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %158
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = icmp ne %struct.TYPE_8__* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 1
  store %struct.TYPE_8__* %170, %struct.TYPE_8__** %7, align 8
  br label %171

171:                                              ; preds = %168, %165, %162
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %176, %struct.TYPE_8__** %2, align 8
  br label %177

177:                                              ; preds = %171, %123, %61, %49, %23
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %178
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @sqlite3_strglob(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @sqlite3_malloc64(i32) #1

declare dso_local i32* @sqlite3_mutex_alloc(i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @vlog_time(...) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, i8*, i32) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
