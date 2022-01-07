; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_open_state.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_open_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i64, i32, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to open state file: %s\00", align 1
@ENAMETOOLONG = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to create directory \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to close state file \22%s\22: %s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to open state file \22%s\22: %s\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to lock state file \22%s\22: %s\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to test lock on state file \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Found PID %d bound to state file \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Inconsistent lock state on state file \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zed_conf_open_state(%struct.zed_conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zed_conf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.zed_conf* %0, %struct.zed_conf** %3, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @S_IRWXU, align 4
  %17 = load i32, i32* @S_IRGRP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @S_IXGRP, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @S_IROTH, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @S_IXOTH, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %26 = icmp ne %struct.zed_conf* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %29 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27, %1
  %33 = load i64, i64* @EINVAL, align 8
  store i64 %33, i64* @errno, align 8
  %34 = load i32, i32* @LOG_ERR, align 4
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 @strerror(i64 %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %38)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %197

40:                                               ; preds = %27
  %41 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %42 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = trunc i64 %13 to i32
  %45 = call i32 @strlcpy(i8* %15, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %47, %13
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load i64, i64* @ENAMETOOLONG, align 8
  store i64 %50, i64* @errno, align 8
  %51 = load i32, i32* @LOG_WARNING, align 4
  %52 = load i64, i64* @errno, align 8
  %53 = call i32 @strerror(i64 %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %55)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %197

57:                                               ; preds = %40
  %58 = call i8* @strrchr(i8* %15, i8 signext 47)
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @mkdirp(i8* %15, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @EEXIST, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* @LOG_WARNING, align 4
  %73 = load i64, i64* @errno, align 8
  %74 = call i32 @strerror(i64 %73)
  %75 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %74)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %197

76:                                               ; preds = %67, %63
  %77 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %78 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %83 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @close(i64 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load i32, i32* @LOG_WARNING, align 4
  %89 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %90 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i64, i64* @errno, align 8
  %95 = call i32 @strerror(i64 %94)
  %96 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %93, i32 %95)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %197

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %100 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %105 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @unlink(i32 %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %110 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @O_RDWR, align 4
  %113 = load i32, i32* @O_CREAT, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @S_IRUSR, align 4
  %116 = load i32, i32* @S_IWUSR, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @S_IRGRP, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @S_IROTH, align 4
  %121 = or i32 %119, %120
  %122 = call i64 @open(i32 %111, i32 %114, i32 %121)
  %123 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %124 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %126 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %108
  %130 = load i32, i32* @LOG_WARNING, align 4
  %131 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %132 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = load i64, i64* @errno, align 8
  %137 = call i32 @strerror(i64 %136)
  %138 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %135, i32 %137)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %197

139:                                              ; preds = %108
  %140 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %141 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @zed_file_lock(i64 %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load i32, i32* @LOG_WARNING, align 4
  %148 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %149 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = load i64, i64* @errno, align 8
  %154 = call i32 @strerror(i64 %153)
  %155 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %152, i32 %154)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %197

156:                                              ; preds = %139
  %157 = load i32, i32* %9, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %196

159:                                              ; preds = %156
  %160 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %161 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @zed_file_is_locked(i64 %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  %167 = load i32, i32* @LOG_WARNING, align 4
  %168 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %169 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to i8*
  %173 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %167, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %172)
  br label %195

174:                                              ; preds = %159
  %175 = load i32, i32* %11, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load i32, i32* @LOG_WARNING, align 4
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i8*
  %182 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %183 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %178, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %181, i32 %184)
  br label %194

186:                                              ; preds = %174
  %187 = load i32, i32* @LOG_WARNING, align 4
  %188 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %189 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %187, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %192)
  br label %194

194:                                              ; preds = %186, %177
  br label %195

195:                                              ; preds = %194, %166
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %197

196:                                              ; preds = %156
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %197

197:                                              ; preds = %196, %195, %146, %129, %87, %71, %49, %32
  %198 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zed_log_msg(i32, i8*, i8*, ...) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @mkdirp(i8*, i32) #2

declare dso_local i64 @close(i64) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i64 @open(i32, i32, i32) #2

declare dso_local i32 @zed_file_lock(i64) #2

declare dso_local i32 @zed_file_is_locked(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
