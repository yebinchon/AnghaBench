; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_putpage.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_putpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i32 }
%struct.address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpl_putpage(%struct.page* %0, %struct.writeback_control* %1, i8* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.address_space*
  store %struct.address_space* %10, %struct.address_space** %7, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @PageLocked(%struct.page* %11)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @PageWriteback(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = call i32 (...) @spl_fstrans_mark()
  store i32 %20, i32* %8, align 4
  %21 = load %struct.address_space*, %struct.address_space** %7, align 8
  %22 = getelementptr inbounds %struct.address_space, %struct.address_space* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %26 = call i32 @zfs_putpage(i32 %23, %struct.page* %24, %struct.writeback_control* %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @spl_fstrans_unmark(i32 %27)
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @spl_fstrans_mark(...) #1

declare dso_local i32 @zfs_putpage(i32, %struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
