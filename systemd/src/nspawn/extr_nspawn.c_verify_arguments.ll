; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_verify_arguments.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_verify_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_start_mode = common dso_local global i64 0, align 8
@START_PID2 = common dso_local global i64 0, align 8
@arg_unified_cgroup_hierarchy = common dso_local global i64 0, align 8
@CGROUP_UNIFIED_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Failed to determine whether we are in all unified mode.\00", align 1
@CGROUP_UNIFIED_ALL = common dso_local global i64 0, align 8
@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i32 0, align 4
@CGROUP_UNIFIED_SYSTEMD = common dso_local global i64 0, align 8
@CGROUP_UNIFIED_NONE = common dso_local global i64 0, align 8
@arg_userns_mode = common dso_local global i64 0, align 8
@USER_NAMESPACE_NO = common dso_local global i64 0, align 8
@MOUNT_USE_USERNS = common dso_local global i32 0, align 4
@arg_mount_settings = common dso_local global i32 0, align 4
@arg_private_network = common dso_local global i64 0, align 8
@MOUNT_APPLY_APIVFS_NETNS = common dso_local global i32 0, align 4
@arg_clone_ns_flags = common dso_local global i32 0, align 4
@CLONE_NEWPID = common dso_local global i32 0, align 4
@CLONE_NEWUTS = common dso_local global i32 0, align 4
@arg_register = common dso_local global i32 0, align 4
@START_PID1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"--boot cannot be used without namespacing.\00", align 1
@USER_NAMESPACE_PICK = common dso_local global i64 0, align 8
@arg_userns_chown = common dso_local global i32 0, align 4
@START_BOOT = common dso_local global i64 0, align 8
@arg_kill_signal = common dso_local global i64 0, align 8
@SIGRTMIN = common dso_local global i64 0, align 8
@arg_volatile_mode = common dso_local global i64 0, align 8
@VOLATILE_NO = common dso_local global i64 0, align 8
@arg_read_only = common dso_local global i32 0, align 4
@arg_keep_unit = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [77 x i8] c"--keep-unit --register=yes may not be used when invoked from a user session.\00", align 1
@arg_directory = common dso_local global i64 0, align 8
@arg_image = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"--directory= and --image= may not be combined.\00", align 1
@arg_template = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"--template= and --image= may not be combined.\00", align 1
@arg_machine = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"--template= needs --directory= or --machine=.\00", align 1
@arg_ephemeral = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"--ephemeral and --template= may not be combined.\00", align 1
@arg_link_journal = common dso_local global i32 0, align 4
@LINK_NO = common dso_local global i32 0, align 4
@LINK_AUTO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"--ephemeral and --link-journal= may not be combined.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [83 x i8] c"--private-users= is not supported, kernel compiled without user namespace support.\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"--read-only and --private-users-chown may not be combined.\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"--volatile= and --private-users-chown may not be combined.\00", align 1
@arg_network_namespace_path = common dso_local global i64 0, align 8
@arg_network_interfaces = common dso_local global i64 0, align 8
@arg_network_macvlan = common dso_local global i64 0, align 8
@arg_network_ipvlan = common dso_local global i64 0, align 8
@arg_network_veth_extra = common dso_local global i64 0, align 8
@arg_network_bridge = common dso_local global i64 0, align 8
@arg_network_zone = common dso_local global i64 0, align 8
@arg_network_veth = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [73 x i8] c"--network-namespace-path= cannot be combined with other network options.\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"--network-bridge= and --network-zone= may not be combined.\00", align 1
@.str.13 = private unnamed_addr constant [94 x i8] c"Invalid namespacing settings. Mounting sysfs with --private-users requires --private-network.\00", align 1
@MOUNT_APPLY_APIVFS_RO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [55 x i8] c"Cannot combine --private-users with read-write mounts.\00", align 1
@arg_expose_ports = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [47 x i8] c"Cannot use --port= without private networking.\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"--port= is not supported, compiled without libiptc support.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @verify_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_arguments() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @arg_start_mode, align 8
  %4 = load i64, i64* @START_PID2, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %32

