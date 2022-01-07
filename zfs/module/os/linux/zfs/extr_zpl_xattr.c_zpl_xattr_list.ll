; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c_zpl_xattr_list.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c_zpl_xattr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i8*, i32, %struct.dentry*, i32 }

@RW_READER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpl_xattr_list(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_12__* @ITOZ(i32 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = call %struct.TYPE_13__* @ZTOZSB(%struct.TYPE_12__* %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %23 = load i8*, i8** %5, align 8
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %22, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %26, %struct.dentry** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = call i32* (...) @CRED()
  store i32* %28, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @crhold(i32* %29)
  %31 = call i32 (...) @spl_fstrans_mark()
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = call i32 @ZPL_ENTER(%struct.TYPE_13__* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = call i32 @ZPL_VERIFY_ZP(%struct.TYPE_12__* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* @RW_READER, align 4
  %39 = call i32 @rw_enter(i32* %37, i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %3
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = call i32 @zpl_xattr_list_sa(%struct.TYPE_14__* %9)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %64

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %44, %3
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @zpl_xattr_list_dir(%struct.TYPE_14__* %9, i32* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %64

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %60, %53
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = call i32 @rw_exit(i32* %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = call i32 @ZPL_EXIT(%struct.TYPE_13__* %68)
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @spl_fstrans_unmark(i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @crfree(i32* %72)
  %74 = load i32, i32* %12, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_12__* @ITOZ(i32) #1

declare dso_local %struct.TYPE_13__* @ZTOZSB(%struct.TYPE_12__*) #1

declare dso_local i32* @CRED(...) #1

declare dso_local i32 @crhold(i32*) #1

declare dso_local i32 @spl_fstrans_mark(...) #1

declare dso_local i32 @ZPL_ENTER(%struct.TYPE_13__*) #1

declare dso_local i32 @ZPL_VERIFY_ZP(%struct.TYPE_12__*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @zpl_xattr_list_sa(%struct.TYPE_14__*) #1

declare dso_local i32 @zpl_xattr_list_dir(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @ZPL_EXIT(%struct.TYPE_13__*) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

declare dso_local i32 @crfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
