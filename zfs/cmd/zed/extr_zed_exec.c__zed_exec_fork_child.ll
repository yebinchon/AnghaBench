; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_exec.c__zed_exec_fork_child.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_exec.c__zed_exec_fork_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to fork \22%s\22 for eid=%llu: %s\00", align 1
@ENAMETOOLONG = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i64 0, align 8
@STDERR_FILENO = common dso_local global i64 0, align 8
@ZEVENT_FILENO = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Invoking \22%s\22 eid=%llu pid=%d\00", align 1
@WNOHANG = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to wait for \22%s\22 eid=%llu pid=%d\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Finished \22%s\22 eid=%llu pid=%d exit=%d\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Finished \22%s\22 eid=%llu pid=%d sig=%d/%s\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Finished \22%s\22 eid=%llu pid=%d status=0x%X\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Killing hung \22%s\22 pid=%d\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8**, i32)* @_zed_exec_fork_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_zed_exec_fork_child(i32 %0, i8* %1, i8* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.timespec, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8**, i8*** %9, align 8
  %33 = icmp ne i8** %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp sge i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = trunc i64 %21 to i32
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @snprintf(i8* %23, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %5
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %48, %21
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %5
  %51 = load i32, i32* @LOG_WARNING, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @ENAMETOOLONG, align 8
  %56 = call i32 @strerror(i64 %55)
  %57 = call i32 (i32, i8*, i8*, i64, ...) @zed_log_msg(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %52, i64 %54, i32 %56)
  store i32 1, i32* %18, align 4
  br label %189

58:                                               ; preds = %46
  %59 = call i64 (...) @fork()
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32, i32* @LOG_WARNING, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @errno, align 8
  %68 = call i32 @strerror(i64 %67)
  %69 = call i32 (i32, i8*, i8*, i64, ...) @zed_log_msg(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %64, i64 %66, i32 %68)
  store i32 1, i32* %18, align 4
  br label %189

70:                                               ; preds = %58
  %71 = load i64, i64* %14, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %70
  %74 = call i32 @umask(i32 18)
  %75 = load i32, i32* @O_RDWR, align 4
  %76 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i32, i32* %15, align 4
  %80 = load i64, i64* @STDIN_FILENO, align 8
  %81 = call i32 @dup2(i32 %79, i64 %80)
  %82 = load i32, i32* %15, align 4
  %83 = load i64, i64* @STDOUT_FILENO, align 8
  %84 = call i32 @dup2(i32 %82, i64 %83)
  %85 = load i32, i32* %15, align 4
  %86 = load i64, i64* @STDERR_FILENO, align 8
  %87 = call i32 @dup2(i32 %85, i64 %86)
  br label %88

88:                                               ; preds = %78, %73
  %89 = load i32, i32* %10, align 4
  %90 = load i64, i64* @ZEVENT_FILENO, align 8
  %91 = call i32 @dup2(i32 %89, i64 %90)
  %92 = load i64, i64* @ZEVENT_FILENO, align 8
  %93 = add nsw i64 %92, 1
  %94 = call i32 @zed_file_close_from(i64 %93)
  %95 = load i8*, i8** %8, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = call i32 @execle(i8* %23, i8* %95, i32* null, i8** %96)
  %98 = call i32 @_exit(i32 127) #4
  unreachable

99:                                               ; preds = %70
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* @LOG_INFO, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %14, align 8
  %106 = call i32 (i32, i8*, i8*, i64, ...) @zed_log_msg(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %102, i64 %104, i64 %105)
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %174, %100
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %108, 1000
  br i1 %109, label %110, label %177

110:                                              ; preds = %107
  %111 = load i64, i64* %14, align 8
  %112 = load i32, i32* @WNOHANG, align 4
  %113 = call i64 @waitpid(i64 %111, i32* %17, i32 %112)
  store i64 %113, i64* %16, align 8
  %114 = load i64, i64* %16, align 8
  %115 = icmp eq i64 %114, -1
  br i1 %115, label %116, label %128

116:                                              ; preds = %110
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @EINTR, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %174

121:                                              ; preds = %116
  %122 = load i32, i32* @LOG_WARNING, align 4
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %14, align 8
  %127 = call i32 (i32, i8*, i8*, i64, ...) @zed_log_msg(i32 %122, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %123, i64 %125, i64 %126)
  br label %177

128:                                              ; preds = %110
  %129 = load i64, i64* %16, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  store i32 10000000, i32* %133, align 8
  %134 = call i32 @nanosleep(%struct.timespec* %19, i32* null)
  br label %174

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %17, align 4
  %138 = call i64 @WIFEXITED(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load i32, i32* @LOG_INFO, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %14, align 8
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @WEXITSTATUS(i32 %146)
  %148 = call i32 (i32, i8*, i8*, i64, ...) @zed_log_msg(i32 %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %142, i64 %144, i64 %145, i32 %147)
  br label %173

149:                                              ; preds = %136
  %150 = load i32, i32* %17, align 4
  %151 = call i64 @WIFSIGNALED(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %149
  %154 = load i32, i32* @LOG_INFO, align 4
  %155 = load i8*, i8** %8, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %14, align 8
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @WTERMSIG(i32 %159)
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @WTERMSIG(i32 %161)
  %163 = call i32 @strsignal(i32 %162)
  %164 = call i32 (i32, i8*, i8*, i64, ...) @zed_log_msg(i32 %154, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %155, i64 %157, i64 %158, i32 %160, i32 %163)
  br label %172

165:                                              ; preds = %149
  %166 = load i32, i32* @LOG_INFO, align 4
  %167 = load i8*, i8** %8, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = load i32, i32* %17, align 4
  %171 = call i32 (i32, i8*, i8*, i64, ...) @zed_log_msg(i32 %166, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %167, i64 %169, i32 %170)
  br label %172

172:                                              ; preds = %165, %153
  br label %173

173:                                              ; preds = %172, %140
  br label %177

174:                                              ; preds = %131, %120
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %107

177:                                              ; preds = %173, %121, %107
  %178 = load i64, i64* %16, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = load i32, i32* @LOG_WARNING, align 4
  %182 = load i8*, i8** %8, align 8
  %183 = load i64, i64* %14, align 8
  %184 = call i32 (i32, i8*, i8*, i64, ...) @zed_log_msg(i32 %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %182, i64 %183)
  %185 = load i64, i64* %14, align 8
  %186 = load i32, i32* @SIGKILL, align 4
  %187 = call i32 @kill(i64 %185, i32 %186)
  br label %188

188:                                              ; preds = %180, %177
  store i32 0, i32* %18, align 4
  br label %189

189:                                              ; preds = %188, %62, %50
  %190 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %18, align 4
  switch i32 %191, label %193 [
    i32 0, label %192
    i32 1, label %192
  ]

192:                                              ; preds = %189, %189
  ret void

193:                                              ; preds = %189
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @zed_log_msg(i32, i8*, i8*, i64, ...) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @umask(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @dup2(i32, i64) #2

declare dso_local i32 @zed_file_close_from(i64) #2

declare dso_local i32 @execle(i8*, i8*, i32*, i8**) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i64 @waitpid(i64, i32*, i32) #2

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #2

declare dso_local i64 @WIFEXITED(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

declare dso_local i64 @WIFSIGNALED(i32) #2

declare dso_local i32 @WTERMSIG(i32) #2

declare dso_local i32 @strsignal(i32) #2

declare dso_local i32 @kill(i64, i32) #2

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
