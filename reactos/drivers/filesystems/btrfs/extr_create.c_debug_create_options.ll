; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_create.c_debug_create_options.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_create.c_debug_create_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"requested options:\0A\00", align 1
@FILE_DIRECTORY_FILE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"    FILE_DIRECTORY_FILE\0A\00", align 1
@FILE_WRITE_THROUGH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"    FILE_WRITE_THROUGH\0A\00", align 1
@FILE_SEQUENTIAL_ONLY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"    FILE_SEQUENTIAL_ONLY\0A\00", align 1
@FILE_NO_INTERMEDIATE_BUFFERING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"    FILE_NO_INTERMEDIATE_BUFFERING\0A\00", align 1
@FILE_SYNCHRONOUS_IO_ALERT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"    FILE_SYNCHRONOUS_IO_ALERT\0A\00", align 1
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"    FILE_SYNCHRONOUS_IO_NONALERT\0A\00", align 1
@FILE_NON_DIRECTORY_FILE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"    FILE_NON_DIRECTORY_FILE\0A\00", align 1
@FILE_CREATE_TREE_CONNECTION = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"    FILE_CREATE_TREE_CONNECTION\0A\00", align 1
@FILE_COMPLETE_IF_OPLOCKED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"    FILE_COMPLETE_IF_OPLOCKED\0A\00", align 1
@FILE_NO_EA_KNOWLEDGE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"    FILE_NO_EA_KNOWLEDGE\0A\00", align 1
@FILE_OPEN_REMOTE_INSTANCE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [31 x i8] c"    FILE_OPEN_REMOTE_INSTANCE\0A\00", align 1
@FILE_RANDOM_ACCESS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"    FILE_RANDOM_ACCESS\0A\00", align 1
@FILE_DELETE_ON_CLOSE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"    FILE_DELETE_ON_CLOSE\0A\00", align 1
@FILE_OPEN_BY_FILE_ID = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"    FILE_OPEN_BY_FILE_ID\0A\00", align 1
@FILE_OPEN_FOR_BACKUP_INTENT = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [33 x i8] c"    FILE_OPEN_FOR_BACKUP_INTENT\0A\00", align 1
@FILE_NO_COMPRESSION = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"    FILE_NO_COMPRESSION\0A\00", align 1
@FILE_OPEN_REQUIRING_OPLOCK = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"    FILE_OPEN_REQUIRING_OPLOCK\0A\00", align 1
@FILE_DISALLOW_EXCLUSIVE = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [29 x i8] c"    FILE_DISALLOW_EXCLUSIVE\0A\00", align 1
@FILE_RESERVE_OPFILTER = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [27 x i8] c"    FILE_RESERVE_OPFILTER\0A\00", align 1
@FILE_OPEN_REPARSE_POINT = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [29 x i8] c"    FILE_OPEN_REPARSE_POINT\0A\00", align 1
@FILE_OPEN_NO_RECALL = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [25 x i8] c"    FILE_OPEN_NO_RECALL\0A\00", align 1
@FILE_OPEN_FOR_FREE_SPACE_QUERY = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [36 x i8] c"    FILE_OPEN_FOR_FREE_SPACE_QUERY\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"    unknown options: %x\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"requested options: (none)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @debug_create_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_create_options(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %257

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  store i64 %7, i64* %3, align 8
  %8 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @FILE_DIRECTORY_FILE, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i64, i64* @FILE_DIRECTORY_FILE, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %3, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %13, %6
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @FILE_WRITE_THROUGH, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* @FILE_WRITE_THROUGH, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %3, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @FILE_SEQUENTIAL_ONLY, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i64, i64* @FILE_SEQUENTIAL_ONLY, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %3, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @FILE_NO_INTERMEDIATE_BUFFERING, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i64, i64* @FILE_NO_INTERMEDIATE_BUFFERING, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %3, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @FILE_SYNCHRONOUS_IO_ALERT, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i64, i64* @FILE_SYNCHRONOUS_IO_ALERT, align 8
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %3, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @FILE_SYNCHRONOUS_IO_NONALERT, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i64, i64* @FILE_SYNCHRONOUS_IO_NONALERT, align 8
  %71 = xor i64 %70, -1
  %72 = load i64, i64* %3, align 8
  %73 = and i64 %72, %71
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @FILE_NON_DIRECTORY_FILE, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %81 = load i64, i64* @FILE_NON_DIRECTORY_FILE, align 8
  %82 = xor i64 %81, -1
  %83 = load i64, i64* %3, align 8
  %84 = and i64 %83, %82
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* @FILE_CREATE_TREE_CONNECTION, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %92 = load i64, i64* @FILE_CREATE_TREE_CONNECTION, align 8
  %93 = xor i64 %92, -1
  %94 = load i64, i64* %3, align 8
  %95 = and i64 %94, %93
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* @FILE_COMPLETE_IF_OPLOCKED, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %103 = load i64, i64* @FILE_COMPLETE_IF_OPLOCKED, align 8
  %104 = xor i64 %103, -1
  %105 = load i64, i64* %3, align 8
  %106 = and i64 %105, %104
  store i64 %106, i64* %3, align 8
  br label %107