6:                                                ; preds = %0
  %7 = load i64, i64* @arg_unified_cgroup_hierarchy, align 8
  %8 = load i64, i64* @CGROUP_UNIFIED_UNKNOWN, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = call i32 (...) @cg_all_unified()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @log_error_errno(i32 %15, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %1, align 4
  br label %281

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64, i64* @CGROUP_UNIFIED_ALL, align 8
  store i64 %21, i64* @arg_unified_cgroup_hierarchy, align 8
  br label %31

22:                                               ; preds = %17
  %23 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %24 = call i64 @cg_unified_controller(i32 %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @CGROUP_UNIFIED_SYSTEMD, align 8
  store i64 %27, i64* @arg_unified_cgroup_hierarchy, align 8
  br label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @CGROUP_UNIFIED_NONE, align 8
  store i64 %29, i64* @arg_unified_cgroup_hierarchy, align 8
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %20
  br label %32

32:                                               ; preds = %31, %6, %0
  %33 = load i64, i64* @arg_userns_mode, align 8
  %34 = load i64, i64* @USER_NAMESPACE_NO, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @MOUNT_USE_USERNS, align 4
  %38 = load i32, i32* @arg_mount_settings, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @arg_mount_settings, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i64, i64* @arg_private_network, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @MOUNT_APPLY_APIVFS_NETNS, align 4
  %45 = load i32, i32* @arg_mount_settings, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @arg_mount_settings, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @arg_clone_ns_flags, align 4
  %49 = load i32, i32* @CLONE_NEWPID, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @arg_clone_ns_flags, align 4
  %54 = load i32, i32* @CLONE_NEWUTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52, %47
  store i32 0, i32* @arg_register, align 4
  %58 = load i64, i64* @arg_start_mode, align 8
  %59 = load i64, i64* @START_PID1, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @SYNTHETIC_ERRNO(i32 %62)
  %64 = call i32 @log_error_errno(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 %64, i32* %1, align 4
  br label %281

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i64, i64* @arg_userns_mode, align 8
  %68 = load i64, i64* @USER_NAMESPACE_PICK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 1, i32* @arg_userns_chown, align 4
  br label %71

71:                                               ; preds = %70, %66
  %72 = load i64, i64* @arg_start_mode, align 8
  %73 = load i64, i64* @START_BOOT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* @arg_kill_signal, align 8
  %77 = icmp sle i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* @SIGRTMIN, align 8
  %80 = add nsw i64 %79, 3
  store i64 %80, i64* @arg_kill_signal, align 8
  br label %81

81:                                               ; preds = %78, %75, %71
  %82 = load i64, i64* @arg_volatile_mode, align 8
  %83 = load i64, i64* @VOLATILE_NO, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* @arg_read_only, align 4
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i64, i64* @arg_keep_unit, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, i32* @arg_register, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = call i64 @cg_pid_get_owner_uid(i32 0, i32* null)
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* @EINVAL, align 4
  %97 = call i32 @SYNTHETIC_ERRNO(i32 %96)
  %98 = call i32 @log_error_errno(i32 %97, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  store i32 %98, i32* %1, align 4
  br label %281

99:                                               ; preds = %92, %89, %86
  %100 = load i64, i64* @arg_directory, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i64, i64* @arg_image, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @EINVAL, align 4
  %107 = call i32 @SYNTHETIC_ERRNO(i32 %106)
  %108 = call i32 @log_error_errno(i32 %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store i32 %108, i32* %1, align 4
  br label %281

109:                                              ; preds = %102, %99
  %110 = load i64, i64* @arg_template, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i64, i64* @arg_image, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* @EINVAL, align 4
  %117 = call i32 @SYNTHETIC_ERRNO(i32 %116)
  %118 = call i32 @log_error_errno(i32 %117, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 %118, i32* %1, align 4
  br label %281

119:                                              ; preds = %112, %109
  %120 = load i64, i64* @arg_template, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i64, i64* @arg_directory, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* @arg_machine, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* @EINVAL, align 4
  %130 = call i32 @SYNTHETIC_ERRNO(i32 %129)
  %131 = call i32 @log_error_errno(i32 %130, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  store i32 %131, i32* %1, align 4
  br label %281

132:                                              ; preds = %125, %122, %119
  %133 = load i64, i64* @arg_ephemeral, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i64, i64* @arg_template, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* @EINVAL, align 4
  %140 = call i32 @SYNTHETIC_ERRNO(i32 %139)
  %141 = call i32 @log_error_errno(i32 %140, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  store i32 %141, i32* %1, align 4
  br label %281

142:                                              ; preds = %135, %132
  %143 = load i64, i64* @arg_ephemeral, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* @arg_link_journal, align 4
  %147 = load i32, i32* @LINK_NO, align 4
  %148 = load i32, i32* @LINK_AUTO, align 4
  %149 = call i32 @IN_SET(i32 %146, i32 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* @EINVAL, align 4
  %153 = call i32 @SYNTHETIC_ERRNO(i32 %152)
  %154 = call i32 @log_error_errno(i32 %153, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  store i32 %154, i32* %1, align 4
  br label %281

155:                                              ; preds = %145, %142
  %156 = load i64, i64* @arg_userns_mode, align 8
  %157 = load i64, i64* @USER_NAMESPACE_NO, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = call i32 (...) @userns_supported()
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* @EOPNOTSUPP, align 4
  %164 = call i32 @SYNTHETIC_ERRNO(i32 %163)
  %165 = call i32 @log_error_errno(i32 %164, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i64 0, i64 0))
  store i32 %165, i32* %1, align 4
  br label %281

166:                                              ; preds = %159, %155
  %167 = load i32, i32* @arg_userns_chown, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load i32, i32* @arg_read_only, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* @EINVAL, align 4
  %174 = call i32 @SYNTHETIC_ERRNO(i32 %173)
  %175 = call i32 @log_error_errno(i32 %174, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  store i32 %175, i32* %1, align 4
  br label %281

176:                                              ; preds = %169, %166
  %177 = load i32, i32* @arg_userns_chown, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %176
  %180 = load i64, i64* @arg_volatile_mode, align 8
  %181 = load i64, i64* @VOLATILE_NO, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i32, i32* @EINVAL, align 4
  %185 = call i32 @SYNTHETIC_ERRNO(i32 %184)
  %186 = call i32 @log_error_errno(i32 %185, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  store i32 %186, i32* %1, align 4
  br label %281

187:                                              ; preds = %179, %176
  %188 = load i64, i64* @arg_network_namespace_path, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %218

190:                                              ; preds = %187
  %191 = load i64, i64* @arg_network_interfaces, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %214, label %193

193:                                              ; preds = %190
  %194 = load i64, i64* @arg_network_macvlan, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %214, label %196

196:                                              ; preds = %193
  %197 = load i64, i64* @arg_network_ipvlan, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %214, label %199

199:                                              ; preds = %196
  %200 = load i64, i64* @arg_network_veth_extra, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %199
  %203 = load i64, i64* @arg_network_bridge, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %202
  %206 = load i64, i64* @arg_network_zone, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %205
  %209 = load i64, i64* @arg_network_veth, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i64, i64* @arg_private_network, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211, %208, %205, %202, %199, %196, %193, %190
  %215 = load i32, i32* @EINVAL, align 4
  %216 = call i32 @SYNTHETIC_ERRNO(i32 %215)
  %217 = call i32 @log_error_errno(i32 %216, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0))
  store i32 %217, i32* %1, align 4
  br label %281

218:                                              ; preds = %211, %187
  %219 = load i64, i64* @arg_network_bridge, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load i64, i64* @arg_network_zone, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i32, i32* @EINVAL, align 4
  %226 = call i32 @SYNTHETIC_ERRNO(i32 %225)
  %227 = call i32 @log_error_errno(i32 %226, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  store i32 %227, i32* %1, align 4
  br label %281

228:                                              ; preds = %221, %218
  %229 = load i64, i64* @arg_userns_mode, align 8
  %230 = load i64, i64* @USER_NAMESPACE_NO, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %228
  %233 = load i32, i32* @arg_mount_settings, align 4
  %234 = load i32, i32* @MOUNT_APPLY_APIVFS_NETNS, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %232
  %238 = load i64, i64* @arg_private_network, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* @EINVAL, align 4
  %242 = call i32 @SYNTHETIC_ERRNO(i32 %241)
  %243 = call i32 @log_error_errno(i32 %242, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.13, i64 0, i64 0))
  store i32 %243, i32* %1, align 4
  br label %281

244:                                              ; preds = %237, %232, %228
  %245 = load i64, i64* @arg_userns_mode, align 8
  %246 = load i64, i64* @USER_NAMESPACE_NO, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = load i32, i32* @arg_mount_settings, align 4
  %250 = load i32, i32* @MOUNT_APPLY_APIVFS_RO, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %248
  %254 = load i32, i32* @EINVAL, align 4
  %255 = call i32 @SYNTHETIC_ERRNO(i32 %254)
  %256 = call i32 @log_error_errno(i32 %255, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  store i32 %256, i32* %1, align 4
  br label %281

257:                                              ; preds = %248, %244
  %258 = load i64, i64* @arg_expose_ports, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %257
  %261 = load i64, i64* @arg_private_network, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* @EINVAL, align 4
  %265 = call i32 @SYNTHETIC_ERRNO(i32 %264)
  %266 = call i32 @log_error_errno(i32 %265, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  store i32 %266, i32* %1, align 4
  br label %281

267:                                              ; preds = %260, %257
  %268 = load i64, i64* @arg_expose_ports, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %267
  %271 = load i32, i32* @EOPNOTSUPP, align 4
  %272 = call i32 @SYNTHETIC_ERRNO(i32 %271)
  %273 = call i32 @log_error_errno(i32 %272, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0))
  store i32 %273, i32* %1, align 4
  br label %281

274:                                              ; preds = %267
  %275 = call i32 (...) @custom_mount_check_all()
  store i32 %275, i32* %2, align 4
  %276 = load i32, i32* %2, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %274
  %279 = load i32, i32* %2, align 4
  store i32 %279, i32* %1, align 4
  br label %281

280:                                              ; preds = %274
  store i32 0, i32* %1, align 4
  br label %281

281:                                              ; preds = %280, %278, %270, %263, %253, %240, %224, %214, %183, %172, %162, %151, %138, %128, %115, %105, %95, %61, %14
  %282 = load i32, i32* %1, align 4
  ret i32 %282
}

declare dso_local i32 @cg_all_unified(...) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i64 @cg_unified_controller(i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i64 @cg_pid_get_owner_uid(i32, i32*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @userns_supported(...) #1

declare dso_local i32 @custom_mount_check_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
