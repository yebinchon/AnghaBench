; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_start_special.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_start_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_force = common dso_local global i32 0, align 4
@ACTION_REBOOT = common dso_local global i32 0, align 4
@ACTION_KEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to load kexec kernel, continuing without.\00", align 1
@ACTION_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid exit code.\00", align 1
@ACTION_HALT = common dso_local global i32 0, align 4
@ACTION_POWEROFF = common dso_local global i32 0, align 4
@ACTION_SUSPEND = common dso_local global i32 0, align 4
@ACTION_HIBERNATE = common dso_local global i32 0, align 4
@ACTION_HYBRID_SLEEP = common dso_local global i32 0, align 4
@ACTION_SUSPEND_THEN_HIBERNATE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@arg_no_block = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [98 x i8] c"It is possible to perform action directly, see discussion of --force --force in man:systemctl(1).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @start_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_special(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = call i32 @assert(i8** %12)
  %14 = load i8**, i8*** %6, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @verb_to_action(i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @logind_check_inhibitors(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %207

24:                                               ; preds = %3
  %25 = load i32, i32* @arg_force, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = call i32 (...) @must_be_root()
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %207

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %24
  %35 = call i32 (...) @prepare_firmware_setup()
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %207

40:                                               ; preds = %34
  %41 = call i32 (...) @prepare_boot_loader_menu()
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %207

46:                                               ; preds = %40
  %47 = call i32 (...) @prepare_boot_loader_entry()
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %207

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ACTION_REBOOT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i8**, i8*** %6, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @update_reboot_parameter_and_warn(i8* %62, i32 0)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %207

68:                                               ; preds = %59
  br label %116

69:                                               ; preds = %56, %52
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ACTION_KEXEC, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = call i32 (...) @load_kexec_kernel()
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @arg_force, align 4
  %79 = icmp sge i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @log_notice(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %88

82:                                               ; preds = %77, %73
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %207

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %80
  br label %115

89:                                               ; preds = %69
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @ACTION_EXIT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = load i8**, i8*** %6, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @safe_atou8(i8* %99, i32* %11)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @log_error_errno(i32 %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %105, i32* %4, align 4
  br label %207

106:                                              ; preds = %96
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @set_exit_code(i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %4, align 4
  br label %207

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %93, %89
  br label %115

115:                                              ; preds = %114, %88
  br label %116

116:                                              ; preds = %115, %68
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @ACTION_HALT, align 4
  %119 = load i32, i32* @ACTION_POWEROFF, align 4
  %120 = load i32, i32* @ACTION_REBOOT, align 4
  %121 = call i32 (i32, i32, i32, ...) @IN_SET(i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i32, i32* @arg_force, align 4
  %126 = icmp sge i32 %125, 2
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @halt_now(i32 %128)
  store i32 %129, i32* %4, align 4
  br label %207

130:                                              ; preds = %124, %116
  %131 = load i32, i32* @arg_force, align 4
  %132 = icmp sge i32 %131, 1
  br i1 %132, label %133, label %147

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @ACTION_KEXEC, align 4
  %139 = load i32, i32* @ACTION_EXIT, align 4
  %140 = call i32 (i32, i32, i32, ...) @IN_SET(i32 %137, i32 %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136, %133
  %143 = load i32, i32* %5, align 4
  %144 = load i8**, i8*** %6, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @trivial_method(i32 %143, i8** %144, i8* %145)
  store i32 %146, i32* %9, align 4
  br label %189

147:                                              ; preds = %136, %130
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @ACTION_POWEROFF, align 4
  %150 = load i32, i32* @ACTION_REBOOT, align 4
  %151 = load i32, i32* @ACTION_HALT, align 4
  %152 = load i32, i32* @ACTION_SUSPEND, align 4
  %153 = load i32, i32* @ACTION_HIBERNATE, align 4
  %154 = load i32, i32* @ACTION_HYBRID_SLEEP, align 4
  %155 = load i32, i32* @ACTION_SUSPEND_THEN_HIBERNATE, align 4
  %156 = call i32 (i32, i32, i32, ...) @IN_SET(i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %147
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @logind_reboot(i32 %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %4, align 4
  br label %207

165:                                              ; preds = %158
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @EOPNOTSUPP, align 4
  %168 = sub nsw i32 0, %167
  %169 = load i32, i32* @EINPROGRESS, align 4
  %170 = sub nsw i32 0, %169
  %171 = call i32 (i32, i32, i32, ...) @IN_SET(i32 %166, i32 %168, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %165
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %4, align 4
  br label %207

175:                                              ; preds = %165
  store i32 1, i32* @arg_no_block, align 4
  br label %184

176:                                              ; preds = %147
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @ACTION_EXIT, align 4
  %179 = load i32, i32* @ACTION_KEXEC, align 4
  %180 = call i32 (i32, i32, i32, ...) @IN_SET(i32 %177, i32 %178, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  store i32 1, i32* @arg_no_block, align 4
  br label %183

183:                                              ; preds = %182, %176
  br label %184

184:                                              ; preds = %183, %175
  %185 = load i32, i32* %5, align 4
  %186 = load i8**, i8*** %6, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 @start_unit(i32 %185, i8** %186, i8* %187)
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %184, %142
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %189
  %193 = load i32, i32* @arg_force, align 4
  %194 = icmp slt i32 %193, 2
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @ENOENT, align 4
  %198 = sub nsw i32 0, %197
  %199 = load i32, i32* @ETIMEDOUT, align 4
  %200 = sub nsw i32 0, %199
  %201 = call i32 (i32, i32, i32, ...) @IN_SET(i32 %196, i32 %198, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %195
  %204 = call i32 @log_notice(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %195, %192, %189
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %205, %173, %163, %127, %111, %103, %85, %66, %50, %44, %38, %31, %22
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @verb_to_action(i8*) #1

declare dso_local i32 @logind_check_inhibitors(i32) #1

declare dso_local i32 @must_be_root(...) #1

declare dso_local i32 @prepare_firmware_setup(...) #1

declare dso_local i32 @prepare_boot_loader_menu(...) #1

declare dso_local i32 @prepare_boot_loader_entry(...) #1

declare dso_local i32 @update_reboot_parameter_and_warn(i8*, i32) #1

declare dso_local i32 @load_kexec_kernel(...) #1

declare dso_local i32 @log_notice(i8*) #1

declare dso_local i32 @safe_atou8(i8*, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @set_exit_code(i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32, ...) #1

declare dso_local i32 @halt_now(i32) #1

declare dso_local i32 @trivial_method(i32, i8**, i8*) #1

declare dso_local i32 @logind_reboot(i32) #1

declare dso_local i32 @start_unit(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
