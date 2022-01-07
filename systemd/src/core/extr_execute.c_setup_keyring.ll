; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_execute.c_setup_keyring.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_execute.c_setup_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }

@EXEC_KEYRING_INHERIT = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to change GID for user keyring: %m\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to change UID for user keyring: %m\00", align 1
@KEYCTL_JOIN_SESSION_KEYRING = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Kernel keyring not supported, ignoring.\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Kernel keyring access prohibited, ignoring.\00", align 1
@EDQUOT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"Out of kernel keyrings to allocate, ignoring.\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Setting up kernel keyring failed: %m\00", align 1
@EXEC_KEYRING_SHARED = common dso_local global i64 0, align 8
@KEYCTL_LINK = common dso_local global i32 0, align 4
@KEY_SPEC_USER_KEYRING = common dso_local global i32 0, align 4
@KEY_SPEC_SESSION_KEYRING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"Failed to link user keyring into session keyring: %m\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Failed to change UID back for user keyring: %m\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Failed to change GID back for user keyring: %m\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"invocation_id\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Failed to add invocation ID to keyring, ignoring: %m\00", align 1
@KEYCTL_SETPERM = common dso_local global i32 0, align 4
@KEY_POS_VIEW = common dso_local global i32 0, align 4
@KEY_POS_READ = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4
@KEY_USR_SEARCH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [48 x i8] c"Failed to restrict invocation ID permission: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i64, i64)* @setup_keyring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_keyring(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = call i32 @assert(%struct.TYPE_10__* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = call i32 @assert(%struct.TYPE_10__* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = call i32 @assert(%struct.TYPE_10__* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EXEC_KEYRING_INHERIT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %211

