; ModuleID = '/home/carl/AnghaBench/systemd/src/coredump/extr_coredump.c_gather_pid_metadata.c'
source_filename = "/home/carl/AnghaBench/systemd/src/coredump/extr_coredump.c_gather_pid_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec_wrapper = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to get COMM: %m\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"COREDUMP_COMM=\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"COREDUMP_EXE=\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to get EXE, ignoring: %m\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"COREDUMP_UNIT=\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"COREDUMP_USER_UNIT=\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"COREDUMP_SESSION=\00", align 1
@UID_FMT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"COREDUMP_OWNER_UID=\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"COREDUMP_SLICE=\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"COREDUMP_CMDLINE=\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"COREDUMP_CGROUP=\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"COREDUMP_OPEN_FDS=\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"COREDUMP_PROC_STATUS=\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"COREDUMP_PROC_MAPS=\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"limits\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"COREDUMP_PROC_LIMITS=\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"COREDUMP_PROC_CGROUP=\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"mountinfo\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"COREDUMP_PROC_MOUNTINFO=\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"COREDUMP_CWD=\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"COREDUMP_ROOT=\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"COREDUMP_CONTAINER_CMDLINE=\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"COREDUMP_ENVIRON=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iovec_wrapper*, %struct.TYPE_4__*)* @gather_pid_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather_pid_metadata(%struct.iovec_wrapper* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iovec_wrapper*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iovec_wrapper* %0, %struct.iovec_wrapper** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @get_process_comm(i32 %15, i8** %8)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @log_error_errno(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  br label %210

22:                                               ; preds = %2
  %23 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %210

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @get_process_exe(i32 %31, i8** %8)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @log_warning_errno(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @cg_pid_get_unit(i32 %46, i8** %8)
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @cg_pid_get_user_unit(i32 %54, i8** %8)
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @sd_pid_get_session(i32 %62, i8** %8)
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @sd_pid_get_owner_uid(i32 %70, i32* %6)
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load i32, i32* @UID_FMT, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @asprintf(i8** %8, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @sd_pid_get_slice(i32 %85, i8** %8)
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SIZE_MAX, align 4
  %95 = call i64 @get_process_cmdline(i32 %93, i32 %94, i32 0, i8** %8)
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @cg_pid_get_path_shifted(i32 %102, i32* null, i8** %8)
  %104 = icmp sge i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %7, align 4
  %111 = call i64 @compose_open_fds(i32 %110, i8** %8)
  %112 = icmp sge i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %113, %109
  %118 = load i32, i32* %7, align 4
  %119 = call i8* @procfs_file_alloca(i32 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  store i8* %119, i8** %9, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i64 @read_full_file(i8* %120, i8** %8, i32* null)
  %122 = icmp sge i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %117
  %128 = load i32, i32* %7, align 4
  %129 = call i8* @procfs_file_alloca(i32 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store i8* %129, i8** %9, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call i64 @read_full_file(i8* %130, i8** %8, i32* null)
  %132 = icmp sge i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %133, %127
  %138 = load i32, i32* %7, align 4
  %139 = call i8* @procfs_file_alloca(i32 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  store i8* %139, i8** %9, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = call i64 @read_full_file(i8* %140, i8** %8, i32* null)
  %142 = icmp sge i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %143, %137
  %148 = load i32, i32* %7, align 4
  %149 = call i8* @procfs_file_alloca(i32 %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  store i8* %149, i8** %9, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = call i64 @read_full_file(i8* %150, i8** %8, i32* null)
  %152 = icmp sge i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %153, %147
  %158 = load i32, i32* %7, align 4
  %159 = call i8* @procfs_file_alloca(i32 %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  store i8* %159, i8** %9, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = call i64 @read_full_file(i8* %160, i8** %8, i32* null)
  %162 = icmp sge i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %163, %157
  %168 = load i32, i32* %7, align 4
  %169 = call i64 @get_process_cwd(i32 %168, i8** %8)
  %170 = icmp sge i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %171, %167
  %176 = load i32, i32* %7, align 4
  %177 = call i64 @get_process_root(i32 %176, i8** %8)
  %178 = icmp sge i64 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %175
  %180 = load i8*, i8** %8, align 8
  %181 = call i64 @strcmp(i8* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %182 = icmp eq i64 %181, 0
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %11, align 4
  %184 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %185 = load i8*, i8** %8, align 8
  %186 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* %185)
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %179
  %190 = load i32, i32* %7, align 4
  %191 = call i64 @get_process_container_parent_cmdline(i32 %190, i8** %8)
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %193, %189, %179
  br label %198

198:                                              ; preds = %197, %175
  %199 = load i32, i32* %7, align 4
  %200 = call i64 @get_process_environ(i32 %199, i8** %8)
  %201 = icmp sge i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %204 = load i8*, i8** %8, align 8
  %205 = call i32 @iovw_put_string_field_free(%struct.iovec_wrapper* %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %202, %198
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %208 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %4, align 8
  %209 = call i32 @save_context(%struct.TYPE_4__* %207, %struct.iovec_wrapper* %208)
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %206, %28, %19
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @get_process_comm(i32, i8**) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @iovw_put_string_field_free(%struct.iovec_wrapper*, i8*, i8*) #1

declare dso_local i32 @get_process_exe(i32, i8**) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i64 @cg_pid_get_unit(i32, i8**) #1

declare dso_local i64 @cg_pid_get_user_unit(i32, i8**) #1

declare dso_local i64 @sd_pid_get_session(i32, i8**) #1

declare dso_local i64 @sd_pid_get_owner_uid(i32, i32*) #1

declare dso_local i32 @asprintf(i8**, i32, i32) #1

declare dso_local i64 @sd_pid_get_slice(i32, i8**) #1

declare dso_local i64 @get_process_cmdline(i32, i32, i32, i8**) #1

declare dso_local i64 @cg_pid_get_path_shifted(i32, i32*, i8**) #1

declare dso_local i64 @compose_open_fds(i32, i8**) #1

declare dso_local i8* @procfs_file_alloca(i32, i8*) #1

declare dso_local i64 @read_full_file(i8*, i8**, i32*) #1

declare dso_local i64 @get_process_cwd(i32, i8**) #1

declare dso_local i64 @get_process_root(i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @get_process_container_parent_cmdline(i32, i8**) #1

declare dso_local i64 @get_process_environ(i32, i8**) #1

declare dso_local i32 @save_context(%struct.TYPE_4__*, %struct.iovec_wrapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
