; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c__zed_conf_display_version.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c__zed_conf_display_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s-%s-%s\0A\00", align 1
@ZFS_META_NAME = common dso_local global i8* null, align 8
@ZFS_META_VERSION = common dso_local global i8* null, align 8
@ZFS_META_RELEASE = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_zed_conf_display_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_zed_conf_display_version() #0 {
  %1 = load i8*, i8** @ZFS_META_NAME, align 8
  %2 = load i8*, i8** @ZFS_META_VERSION, align 8
  %3 = load i8*, i8** @ZFS_META_RELEASE, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %1, i8* %2, i8* %3)
  %5 = load i32, i32* @EXIT_SUCCESS, align 4
  %6 = call i32 @exit(i32 %5) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
