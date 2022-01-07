; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_unicode.c_unicodeCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_unicode.c_unicodeCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"remove_diacritics=1\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"remove_diacritics=0\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"remove_diacritics=2\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tokenchars=\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"separators=\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32**)* @unicodeCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicodeCreate(i32 %0, i8** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = call i64 @sqlite3_malloc(i32 4)
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %19, i32* %4, align 4
  br label %124

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = call i32 @memset(%struct.TYPE_4__* %21, i32 0, i32 4)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %108, %20
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ false, %25 ], [ %32, %29 ]
  br i1 %34, label %35, label %111

35:                                               ; preds = %33
  %36 = load i8**, i8*** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 19
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @memcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %47, i32 19)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %107

53:                                               ; preds = %46, %35
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 19
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @memcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 19)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %106

63:                                               ; preds = %56, %53
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 19
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @memcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %67, i32 19)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 2, i32* %72, align 4
  br label %105

73:                                               ; preds = %66, %63
  %74 = load i32, i32* %12, align 4
  %75 = icmp sge i32 %74, 11
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @memcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %77, i32 11)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 11
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %84, 11
  %86 = call i32 @unicodeAddExceptions(%struct.TYPE_4__* %81, i32 1, i8* %83, i32 %85)
  store i32 %86, i32* %10, align 4
  br label %104

87:                                               ; preds = %76, %73
  %88 = load i32, i32* %12, align 4
  %89 = icmp sge i32 %88, 11
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i8*, i8** %11, align 8
  %92 = call i64 @memcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %91, i32 11)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 11
  %98 = load i32, i32* %12, align 4
  %99 = sub nsw i32 %98, 11
  %100 = call i32 @unicodeAddExceptions(%struct.TYPE_4__* %95, i32 0, i8* %97, i32 %99)
  store i32 %100, i32* %10, align 4
  br label %103

101:                                              ; preds = %90, %87
  %102 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %94
  br label %104

104:                                              ; preds = %103, %80
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %60
  br label %107

107:                                              ; preds = %106, %50
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %25

111:                                              ; preds = %33
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @SQLITE_OK, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %117 = bitcast %struct.TYPE_4__* %116 to i32*
  %118 = call i32 @unicodeDestroy(i32* %117)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %121 = bitcast %struct.TYPE_4__* %120 to i32*
  %122 = load i32**, i32*** %7, align 8
  store i32* %121, i32** %122, align 8
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %119, %18
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @unicodeAddExceptions(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @unicodeDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
