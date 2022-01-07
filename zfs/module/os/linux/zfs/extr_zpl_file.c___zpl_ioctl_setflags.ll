; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c___zpl_ioctl_setflags.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c___zpl_ioctl_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@FS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@FS_APPEND_FL = common dso_local global i32 0, align 4
@FS_NODUMP_FL = common dso_local global i32 0, align 4
@ZFS_PROJINHERIT_FL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ZFS_FL_USER_MODIFIABLE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ZFS_IMMUTABLE = common dso_local global i32 0, align 4
@ZFS_APPENDONLY = common dso_local global i32 0, align 4
@CAP_LINUX_IMMUTABLE = common dso_local global i32 0, align 4
@XAT_IMMUTABLE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@XAT_APPENDONLY = common dso_local global i32 0, align 4
@XAT_NODUMP = common dso_local global i32 0, align 4
@XAT_PROJINHERIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*)* @__zpl_ioctl_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zpl_ioctl_setflags(%struct.inode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.TYPE_5__* @ITOZ(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @FS_IMMUTABLE_FL, align 4
  %16 = load i32, i32* @FS_APPEND_FL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FS_NODUMP_FL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ZFS_PROJINHERIT_FL, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %14, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %118

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ZFS_FL_USER_MODIFIABLE, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EACCES, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %118

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @FS_IMMUTABLE_FL, align 4
  %41 = load i32, i32* @ZFS_IMMUTABLE, align 4
  %42 = call i64 @fchange(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @FS_APPEND_FL, align 4
  %48 = load i32, i32* @ZFS_APPENDONLY, align 4
  %49 = call i64 @fchange(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44, %37
  %52 = load i32, i32* @CAP_LINUX_IMMUTABLE, align 4
  %53 = call i32 @capable(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @EACCES, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %118

58:                                               ; preds = %51, %44
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call i32 @inode_owner_or_capable(%struct.inode* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @EACCES, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %118

65:                                               ; preds = %58
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @xva_init(i32* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = call %struct.TYPE_4__* @xva_getxoptattr(i32* %68)
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %9, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @XAT_IMMUTABLE, align 4
  %72 = call i32 @XVA_SET_REQ(i32* %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @FS_IMMUTABLE_FL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i8*, i8** @B_TRUE, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %77, %65
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @XAT_APPENDONLY, align 4
  %84 = call i32 @XVA_SET_REQ(i32* %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @FS_APPEND_FL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i8*, i8** @B_TRUE, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %89, %81
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @XAT_NODUMP, align 4
  %96 = call i32 @XVA_SET_REQ(i32* %94, i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @FS_NODUMP_FL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i8*, i8** @B_TRUE, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %101, %93
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @XAT_PROJINHERIT, align 4
  %108 = call i32 @XVA_SET_REQ(i32* %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @ZFS_PROJINHERIT_FL, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i8*, i8** @B_TRUE, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %113, %105
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %62, %55, %34, %25
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_5__* @ITOZ(%struct.inode*) #1

declare dso_local i64 @fchange(i32, i32, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @xva_init(i32*) #1

declare dso_local %struct.TYPE_4__* @xva_getxoptattr(i32*) #1

declare dso_local i32 @XVA_SET_REQ(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
