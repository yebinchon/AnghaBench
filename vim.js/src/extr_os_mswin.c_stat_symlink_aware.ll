; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_mswin.c_stat_symlink_aware.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_mswin.c_stat_symlink_aware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_REPARSE_POINT = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@IO_REPARSE_TAG_SYMLINK = common dso_local global i64 0, align 8
@OPEN_EXISTING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@_O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*)* @stat_symlink_aware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_symlink_aware(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.stat*, %struct.stat** %4, align 8
  %7 = call i32 @stat(i8* %5, %struct.stat* %6)
  ret i32 %7
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
