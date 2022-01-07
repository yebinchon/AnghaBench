; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_dirlook.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_dirlook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@kcred = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZFS_CTLDIR_NAME = common dso_local global i32 0, align 4
@ZEXISTS = common dso_local global i32 0, align 4
@ZSHARED = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@ZCILOOK = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_dirlook(%struct.TYPE_17__* %0, i8* %1, %struct.inode** %2, i32 %3, i32* %4, %struct.TYPE_19__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inode**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.inode** %2, %struct.inode*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %13, align 8
  store i32 0, i32* %16, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %6
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31, %6
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %39 = call %struct.inode* @ZTOI(%struct.TYPE_17__* %38)
  %40 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* %39, %struct.inode** %40, align 8
  %41 = load %struct.inode**, %struct.inode*** %10, align 8
  %42 = load %struct.inode*, %struct.inode** %41, align 8
  %43 = call i32 @igrab(%struct.inode* %42)
  br label %160

44:                                               ; preds = %31, %25
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %114

50:                                               ; preds = %44
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %114

56:                                               ; preds = %50
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %114

62:                                               ; preds = %56
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = call %struct.TYPE_18__* @ZTOZSB(%struct.TYPE_17__* %63)
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %18, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %69 = call i32 @SA_ZPL_PARENT(%struct.TYPE_18__* %68)
  %70 = call i32 @sa_lookup(i32 %67, i32 %69, i32* %17, i32 4)
  store i32 %70, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %7, align 4
  br label %182

74:                                               ; preds = %62
  %75 = load i32, i32* %17, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %85 = icmp ne %struct.TYPE_18__* %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.inode**, %struct.inode*** %10, align 8
  %93 = load i32, i32* @kcred, align 4
  %94 = call i32 @zfsctl_root_lookup(i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.inode** %92, i32 0, i32 %93, i32* null, i32* null)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %7, align 4
  br label %182

96:                                               ; preds = %80, %74
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* @RW_READER, align 4
  %100 = call i32 @rw_enter(i32* %98, i32 %99)
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @zfs_zget(%struct.TYPE_18__* %101, i32 %102, %struct.TYPE_17__** %15)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %96
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %108 = call %struct.inode* @ZTOI(%struct.TYPE_17__* %107)
  %109 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* %108, %struct.inode** %109, align 8
  br label %110

110:                                              ; preds = %106, %96
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = call i32 @rw_exit(i32* %112)
  br label %159

114:                                              ; preds = %56, %50, %44
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = call i64 @zfs_has_ctldir(%struct.TYPE_17__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* @ZFS_CTLDIR_NAME, align 4
  %121 = call i64 @strcmp(i8* %119, i32 %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %125 = call %struct.inode* @zfsctl_root(%struct.TYPE_17__* %124)
  %126 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* %125, %struct.inode** %126, align 8
  br label %158

127:                                              ; preds = %118, %114
  %128 = load i32, i32* @ZEXISTS, align 4
  %129 = load i32, i32* @ZSHARED, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @FIGNORECASE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load i32, i32* @ZCILOOK, align 4
  %137 = load i32, i32* %19, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %19, align 4
  br label %139

139:                                              ; preds = %135, %127
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32*, i32** %12, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %145 = call i32 @zfs_dirent_lock(i32** %14, %struct.TYPE_17__* %140, i8* %141, %struct.TYPE_17__** %15, i32 %142, i32* %143, %struct.TYPE_19__* %144)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %139
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %150 = call %struct.inode* @ZTOI(%struct.TYPE_17__* %149)
  %151 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* %150, %struct.inode** %151, align 8
  %152 = load i32*, i32** %14, align 8
  %153 = call i32 @zfs_dirent_unlock(i32* %152)
  %154 = load i32, i32* @B_TRUE, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %148, %139
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %13, align 8
  br label %158

158:                                              ; preds = %157, %123
  br label %159

159:                                              ; preds = %158, %110
  br label %160

160:                                              ; preds = %159, %37
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @FIGNORECASE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %160
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %167 = icmp ne %struct.TYPE_19__* %166, null
  br i1 %167, label %168, label %180

168:                                              ; preds = %165
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %168
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %9, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @strlcpy(i32 %174, i8* %175, i32 %178)
  br label %180

180:                                              ; preds = %171, %168, %165, %160
  %181 = load i32, i32* %16, align 4
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %180, %86, %72
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local %struct.inode* @ZTOI(%struct.TYPE_17__*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local %struct.TYPE_18__* @ZTOZSB(%struct.TYPE_17__*) #1

declare dso_local i32 @sa_lookup(i32, i32, i32*, i32) #1

declare dso_local i32 @SA_ZPL_PARENT(%struct.TYPE_18__*) #1

declare dso_local i32 @zfsctl_root_lookup(i32, i8*, %struct.inode**, i32, i32, i32*, i32*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_18__*, i32, %struct.TYPE_17__**) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i64 @zfs_has_ctldir(%struct.TYPE_17__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.inode* @zfsctl_root(%struct.TYPE_17__*) #1

declare dso_local i32 @zfs_dirent_lock(i32**, %struct.TYPE_17__*, i8*, %struct.TYPE_17__**, i32, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @zfs_dirent_unlock(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