107:                                              ; preds = %101, %96
  %108 = load i64, i64* %3, align 8
  %109 = load i64, i64* @FILE_NO_EA_KNOWLEDGE, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %114 = load i64, i64* @FILE_NO_EA_KNOWLEDGE, align 8
  %115 = xor i64 %114, -1
  %116 = load i64, i64* %3, align 8
  %117 = and i64 %116, %115
  store i64 %117, i64* %3, align 8
  br label %118

118:                                              ; preds = %112, %107
  %119 = load i64, i64* %3, align 8
  %120 = load i64, i64* @FILE_OPEN_REMOTE_INSTANCE, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %125 = load i64, i64* @FILE_OPEN_REMOTE_INSTANCE, align 8
  %126 = xor i64 %125, -1
  %127 = load i64, i64* %3, align 8
  %128 = and i64 %127, %126
  store i64 %128, i64* %3, align 8
  br label %129

129:                                              ; preds = %123, %118
  %130 = load i64, i64* %3, align 8
  %131 = load i64, i64* @FILE_RANDOM_ACCESS, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %136 = load i64, i64* @FILE_RANDOM_ACCESS, align 8
  %137 = xor i64 %136, -1
  %138 = load i64, i64* %3, align 8
  %139 = and i64 %138, %137
  store i64 %139, i64* %3, align 8
  br label %140

140:                                              ; preds = %134, %129
  %141 = load i64, i64* %3, align 8
  %142 = load i64, i64* @FILE_DELETE_ON_CLOSE, align 8
  %143 = and i64 %141, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %147 = load i64, i64* @FILE_DELETE_ON_CLOSE, align 8
  %148 = xor i64 %147, -1
  %149 = load i64, i64* %3, align 8
  %150 = and i64 %149, %148
  store i64 %150, i64* %3, align 8
  br label %151

151:                                              ; preds = %145, %140
  %152 = load i64, i64* %3, align 8
  %153 = load i64, i64* @FILE_OPEN_BY_FILE_ID, align 8
  %154 = and i64 %152, %153
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %158 = load i64, i64* @FILE_OPEN_BY_FILE_ID, align 8
  %159 = xor i64 %158, -1
  %160 = load i64, i64* %3, align 8
  %161 = and i64 %160, %159
  store i64 %161, i64* %3, align 8
  br label %162

162:                                              ; preds = %156, %151
  %163 = load i64, i64* %3, align 8
  %164 = load i64, i64* @FILE_OPEN_FOR_BACKUP_INTENT, align 8
  %165 = and i64 %163, %164
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %169 = load i64, i64* @FILE_OPEN_FOR_BACKUP_INTENT, align 8
  %170 = xor i64 %169, -1
  %171 = load i64, i64* %3, align 8
  %172 = and i64 %171, %170
  store i64 %172, i64* %3, align 8
  br label %173

