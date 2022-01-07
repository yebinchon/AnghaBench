; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_seafile-session.c_seafile_session_prepare.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_seafile-session.c_seafile_session_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32 }

@KEY_CLIENT_ID = common dso_local global i32 0, align 4
@KEY_CLIENT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"client id = %s, client_name = %s\0A\00", align 1
@KEY_SYNC_EXTRA_TEMP_FILE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@KEY_DISABLE_VERIFY_CERTIFICATE = common dso_local global i8* null, align 8
@KEY_USE_PROXY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"use_system_proxy\00", align 1
@KEY_PROXY_TYPE = common dso_local global i32 0, align 4
@KEY_PROXY_ADDR = common dso_local global i32 0, align 4
@KEY_PROXY_PORT = common dso_local global i32 0, align 4
@KEY_PROXY_USERNAME = common dso_local global i32 0, align 4
@KEY_PROXY_PASSWORD = common dso_local global i32 0, align 4
@KEY_CDC_AVERAGE_BLOCK_SIZE = common dso_local global i32 0, align 4
@KEY_DISABLE_BLOCK_HASH = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seafile_session_prepare(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 21
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @read_ccnet_conf(i32 %9, i8** %3, i8** %4)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = load i32, i32* @KEY_CLIENT_ID, align 4
  %13 = call i8* @seafile_session_config_get_string(%struct.TYPE_8__* %11, i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 20
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 20
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @g_strdup(i8* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 20
  store i8* %25, i8** %27, align 8
  br label %32

28:                                               ; preds = %20
  %29 = call i8* (...) @generate_client_id()
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 20
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = load i32, i32* @KEY_CLIENT_ID, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 20
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @seafile_session_config_set_string(%struct.TYPE_8__* %33, i32 %34, i8* %37)
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = load i32, i32* @KEY_CLIENT_NAME, align 4
  %42 = call i8* @seafile_session_config_get_string(%struct.TYPE_8__* %40, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 19
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 19
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %68, label %49

49:                                               ; preds = %39
  %50 = load i8*, i8** %4, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = call i8* @g_strdup(i8* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 19
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = load i32, i32* @KEY_CLIENT_NAME, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 19
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @seafile_session_config_set_string(%struct.TYPE_8__* %57, i32 %58, i8* %61)
  br label %67

63:                                               ; preds = %49
  %64 = call i8* @g_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 19
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %52
  br label %68

68:                                               ; preds = %67, %39
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 20
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 19
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @seaf_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %71, i8* %74)
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @g_free(i8* %76)
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @g_free(i8* %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = load i8*, i8** @KEY_SYNC_EXTRA_TEMP_FILE, align 8
  %82 = call i8* @seafile_session_config_get_bool(%struct.TYPE_8__* %80, i8* %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 18
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @TRUE, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 17
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %89 = load i8*, i8** @KEY_DISABLE_VERIFY_CERTIFICATE, align 8
  %90 = call i8* @seafile_session_config_get_bool(%struct.TYPE_8__* %88, i8* %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 16
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = load i8*, i8** @KEY_USE_PROXY, align 8
  %95 = call i8* @seafile_session_config_get_bool(%struct.TYPE_8__* %93, i8* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 15
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = call i8* @seafile_session_config_get_bool(%struct.TYPE_8__* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %99, i8** %5, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %68
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = call i32 @load_system_proxy(%struct.TYPE_8__* %103)
  br label %131

105:                                              ; preds = %68
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %107 = load i32, i32* @KEY_PROXY_TYPE, align 4
  %108 = call i8* @seafile_session_config_get_string(%struct.TYPE_8__* %106, i32 %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 14
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %112 = load i32, i32* @KEY_PROXY_ADDR, align 4
  %113 = call i8* @seafile_session_config_get_string(%struct.TYPE_8__* %111, i32 %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 13
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %117 = load i32, i32* @KEY_PROXY_PORT, align 4
  %118 = call i8* @seafile_session_config_get_int(%struct.TYPE_8__* %116, i32 %117, i32* null)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 12
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %122 = load i32, i32* @KEY_PROXY_USERNAME, align 4
  %123 = call i8* @seafile_session_config_get_string(%struct.TYPE_8__* %121, i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 11
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %127 = load i32, i32* @KEY_PROXY_PASSWORD, align 4
  %128 = call i8* @seafile_session_config_get_string(%struct.TYPE_8__* %126, i32 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 10
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %105, %102
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %133 = load i32, i32* @KEY_CDC_AVERAGE_BLOCK_SIZE, align 4
  %134 = call i8* @seafile_session_config_get_int(%struct.TYPE_8__* %132, i32 %133, i32* null)
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %145

142:                                              ; preds = %131
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %138
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %147 = load i8*, i8** @KEY_DISABLE_BLOCK_HASH, align 8
  %148 = call i8* @seafile_session_config_get_bool(%struct.TYPE_8__* %146, i8* %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 9
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @seaf_mq_manager_init(i32 %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @seaf_commit_manager_init(i32 %157)
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @seaf_fs_manager_init(i32 %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @seaf_branch_manager_init(i32 %165)
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @seaf_filelock_manager_init(i32 %169)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @seaf_repo_manager_init(i32 %173)
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @seaf_clone_manager_init(i32 %177)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @seaf_sync_manager_init(i32 %181)
  ret void
}

declare dso_local i32 @read_ccnet_conf(i32, i8**, i8**) #1

declare dso_local i8* @seafile_session_config_get_string(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @generate_client_id(...) #1

declare dso_local i32 @seafile_session_config_set_string(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @seafile_session_config_get_bool(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @load_system_proxy(%struct.TYPE_8__*) #1

declare dso_local i8* @seafile_session_config_get_int(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @seaf_mq_manager_init(i32) #1

declare dso_local i32 @seaf_commit_manager_init(i32) #1

declare dso_local i32 @seaf_fs_manager_init(i32) #1

declare dso_local i32 @seaf_branch_manager_init(i32) #1

declare dso_local i32 @seaf_filelock_manager_init(i32) #1

declare dso_local i32 @seaf_repo_manager_init(i32) #1

declare dso_local i32 @seaf_clone_manager_init(i32) #1

declare dso_local i32 @seaf_sync_manager_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