29:                                               ; preds = %5
  %30 = call i64 (...) @getuid()
  store i64 %30, i64* %14, align 8
  %31 = call i64 (...) @getgid()
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @gid_is_valid(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @setregid(i64 %40, i32 -1)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = load i64, i64* @errno, align 8
  %46 = call i32 @log_unit_error_errno(%struct.TYPE_10__* %44, i64 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 %46, i32* %6, align 4
  br label %211

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %35, %29
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @uid_is_valid(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @setreuid(i64 %57, i32 -1)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = load i64, i64* @errno, align 8
  %63 = call i32 @log_unit_error_errno(%struct.TYPE_10__* %61, i64 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %13, align 4
  br label %195

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %52, %48
  %66 = load i32, i32* @KEYCTL_JOIN_SESSION_KEYRING, align 4
  %67 = call i64 @keyctl(i32 %66, i32 0, i32 0, i32 0, i32 0)
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %104

71:                                               ; preds = %65
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @ENOSYS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = load i64, i64* @errno, align 8
  %78 = call i32 @log_unit_debug_errno(%struct.TYPE_10__* %76, i64 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %103

79:                                               ; preds = %71
  %80 = load i64, i64* @errno, align 8
  %81 = load i32, i32* @EACCES, align 4
  %82 = load i32, i32* @EPERM, align 4
  %83 = call i64 @IN_SET(i64 %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = load i64, i64* @errno, align 8
  %88 = call i32 @log_unit_debug_errno(%struct.TYPE_10__* %86, i64 %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %102

89:                                               ; preds = %79
  %90 = load i64, i64* @errno, align 8
  %91 = load i64, i64* @EDQUOT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = load i64, i64* @errno, align 8
  %96 = call i32 @log_unit_debug_errno(%struct.TYPE_10__* %94, i64 %95, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %101

97:                                               ; preds = %89
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = load i64, i64* @errno, align 8
  %100 = call i32 @log_unit_error_errno(%struct.TYPE_10__* %98, i64 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %85
  br label %103

103:                                              ; preds = %102, %75
  br label %195

104:                                              ; preds = %65
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @EXEC_KEYRING_SHARED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i32, i32* @KEYCTL_LINK, align 4
  %112 = load i32, i32* @KEY_SPEC_USER_KEYRING, align 4
  %113 = load i32, i32* @KEY_SPEC_SESSION_KEYRING, align 4
  %114 = call i64 @keyctl(i32 %111, i32 %112, i32 %113, i32 0, i32 0)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = load i64, i64* @errno, align 8
  %119 = call i32 @log_unit_error_errno(%struct.TYPE_10__* %117, i64 %118, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  store i32 %119, i32* %13, align 4
  br label %195

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %104
  %122 = load i64, i64* %10, align 8
  %123 = call i64 @uid_is_valid(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %14, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i64, i64* %14, align 8
  %131 = call i64 @setreuid(i64 %130, i32 -1)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = load i64, i64* @errno, align 8
  %136 = call i32 @log_unit_error_errno(%struct.TYPE_10__* %134, i64 %135, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  store i32 %136, i32* %13, align 4
  br label %195

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %125, %121
  %139 = load i64, i64* %11, align 8
  %140 = call i64 @gid_is_valid(i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %138
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %15, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load i64, i64* %15, align 8
  %148 = call i64 @setregid(i64 %147, i32 -1)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = load i64, i64* @errno, align 8
  %153 = call i32 @log_unit_error_errno(%struct.TYPE_10__* %151, i64 %152, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  store i32 %153, i32* %6, align 4
  br label %211

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %142, %138
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @sd_id128_is_null(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %194, label %161

161:                                              ; preds = %155
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* @KEY_SPEC_SESSION_KEYRING, align 4
  %165 = call i32 @add_key(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32* %163, i32 4, i32 %164)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %170 = load i64, i64* @errno, align 8
  %171 = call i32 @log_unit_debug_errno(%struct.TYPE_10__* %169, i64 %170, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  br label %193

172:                                              ; preds = %161
  %173 = load i32, i32* @KEYCTL_SETPERM, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @KEY_POS_VIEW, align 4
  %176 = load i32, i32* @KEY_POS_READ, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @KEY_POS_SEARCH, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @KEY_USR_VIEW, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @KEY_USR_READ, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @KEY_USR_SEARCH, align 4
  %185 = or i32 %183, %184
  %186 = call i64 @keyctl(i32 %173, i32 %174, i32 %185, i32 0, i32 0)
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %172
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %190 = load i64, i64* @errno, align 8
  %191 = call i32 @log_unit_error_errno(%struct.TYPE_10__* %189, i64 %190, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %188, %172
  br label %193

193:                                              ; preds = %192, %168
  br label %194

194:                                              ; preds = %193, %155
  br label %195

195:                                              ; preds = %194, %133, %116, %103, %60
  %196 = call i64 (...) @getuid()
  %197 = load i64, i64* %14, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i64, i64* %14, align 8
  %201 = call i64 @setreuid(i64 %200, i32 -1)
  br label %202

202:                                              ; preds = %199, %195
  %203 = call i64 (...) @getgid()
  %204 = load i64, i64* %15, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i64, i64* %15, align 8
  %208 = call i64 @setregid(i64 %207, i32 -1)
  br label %209

209:                                              ; preds = %206, %202
  %210 = load i32, i32* %13, align 4
  store i32 %210, i32* %6, align 4
  br label %211

211:                                              ; preds = %209, %150, %43, %28
  %212 = load i32, i32* %6, align 4
  ret i32 %212
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @getgid(...) #1

declare dso_local i64 @gid_is_valid(i64) #1

declare dso_local i64 @setregid(i64, i32) #1

declare dso_local i32 @log_unit_error_errno(%struct.TYPE_10__*, i64, i8*) #1

declare dso_local i64 @uid_is_valid(i64) #1

declare dso_local i64 @setreuid(i64, i32) #1

declare dso_local i64 @keyctl(i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_unit_debug_errno(%struct.TYPE_10__*, i64, i8*) #1

declare dso_local i64 @IN_SET(i64, i32, i32) #1

declare dso_local i32 @sd_id128_is_null(i32) #1

declare dso_local i32 @add_key(i8*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
