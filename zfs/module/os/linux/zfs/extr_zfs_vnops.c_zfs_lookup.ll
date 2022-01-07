; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_lookup.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64 }

@LOOKUP_XATTR = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ZFS_XATTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@U8_VALIDATE_ENTIRE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_lookup(%struct.inode* %0, i8* %1, %struct.inode** %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.inode**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.inode** %2, %struct.inode*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call %struct.TYPE_13__* @ITOZ(%struct.inode* %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %16, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = call %struct.TYPE_14__* @ITOZSB(%struct.inode* %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %17, align 8
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @LOOKUP_XATTR, align 4
  %25 = load i32, i32* @FIGNORECASE, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %7
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @S_ISDIR(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOTDIR, align 4
  %37 = call i32 @SET_ERROR(i32 %36)
  store i32 %37, i32* %8, align 4
  br label %193

38:                                               ; preds = %29
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EIO, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %8, align 4
  br label %193

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59, %47
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @zfs_fastaccesschk_execute(%struct.TYPE_13__* %66, i32* %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = load %struct.inode**, %struct.inode*** %11, align 8
  store %struct.inode* %72, %struct.inode** %73, align 8
  %74 = load %struct.inode**, %struct.inode*** %11, align 8
  %75 = load %struct.inode*, %struct.inode** %74, align 8
  %76 = call i32 @igrab(%struct.inode* %75)
  store i32 0, i32* %8, align 4
  br label %193

77:                                               ; preds = %65
  %78 = load i32, i32* %18, align 4
  store i32 %78, i32* %8, align 4
  br label %193

79:                                               ; preds = %59, %53
  br label %80

80:                                               ; preds = %79, %7
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %82 = call i32 @ZFS_ENTER(%struct.TYPE_14__* %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %84 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_13__* %83)
  %85 = load %struct.inode**, %struct.inode*** %11, align 8
  store %struct.inode* null, %struct.inode** %85, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @LOOKUP_XATTR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %131

90:                                               ; preds = %80
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ZFS_XATTR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %99 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 @SET_ERROR(i32 %100)
  store i32 %101, i32* %8, align 4
  br label %193

102:                                              ; preds = %90
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %104 = load %struct.inode**, %struct.inode*** %11, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @zfs_get_xattrdir(%struct.TYPE_13__* %103, %struct.inode** %104, i32* %105, i32 %106)
  store i32 %107, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %111 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %110)
  %112 = load i32, i32* %18, align 4
  store i32 %112, i32* %8, align 4
  br label %193

113:                                              ; preds = %102
  %114 = load %struct.inode**, %struct.inode*** %11, align 8
  %115 = load %struct.inode*, %struct.inode** %114, align 8
  %116 = call %struct.TYPE_13__* @ITOZ(%struct.inode* %115)
  %117 = load i32, i32* @ACE_EXECUTE, align 4
  %118 = load i32, i32* @B_FALSE, align 4
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @zfs_zaccess(%struct.TYPE_13__* %116, i32 %117, i32 0, i32 %118, i32* %119)
  store i32 %120, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load %struct.inode**, %struct.inode*** %11, align 8
  %124 = load %struct.inode*, %struct.inode** %123, align 8
  %125 = call i32 @iput(%struct.inode* %124)
  %126 = load %struct.inode**, %struct.inode*** %11, align 8
  store %struct.inode* null, %struct.inode** %126, align 8
  br label %127

127:                                              ; preds = %122, %113
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %129 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %128)
  %130 = load i32, i32* %18, align 4
  store i32 %130, i32* %8, align 4
  br label %193

131:                                              ; preds = %80
  %132 = load %struct.inode*, %struct.inode** %9, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @S_ISDIR(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %131
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %139 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %138)
  %140 = load i32, i32* @ENOTDIR, align 4
  %141 = call i32 @SET_ERROR(i32 %140)
  store i32 %141, i32* %8, align 4
  br label %193

142:                                              ; preds = %131
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %144 = load i32, i32* @ACE_EXECUTE, align 4
  %145 = load i32, i32* @B_FALSE, align 4
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @zfs_zaccess(%struct.TYPE_13__* %143, i32 %144, i32 0, i32 %145, i32* %146)
  store i32 %147, i32* %18, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %151 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %150)
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %8, align 4
  br label %193

153:                                              ; preds = %142
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = load i8*, i8** %10, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @strlen(i8* %160)
  %162 = load i32, i32* @U8_VALIDATE_ENTIRE, align 4
  %163 = call i64 @u8_validate(i8* %159, i32 %161, i32* null, i32 %162, i32* %18)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %167 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %166)
  %168 = load i32, i32* @EILSEQ, align 4
  %169 = call i32 @SET_ERROR(i32 %168)
  store i32 %169, i32* %8, align 4
  br label %193

170:                                              ; preds = %158, %153
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %172 = load i8*, i8** %10, align 8
  %173 = load %struct.inode**, %struct.inode*** %11, align 8
  %174 = load i32, i32* %12, align 4
  %175 = load i32*, i32** %14, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = call i32 @zfs_dirlook(%struct.TYPE_13__* %171, i8* %172, %struct.inode** %173, i32 %174, i32* %175, i32* %176)
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %18, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %170
  %181 = load %struct.inode**, %struct.inode*** %11, align 8
  %182 = load %struct.inode*, %struct.inode** %181, align 8
  %183 = icmp ne %struct.inode* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load %struct.inode**, %struct.inode*** %11, align 8
  %186 = load %struct.inode*, %struct.inode** %185, align 8
  %187 = call %struct.TYPE_13__* @ITOZ(%struct.inode* %186)
  %188 = call i32 @zfs_inode_update(%struct.TYPE_13__* %187)
  br label %189

189:                                              ; preds = %184, %180, %170
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %191 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %190)
  %192 = load i32, i32* %18, align 4
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %189, %165, %149, %137, %127, %109, %97, %77, %71, %43, %35
  %194 = load i32, i32* %8, align 4
  ret i32 %194
}

declare dso_local %struct.TYPE_13__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_14__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_fastaccesschk_execute(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_14__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_13__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_14__*) #1

declare dso_local i32 @zfs_get_xattrdir(%struct.TYPE_13__*, %struct.inode**, i32*, i32) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_13__*, i32, i32, i32, i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @u8_validate(i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @zfs_dirlook(%struct.TYPE_13__*, i8*, %struct.inode**, i32, i32*, i32*) #1

declare dso_local i32 @zfs_inode_update(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
