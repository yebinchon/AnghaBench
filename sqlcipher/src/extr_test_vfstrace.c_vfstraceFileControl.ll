; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstraceFileControl.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstraceFileControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, i32, i8*)* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"LOCKSTATE\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"GET_LOCKPROXYFILE\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SET_LOCKPROXYFILE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"LAST_ERRNO\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SIZE_HINT,%lld\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"CHUNK_SIZE,%d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"FILE_POINTER\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"SYNC_OMITTED\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"WIN32_AV_RETRY\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"PERSIST_WAL\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"OVERWRITE\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"VFSNAME\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"TEMPFILENAME\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"DB_UNCHANGED\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"PRAGMA,[%s,%s]\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"%s.xFileControl(%s,%s)\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" -> %s\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"vfstrace.%s/%z\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"%s.xFileControl(%s,%s) returns %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @vfstraceFileControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfstraceFileControl(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [100 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %8, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %57 [
    i32 139, label %19
    i32 130, label %20
    i32 128, label %21
    i32 129, label %22
    i32 135, label %23
    i32 141, label %30
    i32 140, label %37
    i32 134, label %38
    i32 131, label %39
    i32 137, label %40
    i32 138, label %41
    i32 132, label %42
    i32 133, label %43
    i32 -905363552, label %44
    i32 136, label %45
  ]

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %62

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %62

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %62

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %62

23:                                               ; preds = %3
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  store i8* %29, i8** %11, align 8
  br label %62

30:                                               ; preds = %3
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  store i8* %36, i8** %11, align 8
  br label %62

37:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %62

38:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %62

39:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %62

40:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %11, align 8
  br label %62

41:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %11, align 8
  br label %62

42:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %11, align 8
  br label %62

43:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  br label %62

44:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8
  br label %62

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = bitcast i8* %46 to i8**
  store i8** %47, i8*** %12, align 8
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %49 = load i8**, i8*** %12, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %12, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %51, i8* %54)
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  store i8* %56, i8** %11, align 8
  br label %62

57:                                               ; preds = %3
  %58 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  store i8* %61, i8** %11, align 8
  br label %62

62:                                               ; preds = %57, %45, %44, %43, %42, %41, %40, %39, %38, %37, %30, %23, %22, %21, %20, %19
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 (%struct.TYPE_8__*, i8*, i32, i32, i8*, ...) @vfstrace_printf(%struct.TYPE_8__* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %66, i32 %69, i8* %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_10__*, i32, i8*)*, i32 (%struct.TYPE_10__*, i32, i8*)** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 %78(%struct.TYPE_10__* %81, i32 %82, i8* %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @vfstrace_print_errcode(%struct.TYPE_8__* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 132
  br i1 %89, label %90, label %104

90:                                               ; preds = %62
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = bitcast i8* %98 to i8**
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %97, i8* %100)
  %102 = load i8*, i8** %6, align 8
  %103 = bitcast i8* %102 to i8**
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %94, %90, %62
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 136
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, 133
  br i1 %109, label %110, label %132

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @SQLITE_OK, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %110
  %115 = load i8*, i8** %6, align 8
  %116 = bitcast i8* %115 to i8**
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = bitcast i8* %128 to i8**
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (%struct.TYPE_8__*, i8*, i32, i32, i8*, ...) @vfstrace_printf(%struct.TYPE_8__* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %123, i32 %126, i8* %127, i8* %130)
  br label %132

132:                                              ; preds = %119, %114, %110, %107
  %133 = load i32, i32* %9, align 4
  ret i32 %133
}

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @vfstrace_printf(%struct.TYPE_8__*, i8*, i32, i32, i8*, ...) #1

declare dso_local i32 @vfstrace_print_errcode(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
