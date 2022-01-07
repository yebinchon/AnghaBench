; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtablog.c_vtablogConnectCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtablog.c_vtablogConnectCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@vtablogConnectCreate.nInst = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vtablog%s(tab=%d):\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Create\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Connect\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"  argc=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"  argv[%d] = \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"no schema defined\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**, i32)* @vtablogConnectCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtablogConnectCreate(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8** %3, i8*** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load i32, i32* @vtablogConnectCreate.nInst, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @vtablogConnectCreate.nInst, align 4
  store i32 %24, i32* %19, align 4
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i32, i32* %19, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  store i32 0, i32* %17, align 4
  br label %33

33:                                               ; preds = %56, %7
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load i32, i32* %17, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i8**, i8*** %12, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i8**, i8*** %12, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  br label %55

53:                                               ; preds = %37
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %17, align 4
  br label %33

59:                                               ; preds = %33
  store i32 3, i32* %17, align 4
  br label %60

60:                                               ; preds = %84, %59
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = load i8**, i8*** %12, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %22, align 8
  %70 = load i8**, i8*** %14, align 8
  %71 = load i8*, i8** %22, align 8
  %72 = call i64 @vtablog_string_parameter(i8** %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %71, i8** %20)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %75, i32* %8, align 4
  br label %128

76:                                               ; preds = %64
  %77 = load i8**, i8*** %14, align 8
  %78 = load i8*, i8** %22, align 8
  %79 = call i64 @vtablog_string_parameter(i8** %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %78, i8** %21)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %82, i32* %8, align 4
  br label %128

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  br label %60

87:                                               ; preds = %60
  %88 = load i8*, i8** %20, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %92 = load i8**, i8*** %14, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %93, i32* %8, align 4
  br label %128

94:                                               ; preds = %87
  %95 = load i32*, i32** %9, align 8
  %96 = load i8*, i8** %20, align 8
  %97 = call i32 @sqlite3_declare_vtab(i32* %95, i8* %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* @SQLITE_OK, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %94
  %102 = call %struct.TYPE_4__* @sqlite3_malloc(i32 8)
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %16, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %104 = bitcast %struct.TYPE_4__* %103 to i32*
  %105 = load i32**, i32*** %13, align 8
  store i32* %104, i32** %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %107 = icmp eq %struct.TYPE_4__* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %109, i32* %8, align 4
  br label %128

110:                                              ; preds = %101
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %112 = call i32 @memset(%struct.TYPE_4__* %111, i32 0, i32 8)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 10, i32* %114, align 4
  %115 = load i8*, i8** %21, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load i8*, i8** %21, align 8
  %119 = call i32 @atoi(i8* %118)
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %110
  %123 = load i32, i32* %19, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %94
  %127 = load i32, i32* %18, align 4
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %126, %108, %90, %81, %74
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @vtablog_string_parameter(i8**, i8*, i8*, i8**) #1

declare dso_local i8* @sqlite3_mprintf(i8*) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
