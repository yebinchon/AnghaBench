; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c___zpl_xattr_where.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c___zpl_xattr_where.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }

@XATTR_NOENT = common dso_local global i32 0, align 4
@XATTR_IN_SA = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XATTR_IN_DIR = common dso_local global i32 0, align 4
@CE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ZFS: inode %p has xattr \22%s\22 in both SA and dir\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32*, i32*)* @__zpl_xattr_where to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zpl_xattr_where(%struct.inode* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.TYPE_6__* @ITOZ(%struct.inode* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = call %struct.TYPE_7__* @ZTOZSB(%struct.TYPE_6__* %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %11, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @ASSERT(i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = call i32* @RW_LOCK_HELD(i32* %20)
  %22 = call i32 @ASSERT(i32* %21)
  %23 = load i32, i32* @XATTR_NOENT, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @zpl_xattr_get_sa(%struct.inode* %35, i8* %36, i32* null, i32 0)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @XATTR_IN_SA, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %53

45:                                               ; preds = %34
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %97

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %29, %4
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @zpl_xattr_get_dir(%struct.inode* %55, i8* %56, i32* null, i32 0, i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* @XATTR_IN_DIR, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %74

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %97

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %61
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @XATTR_IN_SA, align 4
  %78 = load i32, i32* @XATTR_IN_DIR, align 4
  %79 = or i32 %77, %78
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32, i32* @CE_WARN, align 4
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @cmn_err(i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.inode* %83, i8* %84)
  br label %86

86:                                               ; preds = %81, %74
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @XATTR_NOENT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @ENODATA, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  br label %95

94:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %71, %50
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_6__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_7__* @ZTOZSB(%struct.TYPE_6__*) #1

declare dso_local i32 @ASSERT(i32*) #1

declare dso_local i32* @RW_LOCK_HELD(i32*) #1

declare dso_local i32 @zpl_xattr_get_sa(%struct.inode*, i8*, i32*, i32) #1

declare dso_local i32 @zpl_xattr_get_dir(%struct.inode*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @cmn_err(i32, i8*, %struct.inode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
