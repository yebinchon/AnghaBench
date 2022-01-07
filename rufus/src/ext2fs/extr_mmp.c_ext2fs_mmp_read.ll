; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_mmp.c_ext2fs_mmp_read.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_mmp.c_ext2fs_mmp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EXT2_ET_OP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@EXT2_ET_LLSEEK_FAILED = common dso_local global i64 0, align 8
@EXT2_ET_MMP_BAD_BLOCK = common dso_local global i64 0, align 8
@EXT2_ET_MMP_CSUM_INVALID = common dso_local global i64 0, align 8
@EXT2_ET_MMP_MAGIC_INVALID = common dso_local global i64 0, align 8
@EXT2_ET_MMP_OPEN_DIRECT = common dso_local global i64 0, align 8
@EXT2_ET_SHORT_READ = common dso_local global i64 0, align 8
@EXT2_FLAG_IGNORE_CSUM_ERRORS = common dso_local global i32 0, align 4
@EXT4_MMP_MAGIC = common dso_local global i64 0, align 8
@O_DIRECT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_mmp_read(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* @EXT2_ET_OP_NOT_SUPPORTED, align 8
  ret i64 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
