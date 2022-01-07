; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c_zpl_xattr_get.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c_zpl_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_5__ = type { i32 }

@RW_READER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64)* @zpl_xattr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_xattr_get(%struct.inode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.TYPE_5__* @ITOZ(%struct.inode* %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %9, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = call i32* @ZTOZSB(%struct.TYPE_5__* %16)
  store i32* %17, i32** %10, align 8
  %18 = call i32* (...) @CRED()
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @crhold(i32* %19)
  %21 = call i32 (...) @spl_fstrans_mark()
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @ZPL_ENTER(i32* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = call i32 @ZPL_VERIFY_ZP(%struct.TYPE_5__* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* @RW_READER, align 4
  %29 = call i32 @rw_enter(i32* %27, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @__zpl_xattr_get(%struct.inode* %30, i8* %31, i8* %32, i64 %33, i32* %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @rw_exit(i32* %37)
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @ZPL_EXIT(i32* %39)
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @spl_fstrans_unmark(i32 %41)
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @crfree(i32* %43)
  %45 = load i32, i32* %13, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_5__* @ITOZ(%struct.inode*) #1

declare dso_local i32* @ZTOZSB(%struct.TYPE_5__*) #1

declare dso_local i32* @CRED(...) #1

declare dso_local i32 @crhold(i32*) #1

declare dso_local i32 @spl_fstrans_mark(...) #1

declare dso_local i32 @ZPL_ENTER(i32*) #1

declare dso_local i32 @ZPL_VERIFY_ZP(%struct.TYPE_5__*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @__zpl_xattr_get(%struct.inode*, i8*, i8*, i64, i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @ZPL_EXIT(i32*) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

declare dso_local i32 @crfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
