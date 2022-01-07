; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_vhd.c_WimExtractFile_7z.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_vhd.c_WimExtractFile_7z.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@__const.WimExtractFile_7z.index_prefix = private unnamed_addr constant [3 x i8] c"#\\\00", align 1
@.str = private unnamed_addr constant [25 x i8] c"Opening: %s:[%d] (7-Zip)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Extracting: %s (From %s)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\22%s\22 -y e \22%s\22 %s%s\00", align 1
@sevenzip_path = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"  Could not launch 7z.exe: %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"  7z.exe did not extract %s\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"  Could not rename %s to %s: errno %d\00", align 1
@errno = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WimExtractFile_7z(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [3 x i8], align 1
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %24 = bitcast [3 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.WimExtractFile_7z.index_prefix, i32 0, i32 0), i64 3, i1 false)
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30, %4
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %159

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 48, %39
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  store i8 %41, i8* %42, align 1
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %139, %38
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %142

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @static_strcpy(i8* %23, i8* %50)
  %52 = call i32 @strlen(i8* %23)
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %73, %49
  %56 = load i64, i64* %11, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds i8, i8* %23, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 92
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i8, i8* %23, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 47
  br label %70

70:                                               ; preds = %64, %58, %55
  %71 = phi i1 [ false, %58 ], [ false, %55 ], [ %69, %64 ]
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, -1
  store i64 %75, i64* %11, align 8
  br label %55

76:                                               ; preds = %70
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i8, i8* %23, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i32, i32* @sevenzip_path, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  br label %86

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i8* [ %84, %83 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %85 ]
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @static_sprintf(i8* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %79, i8* %80, i8* %87, i8* %88)
  %90 = load i32, i32* @FALSE, align 4
  %91 = call i64 @RunCommand(i8* %20, i8* %23, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = call i32 (...) @WindowsErrorString()
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %159

99:                                               ; preds = %86
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @safe_strlen(i8* %100)
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %122, %99
  %103 = load i64, i64* %11, align 8
  %104 = icmp ugt i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load i8*, i8** %8, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 92
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load i8*, i8** %8, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 47
  br label %119

119:                                              ; preds = %112, %105, %102
  %120 = phi i1 [ false, %105 ], [ false, %102 ], [ %118, %112 ]
  br i1 %120, label %121, label %125

121:                                              ; preds = %119
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %123, -1
  store i64 %124, i64* %11, align 8
  br label %102

125:                                              ; preds = %119
  %126 = load i64, i64* %11, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 @static_strcat(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %125
  %131 = load i8*, i8** %8, align 8
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = call i32 @static_strcat(i8* %23, i8* %133)
  %135 = call i64 @_access(i8* %23, i32 0)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %142

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %46

142:                                              ; preds = %137, %46
  %143 = load i32, i32* %10, align 4
  %144 = icmp sge i32 %143, 2
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %23)
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %159

148:                                              ; preds = %142
  %149 = load i8*, i8** %9, align 8
  %150 = call i64 @rename(i8* %23, i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* @errno, align 4
  %155 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %23, i8* %153, i32 %154)
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %159

157:                                              ; preds = %148
  %158 = load i32, i32* @TRUE, align 4
  store i32 %158, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %159

159:                                              ; preds = %157, %152, %145, %93, %36
  %160 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uprintf(i8*, i8*, ...) #3

declare dso_local i32 @static_strcpy(i8*, i8*) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @static_sprintf(i8*, i8*, i32, i8*, i8*, i8*) #3

declare dso_local i64 @RunCommand(i8*, i8*, i32) #3

declare dso_local i32 @WindowsErrorString(...) #3

declare dso_local i64 @safe_strlen(i8*) #3

declare dso_local i32 @static_strcat(i8*, i8*) #3

declare dso_local i64 @_access(i8*, i32) #3

declare dso_local i64 @rename(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
