; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_auth_callback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_auth_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SQLITE_COPY\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SQLITE_CREATE_INDEX\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SQLITE_CREATE_TABLE\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"SQLITE_CREATE_TEMP_INDEX\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"SQLITE_CREATE_TEMP_TABLE\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SQLITE_CREATE_TEMP_TRIGGER\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"SQLITE_CREATE_TEMP_VIEW\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SQLITE_CREATE_TRIGGER\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"SQLITE_CREATE_VIEW\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"SQLITE_DELETE\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"SQLITE_DROP_INDEX\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"SQLITE_DROP_TABLE\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"SQLITE_DROP_TEMP_INDEX\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"SQLITE_DROP_TEMP_TABLE\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"SQLITE_DROP_TEMP_TRIGGER\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"SQLITE_DROP_TEMP_VIEW\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"SQLITE_DROP_TRIGGER\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"SQLITE_DROP_VIEW\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"SQLITE_INSERT\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"SQLITE_PRAGMA\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"SQLITE_READ\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"SQLITE_SELECT\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"SQLITE_TRANSACTION\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"SQLITE_UPDATE\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"SQLITE_ATTACH\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"SQLITE_DETACH\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"SQLITE_ALTER_TABLE\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"SQLITE_REINDEX\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"SQLITE_ANALYZE\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"SQLITE_CREATE_VTABLE\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"SQLITE_DROP_VTABLE\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"SQLITE_FUNCTION\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"SQLITE_SAVEPOINT\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"SQLITE_RECURSIVE\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TCL_OK = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [12 x i8] c"SQLITE_DENY\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"SQLITE_OK\00", align 1
@SQLITE_DENY = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"SQLITE_IGNORE\00", align 1
@SQLITE_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8*, i8*)* @auth_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_callback(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %18, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %7, align 4
  br label %143

27:                                               ; preds = %6
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %63 [
    i32 158, label %29
    i32 157, label %30
    i32 156, label %31
    i32 155, label %32
    i32 154, label %33
    i32 153, label %34
    i32 152, label %35
    i32 151, label %36
    i32 150, label %37
    i32 148, label %38
    i32 146, label %39
    i32 145, label %40
    i32 144, label %41
    i32 143, label %42
    i32 142, label %43
    i32 141, label %44
    i32 140, label %45
    i32 139, label %46
    i32 136, label %47
    i32 135, label %48
    i32 134, label %49
    i32 130, label %50
    i32 129, label %51
    i32 128, label %52
    i32 159, label %53
    i32 147, label %54
    i32 161, label %55
    i32 132, label %56
    i32 160, label %57
    i32 149, label %58
    i32 138, label %59
    i32 137, label %60
    i32 131, label %61
    i32 133, label %62
  ]

29:                                               ; preds = %27
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %64

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %64

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %64

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %64

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %64

34:                                               ; preds = %27
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %64

35:                                               ; preds = %27
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %64

36:                                               ; preds = %27
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %64

37:                                               ; preds = %27
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** %14, align 8
  br label %64

38:                                               ; preds = %27
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %14, align 8
  br label %64

39:                                               ; preds = %27
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %14, align 8
  br label %64

40:                                               ; preds = %27
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %14, align 8
  br label %64

41:                                               ; preds = %27
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8** %14, align 8
  br label %64

42:                                               ; preds = %27
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8** %14, align 8
  br label %64

43:                                               ; preds = %27
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8** %14, align 8
  br label %64

44:                                               ; preds = %27
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8** %14, align 8
  br label %64

45:                                               ; preds = %27
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8** %14, align 8
  br label %64

46:                                               ; preds = %27
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8** %14, align 8
  br label %64

47:                                               ; preds = %27
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %14, align 8
  br label %64

48:                                               ; preds = %27
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8** %14, align 8
  br label %64

49:                                               ; preds = %27
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8** %14, align 8
  br label %64

50:                                               ; preds = %27
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %14, align 8
  br label %64

51:                                               ; preds = %27
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8** %14, align 8
  br label %64

52:                                               ; preds = %27
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8** %14, align 8
  br label %64

53:                                               ; preds = %27
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8** %14, align 8
  br label %64

54:                                               ; preds = %27
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8** %14, align 8
  br label %64

55:                                               ; preds = %27
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i8** %14, align 8
  br label %64

56:                                               ; preds = %27
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8** %14, align 8
  br label %64

57:                                               ; preds = %27
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8** %14, align 8
  br label %64

58:                                               ; preds = %27
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i8** %14, align 8
  br label %64

59:                                               ; preds = %27
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8** %14, align 8
  br label %64

60:                                               ; preds = %27
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8** %14, align 8
  br label %64

61:                                               ; preds = %27
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8** %14, align 8
  br label %64

62:                                               ; preds = %27
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8** %14, align 8
  br label %64

63:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8** %14, align 8
  br label %64

64:                                               ; preds = %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29
  %65 = call i32 @Tcl_DStringInit(i32* %15)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @Tcl_DStringAppend(i32* %15, i32 %68, i32 -1)
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @Tcl_DStringAppendElement(i32* %15, i8* %70)
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i8*, i8** %10, align 8
  br label %77

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i8* [ %75, %74 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i64 0, i64 0), %76 ]
  %79 = call i32 @Tcl_DStringAppendElement(i32* %15, i8* %78)
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i8*, i8** %11, align 8
  br label %85

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i8* [ %83, %82 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i64 0, i64 0), %84 ]
  %87 = call i32 @Tcl_DStringAppendElement(i32* %15, i8* %86)
  %88 = load i8*, i8** %12, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i8*, i8** %12, align 8
  br label %93

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i8* [ %91, %90 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i64 0, i64 0), %92 ]
  %95 = call i32 @Tcl_DStringAppendElement(i32* %15, i8* %94)
  %96 = load i8*, i8** %13, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i8*, i8** %13, align 8
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i8* [ %99, %98 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i64 0, i64 0), %100 ]
  %103 = call i32 @Tcl_DStringAppendElement(i32* %15, i8* %102)
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @Tcl_DStringValue(i32* %15)
  %108 = call i32 @Tcl_GlobalEval(i32 %106, i32 %107)
  store i32 %108, i32* %16, align 4
  %109 = call i32 @Tcl_DStringFree(i32* %15)
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @TCL_OK, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %101
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @Tcl_GetStringResult(i32 %116)
  br label %119

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %113
  %120 = phi i8* [ %117, %113 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), %118 ]
  store i8* %120, i8** %17, align 8
  %121 = load i8*, i8** %17, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @SQLITE_OK, align 4
  store i32 %125, i32* %16, align 4
  br label %141

126:                                              ; preds = %119
  %127 = load i8*, i8** %17, align 8
  %128 = call i64 @strcmp(i8* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0))
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @SQLITE_DENY, align 4
  store i32 %131, i32* %16, align 4
  br label %140

132:                                              ; preds = %126
  %133 = load i8*, i8** %17, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* @SQLITE_IGNORE, align 4
  store i32 %137, i32* %16, align 4
  br label %139

138:                                              ; preds = %132
  store i32 999, i32* %16, align 4
  br label %139

139:                                              ; preds = %138, %136
  br label %140

140:                                              ; preds = %139, %130
  br label %141

141:                                              ; preds = %140, %124
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %141, %25
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @Tcl_DStringInit(i32*) #1

declare dso_local i32 @Tcl_DStringAppend(i32*, i32, i32) #1

declare dso_local i32 @Tcl_DStringAppendElement(i32*, i8*) #1

declare dso_local i32 @Tcl_GlobalEval(i32, i32) #1

declare dso_local i32 @Tcl_DStringValue(i32*) #1

declare dso_local i32 @Tcl_DStringFree(i32*) #1

declare dso_local i8* @Tcl_GetStringResult(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
