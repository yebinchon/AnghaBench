; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_warn_unit_file_changed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_warn_unit_file_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [138 x i8] c"%sWarning:%s The unit file, source configuration file or drop-ins of %s changed on disk. Run 'systemctl%s daemon-reload' to reload units.\00", align 1
@arg_scope = common dso_local global i64 0, align 8
@UNIT_FILE_SYSTEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" --user\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @warn_unit_file_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_unit_file_changed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @assert(i8* %3)
  %5 = call i32 (...) @ansi_highlight_red()
  %6 = call i32 (...) @ansi_normal()
  %7 = load i8*, i8** %2, align 8
  %8 = load i64, i64* @arg_scope, align 8
  %9 = load i64, i64* @UNIT_FILE_SYSTEM, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %13 = call i32 @log_warning(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i8* %7, i8* %12)
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @log_warning(i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @ansi_highlight_red(...) #1

declare dso_local i32 @ansi_normal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
