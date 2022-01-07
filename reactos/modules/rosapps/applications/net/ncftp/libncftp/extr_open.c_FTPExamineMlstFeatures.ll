; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_FTPExamineMlstFeatures.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_FTPExamineMlstFeatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c";*\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OS.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@kMlsOptType = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@kMlsOptSize = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"modify\00", align 1
@kMlsOptModify = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"UNIX.mode\00", align 1
@kMlsOptUNIXmode = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"UNIX.owner\00", align 1
@kMlsOptUNIXowner = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"UNIX.group\00", align 1
@kMlsOptUNIXgroup = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"perm\00", align 1
@kMlsOptPerm = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"UNIX.uid\00", align 1
@kMlsOptUNIXuid = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"UNIX.gid\00", align 1
@kMlsOptUNIXgid = common dso_local global i32 0, align 4
@kMlsOptUnique = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @FTPExamineMlstFeatures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FTPExamineMlstFeatures(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @STRNCPY(i8* %8, i8* %9)
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %12 = call i8* @strtok(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %112, %2
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %114

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @ISTRNEQ(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @ISTREQ(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @kMlsOptType, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %112

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @ISTREQ(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @kMlsOptSize, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %111

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @ISTREQ(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @kMlsOptModify, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %110

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @ISTREQ(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @kMlsOptUNIXmode, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %109

55:                                               ; preds = %47
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @ISTREQ(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @kMlsOptUNIXowner, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %108

63:                                               ; preds = %55
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @ISTREQ(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @kMlsOptUNIXgroup, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %107

71:                                               ; preds = %63
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @ISTREQ(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @kMlsOptPerm, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %106

79:                                               ; preds = %71
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @ISTREQ(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @kMlsOptUNIXuid, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %105

87:                                               ; preds = %79
  %88 = load i8*, i8** %6, align 8
  %89 = call i64 @ISTREQ(i8* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @kMlsOptUNIXgid, align 4
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %104

95:                                               ; preds = %87
  %96 = load i8*, i8** %6, align 8
  %97 = call i64 @ISTREQ(i8* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @kMlsOptUnique, align 4
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106, %67
  br label %108

108:                                              ; preds = %107, %59
  br label %109

109:                                              ; preds = %108, %51
  br label %110

110:                                              ; preds = %109, %43
  br label %111

111:                                              ; preds = %110, %35
  br label %112

112:                                              ; preds = %111, %27
  %113 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %113, i8** %6, align 8
  br label %13

114:                                              ; preds = %13
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  ret void
}

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @ISTRNEQ(i8*, i8*, i32) #1

declare dso_local i64 @ISTREQ(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
