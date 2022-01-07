; ModuleID = '/home/carl/AnghaBench/redis/src/extr_debug.c_memtest_test_linux_anonymous_maps.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_debug.c_memtest_test_linux_anonymous_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMTEST_MAX_REGIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/proc/self/maps\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vdso\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"vsyscall\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"00:00\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"*** Preparing to test memory region %lx (%lu bytes)\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memtest_test_linux_anonymous_maps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = load i32, i32* @MEMTEST_MAX_REGIONS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @MEMTEST_MAX_REGIONS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %26 = call i32 (...) @openDirectLogFiledes()
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %167

30:                                               ; preds = %0
  %31 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %2, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %167

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %116, %82, %77, %72, %57, %48, %35
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %38 = load i32*, i32** %2, align 8
  %39 = call i32* @fgets(i8* %37, i32 1024, i32* %38)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %119

41:                                               ; preds = %36
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %42, i8** %17, align 8
  %43 = load i8*, i8** %17, align 8
  store i8* %43, i8** %15, align 8
  %44 = load i8*, i8** %17, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 45)
  store i8* %45, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %36

49:                                               ; preds = %41
  %50 = load i8*, i8** %17, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %17, align 8
  store i8 0, i8* %50, align 1
  %52 = load i8*, i8** %17, align 8
  store i8* %52, i8** %16, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 32)
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %36

58:                                               ; preds = %49
  %59 = load i8*, i8** %17, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %17, align 8
  store i8 0, i8* %59, align 1
  %61 = load i8*, i8** %17, align 8
  %62 = call i64 @strstr(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %17, align 8
  %66 = call i64 @strstr(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %17, align 8
  %70 = call i64 @strstr(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64, %58
  br label %36

73:                                               ; preds = %68
  %74 = load i8*, i8** %17, align 8
  %75 = call i64 @strstr(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %36

78:                                               ; preds = %73
  %79 = load i8*, i8** %17, align 8
  %80 = call i64 @strstr(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %36

83:                                               ; preds = %78
  %84 = load i8*, i8** %15, align 8
  %85 = call i64 @strtoul(i8* %84, i32* null, i32 16)
  store i64 %85, i64* %5, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = call i64 @strtoul(i8* %86, i32* null, i32 16)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %5, align 8
  %90 = sub i64 %88, %89
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %22, i64 %93
  store i64 %91, i64* %94, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %25, i64 %97
  store i64 %95, i64* %98, align 8
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %22, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %25, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @snprintf(i8* %99, i32 1024, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %103, i64 %107)
  %109 = load i32, i32* %13, align 4
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %112 = call i32 @strlen(i8* %111)
  %113 = call i32 @write(i32 %109, i8* %110, i32 %112)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %83
  br label %116

116:                                              ; preds = %115, %83
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %36

119:                                              ; preds = %36
  store i32 0, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %153, %119
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %120
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @write(i32 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128, %124
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %22, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %25, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @memtest_preserving_test(i8* %134, i64 %138, i32 1)
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  %149 = call i32 @write(i32 %144, i8* %148, i32 1)
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %152

151:                                              ; preds = %129
  br label %152

152:                                              ; preds = %151, %129
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %120

156:                                              ; preds = %120
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @write(i32 %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %161

161:                                              ; preds = %160, %156
  %162 = load i32*, i32** %2, align 8
  %163 = call i32 @fclose(i32* %162)
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @closeDirectLogFiledes(i32 %164)
  %166 = load i32, i32* %18, align 4
  store i32 %166, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %167

167:                                              ; preds = %161, %34, %29
  %168 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %1, align 4
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @openDirectLogFiledes(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i64 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @memtest_preserving_test(i8*, i64, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @closeDirectLogFiledes(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
