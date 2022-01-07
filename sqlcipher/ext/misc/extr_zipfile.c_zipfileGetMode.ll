; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileGetMode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileGetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@__const.zipfileGetMode.zTemplate = private unnamed_addr constant [11 x i8] c"-rwxrwxrwx\00", align 1
@S_IFLNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"zipfile: mode does not match data\00", align 1
@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"zipfile: parse error in mode: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i8**)* @zipfileGetMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zipfileGetMode(i32* %0, i32 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [11 x i8], align 1
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @sqlite3_value_text(i32* %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @S_IFDIR, align 4
  %24 = add nsw i32 %23, 493
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @S_IFREG, align 4
  %27 = add nsw i32 %26, 420
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %27, %25 ]
  store i32 %29, i32* %11, align 4
  br label %109

30:                                               ; preds = %4
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 48
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 57
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @sqlite3_value_int(i32* %43)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  br label %108

46:                                               ; preds = %36, %30
  %47 = bitcast [11 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.zipfileGetMode.zTemplate, i32 0, i32 0), i64 11, i1 false)
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = icmp ne i32 %49, 10
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %125

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %69 [
    i32 45, label %57
    i32 100, label %61
    i32 108, label %65
  ]

57:                                               ; preds = %52
  %58 = load i32, i32* @S_IFREG, align 4
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  br label %70

61:                                               ; preds = %52
  %62 = load i32, i32* @S_IFDIR, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %70

65:                                               ; preds = %52
  %66 = load i32, i32* @S_IFLNK, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %70

69:                                               ; preds = %52
  br label %125

70:                                               ; preds = %65, %61, %57
  store i32 1, i32* %13, align 4
  br label %71

71:                                               ; preds = %104, %70
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 10
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %80, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %74
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 9, %88
  %90 = shl i32 1, %89
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %103

93:                                               ; preds = %74
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 45
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %125

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %87
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %71

107:                                              ; preds = %71
  br label %108

108:                                              ; preds = %107, %42
  br label %109

109:                                              ; preds = %108, %28
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @S_IFDIR, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %119 = load i8**, i8*** %9, align 8
  store i8* %118, i8** %119, align 8
  %120 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  store i32 %120, i32* %5, align 4
  br label %130

121:                                              ; preds = %109
  %122 = load i32, i32* %11, align 4
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* @SQLITE_OK, align 4
  store i32 %124, i32* %5, align 4
  br label %130

125:                                              ; preds = %101, %69, %51
  %126 = load i8*, i8** %10, align 8
  %127 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %126)
  %128 = load i8**, i8*** %9, align 8
  store i8* %127, i8** %128, align 8
  %129 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %125, %121, %117
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3_value_int(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
