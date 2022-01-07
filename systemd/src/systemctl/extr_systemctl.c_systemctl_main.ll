; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_systemctl_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_systemctl_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@systemctl_main.verbs = internal constant [69 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 163, i32 163, i32 163, i32 141 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 163, i32 163, i32 0, i32 142 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 163, i32 163, i32 161, i32 144 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 163, i32 163, i32 161, i32 143 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 163, i32 163, i32 161, i32 146 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 163, i32 163, i32 161, i32 145 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 163, i32 1, i32 161, i32 129 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 163, i32 163, i32 161, i32 159 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 2, i32 163, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 2, i32 2, i32 161, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 2, i32 163, i32 161, i32 148 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 2, i32 163, i32 161, i32 155 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 2, i32 163, i32 161, i32 157 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 2, i32 163, i32 161, i32 157 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 2, i32 163, i32 161, i32 156 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 163, i32 163, i32 161, i32 135 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 2, i32 163, i32 161, i32 158 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 163, i32 163, i32 161, i32 135 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 163, i32 163, i32 161, i32 135 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 163, i32 1, i32 161, i32 154 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i32 163, i32 1, i32 161, i32 154 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i32 163, i32 1, i32 161, i32 134 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 2, i32 163, i32 161, i32 137 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 2, i32 163, i32 161, i32 137 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i32 163, i32 163, i32 161, i32 150 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 163, i32 1, i32 161, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 163, i32 1, i32 161, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 163, i32 2, i32 161, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 163, i32 1, i32 161, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 163, i32 1, i32 161, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 163, i32 1, i32 161, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i32 163, i32 1, i32 161, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i32 163, i32 1, i32 161, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 163, i32 1, i32 161, i32 133 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 163, i32 1, i32 161, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 163, i32 1, i32 161, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 163, i32 2, i32 161, i32 133 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i32 163, i32 163, i32 161, i32 139 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 2, i32 163, i32 0, i32 152 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 2, i32 163, i32 0, i32 152 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 2, i32 163, i32 0, i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 2, i32 163, i32 0, i32 152 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 2, i32 163, i32 0, i32 152 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i32 163, i32 1, i32 0, i32 140 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 2, i32 163, i32 0, i32 152 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 2, i32 163, i32 0, i32 152 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i32 2, i32 163, i32 0, i32 152 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 2, i32 163, i32 0, i32 152 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), i32 2, i32 163, i32 161, i32 130 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i32 163, i32 2, i32 161, i32 147 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i32 2, i32 2, i32 0, i32 138 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i32 163, i32 1, i32 0, i32 151 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0), i32 3, i32 163, i32 161, i32 136 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0), i32 163, i32 1, i32 0, i32 149 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 3, i32 163, i32 0, i32 160 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 3, i32 163, i32 0, i32 160 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 2, i32 163, i32 161, i32 153 }, %struct.TYPE_3__ zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"list-units\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"list-unit-files\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"list-sockets\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"list-timers\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"list-jobs\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"list-machines\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"clear-jobs\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"condstop\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"try-restart\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"reload-or-restart\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"reload-or-try-restart\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"try-reload-or-restart\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"force-reload\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"condreload\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"condrestart\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"isolate\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"is-active\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"is-failed\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"daemon-reload\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"daemon-reexec\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"show-environment\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"set-environment\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"unset-environment\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"import-environment\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"halt\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"poweroff\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"kexec\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"hibernate\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"hybrid-sleep\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"suspend-then-hibernate\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"rescue\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"emergency\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"reset-failed\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"is-enabled\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"reenable\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"preset-all\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"unmask\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"revert\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"switch-root\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"list-dependencies\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"set-default\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"get-default\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"set-property\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"is-system-running\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"add-wants\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"add-requires\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @systemctl_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @systemctl_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8**, i8*** %4, align 8
  %7 = call i32 @dispatch_verb(i32 %5, i8** %6, %struct.TYPE_3__* getelementptr inbounds ([69 x %struct.TYPE_3__], [69 x %struct.TYPE_3__]* @systemctl_main.verbs, i64 0, i64 0), i32* null)
  ret i32 %7
}

declare dso_local i32 @dispatch_verb(i32, i8**, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