173:                                              ; preds = %167, %162
  %174 = load i64, i64* %3, align 8
  %175 = load i64, i64* @FILE_NO_COMPRESSION, align 8
  %176 = and i64 %174, %175
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %180 = load i64, i64* @FILE_NO_COMPRESSION, align 8
  %181 = xor i64 %180, -1
  %182 = load i64, i64* %3, align 8
  %183 = and i64 %182, %181
  store i64 %183, i64* %3, align 8
  br label %184

184:                                              ; preds = %178, %173
  %185 = load i64, i64* %3, align 8
  %186 = load i64, i64* @FILE_OPEN_REQUIRING_OPLOCK, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %191 = load i64, i64* @FILE_OPEN_REQUIRING_OPLOCK, align 8
  %192 = xor i64 %191, -1
  %193 = load i64, i64* %3, align 8
  %194 = and i64 %193, %192
  store i64 %194, i64* %3, align 8
  br label %195

195:                                              ; preds = %189, %184
  %196 = load i64, i64* %3, align 8
  %197 = load i64, i64* @FILE_DISALLOW_EXCLUSIVE, align 8
  %198 = and i64 %196, %197
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %202 = load i64, i64* @FILE_DISALLOW_EXCLUSIVE, align 8
  %203 = xor i64 %202, -1
  %204 = load i64, i64* %3, align 8
  %205 = and i64 %204, %203
  store i64 %205, i64* %3, align 8
  br label %206

206:                                              ; preds = %200, %195
  %207 = load i64, i64* %3, align 8
  %208 = load i64, i64* @FILE_RESERVE_OPFILTER, align 8
  %209 = and i64 %207, %208
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %213 = load i64, i64* @FILE_RESERVE_OPFILTER, align 8
  %214 = xor i64 %213, -1
  %215 = load i64, i64* %3, align 8
  %216 = and i64 %215, %214
  store i64 %216, i64* %3, align 8
  br label %217

217:                                              ; preds = %211, %206
  %218 = load i64, i64* %3, align 8
  %219 = load i64, i64* @FILE_OPEN_REPARSE_POINT, align 8
  %220 = and i64 %218, %219
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %224 = load i64, i64* @FILE_OPEN_REPARSE_POINT, align 8
  %225 = xor i64 %224, -1
  %226 = load i64, i64* %3, align 8
  %227 = and i64 %226, %225
  store i64 %227, i64* %3, align 8
  br label %228

228:                                              ; preds = %222, %217
  %229 = load i64, i64* %3, align 8
  %230 = load i64, i64* @FILE_OPEN_NO_RECALL, align 8
  %231 = and i64 %229, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %235 = load i64, i64* @FILE_OPEN_NO_RECALL, align 8
  %236 = xor i64 %235, -1
  %237 = load i64, i64* %3, align 8
  %238 = and i64 %237, %236
  store i64 %238, i64* %3, align 8
  br label %239

239:                                              ; preds = %233, %228
  %240 = load i64, i64* %3, align 8
  %241 = load i64, i64* @FILE_OPEN_FOR_FREE_SPACE_QUERY, align 8
  %242 = and i64 %240, %241
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %239
  %245 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0))
  %246 = load i64, i64* @FILE_OPEN_FOR_FREE_SPACE_QUERY, align 8
  %247 = xor i64 %246, -1
  %248 = load i64, i64* %3, align 8
  %249 = and i64 %248, %247
  store i64 %249, i64* %3, align 8
  br label %250

250:                                              ; preds = %244, %239
  %251 = load i64, i64* %3, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i64, i64* %3, align 8
  %255 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i64 %254)
  br label %256

256:                                              ; preds = %253, %250
  br label %259

257:                                              ; preds = %1
  %258 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  br label %259

259:                                              ; preds = %257, %256
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
