; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_log2lines.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_log2lines.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@dbgIn = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@conOut = common dso_local global i32 0, align 4
@conIn = common dso_local global i32 0, align 4
@dbgOut = common dso_local global i32 0, align 4
@cache = common dso_local global i32 0, align 4
@sources = common dso_local global i32 0, align 4
@summ = common dso_local global i32 0, align 4
@revinfo = common dso_local global i32 0, align 4
@opt_Revision = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"update\00", align 1
@opt_force = common dso_local global i32 0, align 4
@opt_exit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Cache read complete\0A\00", align 1
@logFile = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"opt_logFile processed\0A\00", align 1
@opt_Pipe = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Command line: \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Could not popen '%s' (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"opt_Pipe processed\0A\00", align 1
@LINESIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"translating %s %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"<%s:%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"<exefile> expected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @stdin, align 4
  store i32 %16, i32* @dbgIn, align 4
  %17 = load i32, i32* @stdout, align 4
  store i32 %17, i32* @conOut, align 4
  %18 = load i32, i32* @conIn, align 4
  %19 = load i32, i32* @dbgOut, align 4
  %20 = call i32 @memset(i32* @cache, i32 0, i32 4)
  %21 = call i32 @memset(i32* @sources, i32 0, i32 4)
  %22 = call i32 @stat_clear(i32* @summ)
  %23 = call i32 @memset(i32* @revinfo, i32 0, i32 4)
  %24 = call i32 (...) @clearLastLine()
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @optionInit(i32 %25, i8** %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @optionParse(i32 %28, i8** %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %2
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %6, align 4
  br label %160

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32*, i32** @opt_Revision, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32*, i32** @opt_Revision, align 8
  %46 = call i64 @strcmp(i32* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (...) @updateSvnlog()
  store i32 %49, i32* %6, align 4
  br label %160

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @opt_force, align 4
  %52 = call i64 @check_directory(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 3, i32* %6, align 4
  br label %160

55:                                               ; preds = %50
  %56 = load i32, i32* @opt_force, align 4
  %57 = call i32 @create_cache(i32 %56, i32 0)
  %58 = load i64, i64* @opt_exit, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %160

61:                                               ; preds = %55
  %62 = call i32 (...) @read_cache()
  %63 = call i32 (i32, i8*, ...) @l2l_dbg(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i64 @set_LogFile(i64* @logFile)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 2, i32* %6, align 4
  br label %160

67:                                               ; preds = %61
  %68 = call i32 (i32, i8*, ...) @l2l_dbg(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32*, i32** @opt_Pipe, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load i32*, i32** @opt_Pipe, align 8
  %73 = call i32 (i32, i8*, ...) @l2l_dbg(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %72)
  %74 = load i32*, i32** @opt_Pipe, align 8
  %75 = call i32 @POPEN(i32* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %75, i32* @dbgIn, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @stdin, align 4
  store i32 %78, i32* @dbgIn, align 4
  %79 = load i32*, i32** @opt_Pipe, align 8
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @strerror(i32 %80)
  %82 = call i32 (i32, i8*, ...) @l2l_dbg(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %79, i32 %81)
  %83 = load i32*, i32** @opt_Pipe, align 8
  %84 = call i32 @free(i32* %83)
  store i32* null, i32** @opt_Pipe, align 8
  br label %85

85:                                               ; preds = %77, %71
  br label %86

86:                                               ; preds = %85, %67
  %87 = call i32 (i32, i8*, ...) @l2l_dbg(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* %4, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %143

90:                                               ; preds = %86
  store i32 1, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %91 = load i32, i32* @LINESIZE, align 4
  %92 = add nsw i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = call i8* @llvm.stacksave()
  store i8* %94, i8** %12, align 8
  %95 = alloca i8, i64 %93, align 16
  store i64 %93, i64* %13, align 8
  %96 = load i32, i32* @LINESIZE, align 4
  %97 = add nsw i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = alloca i8, i64 %98, align 16
  store i64 %98, i64* %14, align 8
  %100 = load i32, i32* @LINESIZE, align 4
  %101 = add nsw i32 %100, 1
  %102 = zext i32 %101 to i64
  %103 = alloca i8, i64 %102, align 16
  store i64 %102, i64* %15, align 8
  br label %104

104:                                              ; preds = %140, %90
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %141

108:                                              ; preds = %104
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  %113 = add nsw i32 %110, %111
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %109, i64 %114
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %11, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i64 @isOffset(i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %108
  %121 = load i8*, i8** %10, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load i8*, i8** %10, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 (i32, i8*, ...) @l2l_dbg(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %124, i8* %125)
  %127 = load i32, i32* @LINESIZE, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @snprintf(i8* %95, i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %128, i8* %129)
  %131 = load i32, i32* @conOut, align 4
  %132 = call i32 @translate_line(i32 %131, i8* %95, i8* %99, i8* %103)
  %133 = load i32, i32* @conOut, align 4
  %134 = call i32 @report(i32 %133)
  br label %137

135:                                              ; preds = %120
  %136 = call i32 (i32, i8*, ...) @l2l_dbg(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  store i32 3, i32* %6, align 4
  br label %141

137:                                              ; preds = %123
  br label %140

138:                                              ; preds = %108
  %139 = load i8*, i8** %11, align 8
  store i8* %139, i8** %10, align 8
  br label %140

140:                                              ; preds = %138, %137
  br label %104

141:                                              ; preds = %135, %104
  %142 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %142)
  br label %147

143:                                              ; preds = %86
  %144 = load i32, i32* @dbgIn, align 4
  %145 = load i32, i32* @conOut, align 4
  %146 = call i32 @translate_files(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %141
  %148 = load i64, i64* @logFile, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i64, i64* @logFile, align 8
  %152 = call i32 @fclose(i64 %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32*, i32** @opt_Pipe, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* @dbgIn, align 4
  %158 = call i32 @PCLOSE(i32 %157)
  br label %159

159:                                              ; preds = %156, %153
  br label %160

160:                                              ; preds = %159, %66, %60, %54, %48, %36
  %161 = load i32*, i32** @opt_Revision, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32*, i32** @opt_Revision, align 8
  %165 = call i32 @free(i32* %164)
  store i32* null, i32** @opt_Revision, align 8
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i32*, i32** @opt_Pipe, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32*, i32** @opt_Pipe, align 8
  %171 = call i32 @free(i32* %170)
  store i32* null, i32** @opt_Pipe, align 8
  br label %172

172:                                              ; preds = %169, %166
  %173 = call i32 @list_clear(i32* @sources)
  %174 = call i32 @list_clear(i32* @cache)
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @stat_clear(i32*) #1

declare dso_local i32 @clearLastLine(...) #1

declare dso_local i32 @optionInit(i32, i8**) #1

declare dso_local i32 @optionParse(i32, i8**) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @updateSvnlog(...) #1

declare dso_local i64 @check_directory(i32) #1

declare dso_local i32 @create_cache(i32, i32) #1

declare dso_local i32 @read_cache(...) #1

declare dso_local i32 @l2l_dbg(i32, i8*, ...) #1

declare dso_local i64 @set_LogFile(i64*) #1

declare dso_local i32 @POPEN(i32*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @isOffset(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @translate_line(i32, i8*, i8*, i8*) #1

declare dso_local i32 @report(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @translate_files(i32, i32) #1

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @PCLOSE(i32) #1

declare dso_local i32 @list_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
