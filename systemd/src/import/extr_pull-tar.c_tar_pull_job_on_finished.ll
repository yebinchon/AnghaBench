; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_pull-tar.c_tar_pull_job_on_finished.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_pull-tar.c_tar_pull_job_on_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, i64, i32, %struct.TYPE_21__*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_21__*)*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i8* }
%struct.TYPE_20__ = type { i32, i8* }

@.str = private unnamed_addr constant [58 x i8] c"Settings file could not be retrieved, proceeding without.\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Failed to retrieve SHA256 checksum, cannot verify. (Try --verify=no?)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to retrieve image file. (Wrong URL?)\00", align 1
@VERIFICATION_PER_DIRECTORY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [69 x i8] c"Failed to retrieve signature file, cannot verify. (Try --verify=no?)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@WAIT_LOG = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TAR_VERIFYING = common dso_local global i32 0, align 4
@TAR_FINALIZING = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Failed to rename to final image name to %s: %m\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".nspawn\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Failed to rename settings file to %s: %m\00", align 1
@TAR_COPYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @tar_pull_job_on_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tar_pull_job_on_finished(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %5 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_21__* %5)
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %10 = call i32 @assert(%struct.TYPE_21__* %9)
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %3, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = icmp eq %struct.TYPE_21__* %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @log_info_errno(i32 %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %19
  br label %62

30:                                               ; preds = %1
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 11
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %40 = icmp ne %struct.TYPE_21__* %36, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 12
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = icmp eq %struct.TYPE_21__* %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, ...) @log_error_errno(i32 %50, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %57

52:                                               ; preds = %41
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @log_error_errno(i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %4, align 4
  br label %294

61:                                               ; preds = %35, %30
  br label %62

62:                                               ; preds = %61, %29
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = call i32 @tar_pull_is_done(%struct.TYPE_21__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %315

67:                                               ; preds = %62
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 11
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = icmp ne %struct.TYPE_21__* %70, null
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 12
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VERIFICATION_PER_DIRECTORY, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %72
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 11
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, ...) @log_error_errno(i32 %90, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 11
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %4, align 4
  br label %294

97:                                               ; preds = %80, %72, %67
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 13
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @safe_close(i8* %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 13
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  store i8* %103, i8** %107, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = icmp ne %struct.TYPE_21__* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %97
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 14
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @safe_close(i8* %117)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 14
  store i8* %118, i8** %122, align 8
  br label %123

123:                                              ; preds = %112, %97
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 10
  %127 = call i32 @tar_pull_determine_path(%struct.TYPE_21__* %124, i8* null, %struct.TYPE_21__** %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %294

131:                                              ; preds = %123
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %131
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @WAIT_LOG, align 4
  %141 = call i32 @wait_for_terminate_and_check(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %139, i32 %140)
  store i32 %141, i32* %4, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %294

147:                                              ; preds = %136
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @EXIT_SUCCESS, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %294

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %131
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 13
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %284, label %162

162:                                              ; preds = %155
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %164 = load i32, i32* @TAR_VERIFYING, align 4
  %165 = call i32 @tar_pull_report_progress(%struct.TYPE_21__* %163, i32 %164)
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 13
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 12
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 11
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  %178 = call i32 @pull_verify(%struct.TYPE_20__* %168, i32* null, %struct.TYPE_21__* %171, %struct.TYPE_21__* %174, %struct.TYPE_21__* %177)
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %162
  br label %294

182:                                              ; preds = %162
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %184 = load i32, i32* @TAR_FINALIZING, align 4
  %185 = call i32 @tar_pull_report_progress(%struct.TYPE_21__* %183, i32 %184)
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 9
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %187, align 8
  %189 = call i32 @import_make_read_only(%struct.TYPE_21__* %188)
  store i32 %189, i32* %4, align 4
  %190 = load i32, i32* %4, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %182
  br label %294

193:                                              ; preds = %182
  %194 = load i32, i32* @AT_FDCWD, align 4
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 9
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %196, align 8
  %198 = load i32, i32* @AT_FDCWD, align 4
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 10
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %200, align 8
  %202 = call i32 @rename_noreplace(i32 %194, %struct.TYPE_21__* %197, i32 %198, %struct.TYPE_21__* %201)
  store i32 %202, i32* %4, align 4
  %203 = load i32, i32* %4, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %193
  %206 = load i32, i32* %4, align 4
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 10
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %208, align 8
  %210 = call i32 (i32, i8*, ...) @log_error_errno(i32 %206, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_21__* %209)
  br label %294

211:                                              ; preds = %193
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 9
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %213, align 8
  %215 = call i8* @mfree(%struct.TYPE_21__* %214)
  %216 = bitcast i8* %215 to %struct.TYPE_21__*
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 9
  store %struct.TYPE_21__* %216, %struct.TYPE_21__** %218, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %220, align 8
  %222 = icmp ne %struct.TYPE_21__* %221, null
  br i1 %222, label %223, label %283

223:                                              ; preds = %211
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %283

230:                                              ; preds = %223
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 6
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = call i32 @assert(%struct.TYPE_21__* %233)
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 7
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %236, align 8
  %238 = call i8* @mfree(%struct.TYPE_21__* %237)
  %239 = bitcast i8* %238 to %struct.TYPE_21__*
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 7
  store %struct.TYPE_21__* %239, %struct.TYPE_21__** %241, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 7
  %245 = call i32 @tar_pull_determine_path(%struct.TYPE_21__* %242, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_21__** %244)
  store i32 %245, i32* %4, align 4
  %246 = load i32, i32* %4, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %230
  br label %294

249:                                              ; preds = %230
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 6
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %251, align 8
  %253 = call i32 @import_make_read_only(%struct.TYPE_21__* %252)
  store i32 %253, i32* %4, align 4
  %254 = load i32, i32* %4, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  br label %294

257:                                              ; preds = %249
  %258 = load i32, i32* @AT_FDCWD, align 4
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 6
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %260, align 8
  %262 = load i32, i32* @AT_FDCWD, align 4
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 7
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %264, align 8
  %266 = call i32 @rename_noreplace(i32 %258, %struct.TYPE_21__* %261, i32 %262, %struct.TYPE_21__* %265)
  store i32 %266, i32* %4, align 4
  %267 = load i32, i32* %4, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %257
  %270 = load i32, i32* %4, align 4
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 7
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %272, align 8
  %274 = call i32 (i32, i8*, ...) @log_error_errno(i32 %270, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_21__* %273)
  br label %294

275:                                              ; preds = %257
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 6
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %277, align 8
  %279 = call i8* @mfree(%struct.TYPE_21__* %278)
  %280 = bitcast i8* %279 to %struct.TYPE_21__*
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 6
  store %struct.TYPE_21__* %280, %struct.TYPE_21__** %282, align 8
  br label %283

283:                                              ; preds = %275, %223, %211
  br label %284

284:                                              ; preds = %283, %155
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %286 = load i32, i32* @TAR_COPYING, align 4
  %287 = call i32 @tar_pull_report_progress(%struct.TYPE_21__* %285, i32 %286)
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %289 = call i32 @tar_pull_make_local_copy(%struct.TYPE_21__* %288)
  store i32 %289, i32* %4, align 4
  %290 = load i32, i32* %4, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %284
  br label %294

293:                                              ; preds = %284
  store i32 0, i32* %4, align 4
  br label %294

294:                                              ; preds = %293, %292, %269, %256, %248, %205, %192, %181, %151, %146, %130, %87, %57
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 5
  %297 = load i32 (%struct.TYPE_21__*, i32, %struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_21__*)** %296, align 8
  %298 = icmp ne i32 (%struct.TYPE_21__*, i32, %struct.TYPE_21__*)* %297, null
  br i1 %298, label %299, label %309

299:                                              ; preds = %294
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 5
  %302 = load i32 (%struct.TYPE_21__*, i32, %struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_21__*)** %301, align 8
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %304 = load i32, i32* %4, align 4
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 4
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %306, align 8
  %308 = call i32 %302(%struct.TYPE_21__* %303, i32 %304, %struct.TYPE_21__* %307)
  br label %315

309:                                              ; preds = %294
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* %4, align 4
  %314 = call i32 @sd_event_exit(i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %66, %309, %299
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_21__*) #1

declare dso_local i32 @log_info_errno(i32, i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @tar_pull_is_done(%struct.TYPE_21__*) #1

declare dso_local i8* @safe_close(i8*) #1

declare dso_local i32 @tar_pull_determine_path(%struct.TYPE_21__*, i8*, %struct.TYPE_21__**) #1

declare dso_local i32 @wait_for_terminate_and_check(i8*, i64, i32) #1

declare dso_local i32 @tar_pull_report_progress(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @pull_verify(%struct.TYPE_20__*, i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @import_make_read_only(%struct.TYPE_21__*) #1

declare dso_local i32 @rename_noreplace(i32, %struct.TYPE_21__*, i32, %struct.TYPE_21__*) #1

declare dso_local i8* @mfree(%struct.TYPE_21__*) #1

declare dso_local i32 @tar_pull_make_local_copy(%struct.TYPE_21__*) #1

declare dso_local i32 @sd_event_exit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
