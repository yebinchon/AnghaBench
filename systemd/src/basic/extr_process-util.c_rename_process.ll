; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_process-util.c_rename_process.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_process-util.c_rename_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rename_process.mm_size = internal global i64 0, align 8
@rename_process.mm = internal global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PR_SET_NAME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PR_SET_NAME failed: %m\00", align 1
@TASK_COMM_LEN = common dso_local global i64 0, align 8
@program_invocation_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Skipping PR_SET_MM, as we don't have privileges.\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"mmap() failed: %m\00", align 1
@PR_SET_MM = common dso_local global i32 0, align 4
@PR_SET_MM_ARG_START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"PR_SET_MM_ARG_START failed, attempting PR_SET_MM_ARG_END hack: %m\00", align 1
@PR_SET_MM_ARG_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"PR_SET_MM_ARG_END hack failed, proceeding without: %m\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"PR_SET_MM_ARG_START still failed, proceeding without: %m\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"PR_SET_MM_ARG_END failed, proceeding without: %m\00", align 1
@saved_argc = common dso_local global i32 0, align 4
@saved_argv = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rename_process(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @isempty(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %234

17:                                               ; preds = %1
  %18 = call i32 (...) @is_main_thread()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %234

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %5, align 8
  %26 = load i32, i32* @PR_SET_NAME, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 (i32, i8*, ...) @prctl(i32 %26, i8* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @log_debug_errno(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @TASK_COMM_LEN, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i8*, i8** @program_invocation_name, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i8*, i8** @program_invocation_name, align 8
  %43 = call i64 @strlen(i8* %42)
  store i64 %43, i64* %6, align 8
  %44 = load i8*, i8** @program_invocation_name, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @strncpy(i8* %44, i8* %45, i64 %46)
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %38
  %54 = call i64 (...) @geteuid()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @log_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %174

58:                                               ; preds = %53
  %59 = load i64, i64* @rename_process.mm_size, align 8
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %153

63:                                               ; preds = %58
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 1
  %66 = call i64 @PAGE_ALIGN(i64 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* @PROT_READ, align 4
  %69 = load i32, i32* @PROT_WRITE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MAP_PRIVATE, align 4
  %72 = load i32, i32* @MAP_ANONYMOUS, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @mmap(i32* null, i64 %67, i32 %70, i32 %73, i32 -1, i32 0)
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** @MAP_FAILED, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %63
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @log_debug_errno(i32 %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %175

81:                                               ; preds = %63
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @strncpy(i8* %82, i8* %83, i64 %84)
  %86 = load i32, i32* @PR_SET_MM, align 4
  %87 = load i32, i32* @PR_SET_MM_ARG_START, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load i8*, i8** %8, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = call i64 (i32, i8*, ...) @prctl(i32 %86, i8* %89, i64 %91, i32 0, i32 0)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %81
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 @log_debug_errno(i32 %95, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @PR_SET_MM, align 4
  %98 = load i32, i32* @PR_SET_MM_ARG_END, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load i8*, i8** %8, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %102, %103
  %105 = add i64 %104, 1
  %106 = call i64 (i32, i8*, ...) @prctl(i32 %97, i8* %100, i64 %105, i32 0, i32 0)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %94
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 @log_debug_errno(i32 %109, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i8*, i8** %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @munmap(i8* %111, i64 %112)
  br label %175

114:                                              ; preds = %94
  %115 = load i32, i32* @PR_SET_MM, align 4
  %116 = load i32, i32* @PR_SET_MM_ARG_START, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = load i8*, i8** %8, align 8
  %120 = ptrtoint i8* %119 to i64
  %121 = call i64 (i32, i8*, ...) @prctl(i32 %115, i8* %118, i64 %120, i32 0, i32 0)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i32, i32* @errno, align 4
  %125 = call i32 @log_debug_errno(i32 %124, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %175

126:                                              ; preds = %114
  br label %143

127:                                              ; preds = %81
  %128 = load i32, i32* @PR_SET_MM, align 4
  %129 = load i32, i32* @PR_SET_MM_ARG_END, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load i8*, i8** %8, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = load i64, i64* %5, align 8
  %135 = add i64 %133, %134
  %136 = add i64 %135, 1
  %137 = call i64 (i32, i8*, ...) @prctl(i32 %128, i8* %131, i64 %136, i32 0, i32 0)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load i32, i32* @errno, align 4
  %141 = call i32 @log_debug_errno(i32 %140, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %127
  br label %143

143:                                              ; preds = %142, %126
  %144 = load i8*, i8** @rename_process.mm, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i8*, i8** @rename_process.mm, align 8
  %148 = load i64, i64* @rename_process.mm_size, align 8
  %149 = call i32 @munmap(i8* %147, i64 %148)
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i8*, i8** %8, align 8
  store i8* %151, i8** @rename_process.mm, align 8
  %152 = load i64, i64* %7, align 8
  store i64 %152, i64* @rename_process.mm_size, align 8
  br label %173

153:                                              ; preds = %58
  %154 = load i8*, i8** @rename_process.mm, align 8
  %155 = load i8*, i8** %3, align 8
  %156 = load i64, i64* @rename_process.mm_size, align 8
  %157 = call i32 @strncpy(i8* %154, i8* %155, i64 %156)
  %158 = load i32, i32* @PR_SET_MM, align 4
  %159 = load i32, i32* @PR_SET_MM_ARG_END, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i8*
  %162 = load i8*, i8** @rename_process.mm, align 8
  %163 = ptrtoint i8* %162 to i64
  %164 = load i64, i64* %5, align 8
  %165 = add i64 %163, %164
  %166 = add i64 %165, 1
  %167 = call i64 (i32, i8*, ...) @prctl(i32 %158, i8* %161, i64 %166, i32 0, i32 0)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %153
  %170 = load i32, i32* @errno, align 4
  %171 = call i32 @log_debug_errno(i32 %170, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %153
  br label %173

173:                                              ; preds = %172, %150
  br label %174

174:                                              ; preds = %173, %56
  br label %175

175:                                              ; preds = %174, %123, %108, %78
  %176 = load i32, i32* @saved_argc, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %229

178:                                              ; preds = %175
  %179 = load i8**, i8*** @saved_argv, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 0
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %199

183:                                              ; preds = %178
  %184 = load i8**, i8*** @saved_argv, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @strlen(i8* %186)
  store i64 %187, i64* %10, align 8
  %188 = load i8**, i8*** @saved_argv, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 0
  %190 = load i8*, i8** %189, align 8
  %191 = load i8*, i8** %3, align 8
  %192 = load i64, i64* %10, align 8
  %193 = call i32 @strncpy(i8* %190, i8* %191, i64 %192)
  %194 = load i64, i64* %5, align 8
  %195 = load i64, i64* %10, align 8
  %196 = icmp ugt i64 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  store i32 1, i32* %4, align 4
  br label %198

198:                                              ; preds = %197, %183
  br label %199

199:                                              ; preds = %198, %178
  store i32 1, i32* %9, align 4
  br label %200

200:                                              ; preds = %225, %199
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @saved_argc, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %228

204:                                              ; preds = %200
  %205 = load i8**, i8*** @saved_argv, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %204
  br label %228

212:                                              ; preds = %204
  %213 = load i8**, i8*** @saved_argv, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = load i8**, i8*** @saved_argv, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @strlen(i8* %222)
  %224 = call i32 @memzero(i8* %217, i64 %223)
  br label %225

225:                                              ; preds = %212
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %200

228:                                              ; preds = %211, %200
  br label %229

229:                                              ; preds = %228, %175
  %230 = load i32, i32* %4, align 4
  %231 = icmp ne i32 %230, 0
  %232 = xor i1 %231, true
  %233 = zext i1 %232 to i32
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %229, %20, %14
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @is_main_thread(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @prctl(i32, i8*, ...) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @memzero(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
