; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_set_block_header.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_set_block_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_ref = type { i32 }
%struct.ext4_xattr_header = type { i8*, i8*, i32 }

@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_xattr_ref*)* @ext4_xattr_set_block_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_xattr_set_block_header(%struct.ext4_xattr_ref* %0) #0 {
  %2 = alloca %struct.ext4_xattr_ref*, align 8
  %3 = alloca %struct.ext4_xattr_header*, align 8
  store %struct.ext4_xattr_ref* %0, %struct.ext4_xattr_ref** %2, align 8
  store %struct.ext4_xattr_header* null, %struct.ext4_xattr_header** %3, align 8
  %4 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %5 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ext4_xattr_header* @EXT4_XATTR_BHDR(i32 %6)
  store %struct.ext4_xattr_header* %7, %struct.ext4_xattr_header** %3, align 8
  %8 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %3, align 8
  %9 = call i32 @memset(%struct.ext4_xattr_header* %8, i32 0, i32 24)
  %10 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %11 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %3, align 8
  %12 = getelementptr inbounds %struct.ext4_xattr_header, %struct.ext4_xattr_header* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = call i8* @cpu_to_le32(i32 1)
  %14 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %3, align 8
  %15 = getelementptr inbounds %struct.ext4_xattr_header, %struct.ext4_xattr_header* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = call i8* @cpu_to_le32(i32 1)
  %17 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %3, align 8
  %18 = getelementptr inbounds %struct.ext4_xattr_header, %struct.ext4_xattr_header* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  ret void
}

declare dso_local %struct.ext4_xattr_header* @EXT4_XATTR_BHDR(i32) #1

declare dso_local i32 @memset(%struct.ext4_xattr_header*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
