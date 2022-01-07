; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_make_directory_records.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_make_directory_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i32, %struct.TYPE_6__* }
%struct.dirent = type { i64*, i64 }
%struct.stat = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@source = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DIR_SEPARATOR_CHAR = common dso_local global i64 0, align 8
@DIR_SEPARATOR_STRING = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Cannot get CWD: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Cannot access '%s' (%s)\0A\00", align 1
@end_source = common dso_local global i8* null, align 8
@verbosity = common dso_local global i64 0, align 8
@VERBOSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"%d: directory %s\0A\00", align 1
@MAX_LEVEL = common dso_local global i64 0, align 8
@root = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Directory is nested too deep\00", align 1
@DIRECTORY_TIMESTAMP = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"%d: file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Cannot open '%s'\0A\00", align 1
@compare_directory_order = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i64 0, align 8
@DT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @make_directory_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_directory_records(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load i64*, i64** @source, align 8
  %18 = call i32* @opendir(i64* %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %167

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %163, %38, %21
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.dirent* @readdir(i32* %23)
  store %struct.dirent* %24, %struct.dirent** %5, align 8
  %25 = icmp ne %struct.dirent* %24, null
  br i1 %25, label %26, label %164

26:                                               ; preds = %22
  %27 = load %struct.dirent*, %struct.dirent** %5, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = call i64 @strcmp(i64* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.dirent*, %struct.dirent** %5, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = call i64 @strcmp(i64* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  br label %22

39:                                               ; preds = %32
  %40 = load i64*, i64** @source, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DIR_SEPARATOR_CHAR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i64*, i64** @source, align 8
  %47 = call i32 @strcpy(i8* %14, i64* %46)
  %48 = load i64*, i64** @DIR_SEPARATOR_STRING, align 8
  %49 = call i32 @strcat(i8* %14, i64* %48)
  %50 = load %struct.dirent*, %struct.dirent** %5, align 8
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @strcat(i8* %14, i64* %52)
  br label %71

54:                                               ; preds = %39
  %55 = trunc i64 %12 to i32
  %56 = call i32 @getcwd(i8* %14, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @errno, align 4
  %60 = call i64* @strerror(i32 %59)
  %61 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64* %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i64*, i64** @DIR_SEPARATOR_STRING, align 8
  %64 = call i32 @strcat(i8* %14, i64* %63)
  %65 = load i64*, i64** @source, align 8
  %66 = call i32 @strcat(i8* %14, i64* %65)
  %67 = load %struct.dirent*, %struct.dirent** %5, align 8
  %68 = getelementptr inbounds %struct.dirent, %struct.dirent* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = call i32 @strcat(i8* %14, i64* %69)
  br label %71

71:                                               ; preds = %62, %45
  %72 = call i32 @stat(i8* %14, %struct.stat* %7)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @errno, align 4
  %76 = call i64* @strerror(i32 %75)
  %77 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %14, i64* %76)
  store i32 1, i32* %10, align 4
  br label %178

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @S_ISDIR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %131

83:                                               ; preds = %78
  %84 = load i8*, i8** @end_source, align 8
  store i8* %84, i8** %6, align 8
  %85 = load %struct.dirent*, %struct.dirent** %5, align 8
  %86 = getelementptr inbounds %struct.dirent, %struct.dirent* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = call i32 @append_string_to_source(i64* %87)
  %89 = load i64, i64* @DIR_SEPARATOR_CHAR, align 8
  %90 = trunc i64 %89 to i8
  %91 = load i8*, i8** @end_source, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** @end_source, align 8
  store i8 %90, i8* %91, align 1
  %93 = load i8*, i8** @end_source, align 8
  store i8 0, i8* %93, align 1
  %94 = load i64, i64* @verbosity, align 8
  %95 = load i64, i64* @VERBOSE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %83
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  %102 = load i64*, i64** @source, align 8
  %103 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %101, i64* %102)
  br label %104

104:                                              ; preds = %97, %83
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @MAX_LEVEL, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %104
  %112 = load %struct.dirent*, %struct.dirent** %5, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %114 = call %struct.TYPE_6__* @new_directory_record(%struct.dirent* %112, %struct.stat* %7, %struct.TYPE_6__* %113)
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %3, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @root, i32 0, i32 0), align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  store %struct.TYPE_6__* %115, %struct.TYPE_6__** %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %118, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @root, i32 0, i32 0), align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  call void @make_directory_records(%struct.TYPE_6__* %125)
  br label %128

126:                                              ; preds = %104
  %127 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %111
  %129 = load i8*, i8** %6, align 8
  store i8* %129, i8** @end_source, align 8
  %130 = load i8*, i8** @end_source, align 8
  store i8 0, i8* %130, align 1
  br label %163

131:                                              ; preds = %78
  %132 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @S_ISREG(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %162

136:                                              ; preds = %131
  %137 = load %struct.dirent*, %struct.dirent** %5, align 8
  %138 = getelementptr inbounds %struct.dirent, %struct.dirent* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i8*, i8** @DIRECTORY_TIMESTAMP, align 8
  %141 = call i64 @strcmp(i64* %139, i8* %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %147 = call i32 @convert_date_and_time(i32* %145, i32* %146)
  br label %161

148:                                              ; preds = %136
  %149 = load i64, i64* @verbosity, align 8
  %150 = load i64, i64* @VERBOSE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %155, i8* %14)
  br label %157

157:                                              ; preds = %152, %148
  %158 = load %struct.dirent*, %struct.dirent** %5, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %160 = call %struct.TYPE_6__* @new_directory_record(%struct.dirent* %158, %struct.stat* %7, %struct.TYPE_6__* %159)
  br label %161

161:                                              ; preds = %157, %143
  br label %162

162:                                              ; preds = %161, %131
  br label %163

163:                                              ; preds = %162, %128
  br label %22

164:                                              ; preds = %22
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @closedir(i32* %165)
  br label %170

167:                                              ; preds = %1
  %168 = load i64*, i64** @source, align 8
  %169 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i64* %168)
  store i32 1, i32* %10, align 4
  br label %178

170:                                              ; preds = %164
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* @compare_directory_order, align 4
  %175 = call i32* @sort_linked_list(i32* %173, i32 0, i32 %174)
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i32* %175, i32** %177, align 8
  store i32 0, i32* %10, align 4
  br label %178

178:                                              ; preds = %170, %167, %74
  %179 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %10, align 4
  switch i32 %180, label %182 [
    i32 0, label %181
    i32 1, label %181
  ]

181:                                              ; preds = %178, %178
  ret void

182:                                              ; preds = %178
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i64*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i64*, i8*) #2

declare dso_local i32 @strcpy(i8*, i64*) #2

declare dso_local i32 @strcat(i8*, i64*) #2

declare dso_local i32 @getcwd(i8*, i32) #2

declare dso_local i32 @error_exit(i8*, ...) #2

declare dso_local i64* @strerror(i32) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @append_string_to_source(i64*) #2

declare dso_local i32 @printf(i8*, i32, ...) #2

declare dso_local %struct.TYPE_6__* @new_directory_record(%struct.dirent*, %struct.stat*, %struct.TYPE_6__*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i32 @convert_date_and_time(i32*, i32*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32* @sort_linked_list(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
