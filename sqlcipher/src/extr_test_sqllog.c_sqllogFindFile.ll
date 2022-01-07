; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_sqllog.c_sqllogFindFile.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_sqllog.c_sqllogFindFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@sqllogglobal = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SQLITE_IOERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"sqllogFindFile(): error in fopen()\00", align 1
@SQLLOG_NAMESZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s_%s.db\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"sqllogFindFile(): error reading index file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @sqllogFindFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sqllogFindFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 4
  %13 = call i32* @fopen(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @SQLITE_IOERR, align 4
  %18 = call i32 @sqlite3_log(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %139

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %127, %19
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @feof(i32* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %128

24:                                               ; preds = %20
  %25 = load i32, i32* @SQLLOG_NAMESZ, align 4
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %26, 5
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %6, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  %31 = trunc i64 %28 to i32
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @fgets(i8* %30, i32 %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %123

35:                                               ; preds = %24
  %36 = sub i64 %28, 1
  %37 = getelementptr inbounds i8, i8* %30, i64 %36
  store i8 0, i8* %37, align 1
  store i8* %30, i8** %9, align 8
  br label %38

38:                                               ; preds = %50, %35
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 48
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sle i32 %46, 57
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  br label %38

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %59, %53
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %9, align 8
  br label %54

62:                                               ; preds = %54
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strlen(i8* %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %79, %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @sqllog_isspace(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %68, %65
  %78 = phi i1 [ false, %65 ], [ %76, %68 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %8, align 4
  br label %65

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %122

87:                                               ; preds = %82
  %88 = load i8*, i8** %3, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @memcmp(i8* %88, i8* %89, i32 %90)
  %92 = icmp eq i64 0, %91
  br i1 %92, label %93, label %122

93:                                               ; preds = %87
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %95 = call i32 @memset(i8* %94, i32 0, i32 16)
  store i8* %30, i8** %9, align 8
  br label %96

96:                                               ; preds = %108, %93
  %97 = load i8*, i8** %9, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sge i32 %99, 48
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i8*, i8** %9, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sle i32 %104, 57
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ false, %96 ], [ %105, %101 ]
  br i1 %107, label %108, label %118

108:                                              ; preds = %106
  %109 = load i8*, i8** %9, align 8
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %9, align 8
  %112 = ptrtoint i8* %111 to i64
  %113 = ptrtoint i8* %30 to i64
  %114 = sub i64 %112, %113
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %114
  store i8 %110, i8* %115, align 1
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %9, align 8
  br label %96

118:                                              ; preds = %106
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 0), align 4
  %120 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %121 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %119, i8* %120)
  store i8* %121, i8** %4, align 8
  store i32 3, i32* %11, align 4
  br label %124

122:                                              ; preds = %87, %82
  br label %123

123:                                              ; preds = %122, %24
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %118
  %125 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %11, align 4
  switch i32 %126, label %141 [
    i32 0, label %127
    i32 3, label %128
  ]

127:                                              ; preds = %124
  br label %20

128:                                              ; preds = %124, %20
  %129 = load i32*, i32** %5, align 8
  %130 = call i64 @ferror(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* @SQLITE_IOERR, align 4
  %134 = call i32 @sqlite3_log(i32 %133, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @fclose(i32* %136)
  %138 = load i8*, i8** %4, align 8
  store i8* %138, i8** %2, align 8
  br label %139

139:                                              ; preds = %135, %16
  %140 = load i8*, i8** %2, align 8
  ret i8* %140

141:                                              ; preds = %124
  unreachable
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @sqlite3_log(i32, i8*) #1

declare dso_local i64 @feof(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @sqllog_isspace(i8 signext) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
