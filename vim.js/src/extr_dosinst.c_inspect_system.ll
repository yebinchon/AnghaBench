; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_inspect_system.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_inspect_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Inspecting system...\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"VIM\00", align 1
@installdir = common dso_local global i8* null, align 8
@runtimeidx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"------------------------------------------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"$VIM is set to \22%s\22.\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"This is different from where this version of Vim is:\0A\00", align 1
@NUL = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"You must adjust or remove the setting of $VIM,\0A\00", align 1
@interactive = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"to be able to use this install program.\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"otherwise Vim WILL NOT WORK properly!\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"VIMRUNTIME\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"$VIMRUNTIME is set to \22%s\22.\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"You must adjust or remove the setting of $VIMRUNTIME,\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TARGET_COUNT = common dso_local global i32 0, align 4
@targets = common dso_local global %struct.TYPE_2__* null, align 8
@.str.12 = private unnamed_addr constant [49 x i8] c"Warning: Found Vim executable(s) in your $PATH:\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"It will be used instead of the version you are installing.\0A\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"Please delete or rename it, or adjust your $PATH setting.\0A\00", align 1
@oldvimrc = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"_vimrc\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"vimrc~1\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c".vimrc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @inspect_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inspect_system() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @BUFSIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** %1, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %0
  %16 = load i8*, i8** %1, align 8
  %17 = load i8*, i8** @installdir, align 8
  %18 = load i32, i32* @runtimeidx, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i64 @pathcmp(i8* %16, i32 -1, i8* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i8*, i8** @installdir, align 8
  %28 = call i32 @strcpy(i8* %10, i8* %27)
  %29 = load i8, i8* @NUL, align 1
  %30 = load i32, i32* @runtimeidx, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %10, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  store i8 %29, i8* %33, align 1
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %10)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i64, i64* @interactive, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %40 = call i32 @myexit(i32 1)
  br label %41

41:                                               ; preds = %38, %22
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %15, %0
  %45 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i8* %45, i8** %1, align 8
  %46 = load i8*, i8** %1, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load i8*, i8** %1, align 8
  %50 = load i8*, i8** @installdir, align 8
  %51 = call i64 @pathcmp(i8* %49, i32 -1, i8* %50, i32 -1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i8*, i8** %1, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %55)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i8*, i8** @installdir, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  %61 = load i64, i64* @interactive, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %65 = call i32 @myexit(i32 1)
  br label %66

66:                                               ; preds = %63, %53
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %48, %44
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i32 @find_bat_exe(i32 %70)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %92, %69
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @TARGET_COUNT, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @findoldfile(i8** %81)
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %76
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %72

95:                                               ; preds = %72
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %95
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %121, %98
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @TARGET_COUNT, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %100
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %112, %104
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %100

124:                                              ; preds = %100
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0))
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %95
  %128 = load i8*, i8** @oldvimrc, align 8
  %129 = load i8*, i8** @installdir, align 8
  %130 = call i32 @strcpy(i8* %128, i8* %129)
  %131 = load i8*, i8** @oldvimrc, align 8
  %132 = load i32, i32* @runtimeidx, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = call i32 @strcpy(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %136 = load i8*, i8** @oldvimrc, align 8
  %137 = call i32* @fopen(i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32* %137, i32** %4, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %157

139:                                              ; preds = %127
  %140 = load i8*, i8** @oldvimrc, align 8
  %141 = load i32, i32* @runtimeidx, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = call i32 @strcpy(i8* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %145 = load i8*, i8** @oldvimrc, align 8
  %146 = call i32* @fopen(i8* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32* %146, i32** %4, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %156

148:                                              ; preds = %139
  %149 = load i8*, i8** @oldvimrc, align 8
  %150 = load i32, i32* @runtimeidx, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = call i32 @strcpy(i8* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %154 = load i8*, i8** @oldvimrc, align 8
  %155 = call i32* @fopen(i8* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32* %155, i32** %4, align 8
  br label %156

156:                                              ; preds = %148, %139
  br label %157

157:                                              ; preds = %156, %127
  %158 = load i32*, i32** %4, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @fclose(i32* %161)
  br label %166

163:                                              ; preds = %157
  %164 = load i8, i8* @NUL, align 1
  %165 = load i8*, i8** @oldvimrc, align 8
  store i8 %164, i8* %165, align 1
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %167)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @pathcmp(i8*, i32, i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @myexit(i32) #2

declare dso_local i32 @find_bat_exe(i32) #2

declare dso_local i32 @findoldfile(i8**) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
