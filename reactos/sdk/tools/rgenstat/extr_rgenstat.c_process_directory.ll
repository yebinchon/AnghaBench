; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_process_directory.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_process_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.dirent = type { i8*, i64 }
%struct.stat = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DIR_SEPARATOR_CHAR = common dso_local global i8 0, align 1
@DIR_SEPARATOR_STRING = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Can't get CWD: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Can't access '%s' (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Can't open %s\0A\00", align 1
@DT_REG = common dso_local global i64 0, align 8
@f = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @process_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_directory(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32* @opendir(i8* %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %108

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %99, %98, %87, %40, %23
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.dirent* @readdir(i32* %25)
  store %struct.dirent* %26, %struct.dirent** %6, align 8
  %27 = icmp ne %struct.dirent* %26, null
  br i1 %27, label %28, label %105

28:                                               ; preds = %24
  %29 = load %struct.dirent*, %struct.dirent** %6, align 8
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.dirent*, %struct.dirent** %6, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %28
  br label %24

41:                                               ; preds = %34
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @DIR_SEPARATOR_CHAR, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcpy(i8* %15, i8* %50)
  %52 = load i8*, i8** @DIR_SEPARATOR_STRING, align 8
  %53 = call i32 @strcat(i8* %15, i8* %52)
  %54 = load %struct.dirent*, %struct.dirent** %6, align 8
  %55 = getelementptr inbounds %struct.dirent, %struct.dirent* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcat(i8* %15, i8* %56)
  br label %75

58:                                               ; preds = %41
  %59 = trunc i64 %13 to i32
  %60 = call i32 @getcwd(i8* %15, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @errno, align 4
  %64 = call i8* @strerror(i32 %63)
  %65 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  store i32 1, i32* %11, align 4
  br label %113

66:                                               ; preds = %58
  %67 = load i8*, i8** @DIR_SEPARATOR_STRING, align 8
  %68 = call i32 @strcat(i8* %15, i8* %67)
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @strcat(i8* %15, i8* %69)
  %71 = load %struct.dirent*, %struct.dirent** %6, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcat(i8* %15, i8* %73)
  br label %75

75:                                               ; preds = %66, %49
  %76 = call i32 @stat(i8* %15, %struct.stat* %7)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @errno, align 4
  %80 = call i8* @strerror(i32 %79)
  %81 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %15, i8* %80)
  store i32 1, i32* %11, align 4
  br label %113

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @S_ISDIR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @strcpy(i8* %18, i8* %88)
  %90 = load %struct.dirent*, %struct.dirent** %6, align 8
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strcat(i8* %18, i8* %92)
  %94 = call i32 @strcat(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  call void @process_directory(i8* %15, i8* %18)
  br label %24

95:                                               ; preds = %82
  %96 = call i32 @is_valid_file(i8* %15)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %24

99:                                               ; preds = %95
  %100 = load i8*, i8** %4, align 8
  %101 = load %struct.dirent*, %struct.dirent** %6, align 8
  %102 = getelementptr inbounds %struct.dirent, %struct.dirent* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @parse_file(i8* %15, i8* %100, i8* %103)
  br label %24

105:                                              ; preds = %24
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @closedir(i32* %106)
  br label %112

108:                                              ; preds = %2
  %109 = load i8*, i8** %3, align 8
  %110 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  %111 = call i32 @exit(i32 1) #4
  unreachable

112:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %112, %78, %62
  %114 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %11, align 4
  switch i32 %115, label %117 [
    i32 0, label %116
    i32 1, label %116
  ]

116:                                              ; preds = %113, %113
  ret void

117:                                              ; preds = %113
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @getcwd(i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @is_valid_file(i8*) #2

declare dso_local i32 @parse_file(i8*, i8*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
