; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_create.c_Ext2CreateInode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_create.c_Ext2CreateInode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.inode = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.dentry = type { i32 }
%struct.ext3_super_block = type { i32 }
%struct.TYPE_20__ = type { %struct.ext3_super_block* }

@BLOCKS_PER_GROUP = common dso_local global i32 0, align 4
@DL_INF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Ext2CreateInode: %S in %S(Inode=%xh)\0A\00", align 1
@VCB_USER_IDS = common dso_local global i32 0, align 4
@S_IPERMISSION_MASK = common dso_local global i32 0, align 4
@EXT2_FT_DIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@EXT2_FT_REG_FILE = common dso_local global i32 0, align 4
@S_IFATTR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@SUPER_BLOCK = common dso_local global %struct.TYPE_28__* null, align 8
@EXT4_FEATURE_INCOMPAT_EXTENTS = common dso_local global i32 0, align 4
@EXT2_EXTENTS_FL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Ext2CreateInode: New Inode = %xh (Type=%xh)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2CreateInode(i32 %0, %struct.TYPE_26__* %1, %struct.TYPE_27__* %2, i32 %3, i32 %4, %struct.TYPE_25__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode, align 8
  %17 = alloca %struct.dentry*, align 8
  %18 = alloca %struct.ext3_super_block*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_25__* %5, %struct.TYPE_25__** %12, align 8
  %20 = bitcast %struct.inode* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 64, i1 false)
  store %struct.dentry* null, %struct.dentry** %17, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 3
  %23 = call %struct.TYPE_20__* @EXT3_SB(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.ext3_super_block*, %struct.ext3_super_block** %24, align 8
  store %struct.ext3_super_block* %25, %struct.ext3_super_block** %18, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @BLOCKS_PER_GROUP, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @DL_INF, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @DEBUG(i32 %34, i8* %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @Ext2NewInode(i32 %52, %struct.TYPE_26__* %53, i32 %54, i32 %55, i32* %15)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @NT_SUCCESS(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %6
  br label %200

61:                                               ; preds = %6
  %62 = call i32 @KeQuerySystemTime(i32* %19)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @Ext2ClearInode(i32 %63, %struct.TYPE_26__* %64, i32 %65)
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 10
  store i32* %68, i32** %69, align 8
  %70 = load i32, i32* %15, align 4
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* %19, align 4
  %73 = call i32 @Ext2LinuxTime(i32 %72)
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 7
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 9
  store i32 %73, i32* %76, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @VCB_USER_IDS, align 4
  %81 = call i64 @IsFlagOn(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %61
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 6
  store i32 %86, i32* %87, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 5
  store i32 %90, i32* %91, align 4
  br label %107

92:                                               ; preds = %61
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 6
  store i32 %98, i32* %99, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 5
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %92, %83
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 4
  store i32 %112, i32* %113, align 8
  %114 = load i32, i32* @S_IPERMISSION_MASK, align 4
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %114, %119
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @EXT2_FT_DIR, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %107
  %126 = load i32, i32* @S_IFDIR, align 4
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 4
  br label %146

130:                                              ; preds = %107
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @EXT2_FT_REG_FILE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i32, i32* @S_IFATTR, align 4
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %135
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* @S_IFREG, align 4
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %139
  store i32 %142, i32* %140, align 4
  br label %145

143:                                              ; preds = %130
  %144 = call i32 (...) @DbgBreak()
  br label %145

145:                                              ; preds = %143, %134
  br label %146

146:                                              ; preds = %145, %125
  %147 = load %struct.ext3_super_block*, %struct.ext3_super_block** %18, align 8
  %148 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @le16_to_cpu(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.ext3_super_block*, %struct.ext3_super_block** %18, align 8
  %154 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @le16_to_cpu(i32 %155)
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 3
  store i64 %156, i64* %157, align 8
  br label %158

158:                                              ; preds = %152, %146
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** @SUPER_BLOCK, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @EXT4_FEATURE_INCOMPAT_EXTENTS, align 4
  %163 = call i64 @IsFlagOn(i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load i32, i32* @EXT2_EXTENTS_FL, align 4
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %166
  store i32 %169, i32* %167, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @ext4_ext_tree_init(i32 %170, i32* null, %struct.inode* %16)
  br label %176

172:                                              ; preds = %158
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %175 = call i32 @Ext2SaveInode(i32 %173, %struct.TYPE_26__* %174, %struct.inode* %16)
  br label %176

176:                                              ; preds = %172, %165
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %181 = call i32 @Ext2AddEntry(i32 %177, %struct.TYPE_26__* %178, %struct.TYPE_27__* %179, %struct.inode* %16, %struct.TYPE_25__* %180, %struct.dentry** %17)
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @NT_SUCCESS(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %176
  %186 = call i32 (...) @DbgBreak()
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @Ext2FreeInode(i32 %187, %struct.TYPE_26__* %188, i32 %189, i32 %190)
  br label %200

192:                                              ; preds = %176
  %193 = load i32, i32* @DL_INF, align 4
  %194 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  %199 = call i32 @DEBUG(i32 %193, i8* %198)
  br label %200

200:                                              ; preds = %192, %185, %60
  %201 = load %struct.dentry*, %struct.dentry** %17, align 8
  %202 = icmp ne %struct.dentry* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.dentry*, %struct.dentry** %17, align 8
  %205 = call i32 @Ext2FreeEntry(%struct.dentry* %204)
  br label %206

206:                                              ; preds = %203, %200
  %207 = load i32, i32* %13, align 4
  ret i32 %207
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_20__* @EXT3_SB(i32*) #2

declare dso_local i32 @DEBUG(i32, i8*) #2

declare dso_local i32 @Ext2NewInode(i32, %struct.TYPE_26__*, i32, i32, i32*) #2

declare dso_local i32 @NT_SUCCESS(i32) #2

declare dso_local i32 @KeQuerySystemTime(i32*) #2

declare dso_local i32 @Ext2ClearInode(i32, %struct.TYPE_26__*, i32) #2

declare dso_local i32 @Ext2LinuxTime(i32) #2

declare dso_local i64 @IsFlagOn(i32, i32) #2

declare dso_local i32 @DbgBreak(...) #2

declare dso_local i64 @le16_to_cpu(i32) #2

declare dso_local i32 @ext4_ext_tree_init(i32, i32*, %struct.inode*) #2

declare dso_local i32 @Ext2SaveInode(i32, %struct.TYPE_26__*, %struct.inode*) #2

declare dso_local i32 @Ext2AddEntry(i32, %struct.TYPE_26__*, %struct.TYPE_27__*, %struct.inode*, %struct.TYPE_25__*, %struct.dentry**) #2

declare dso_local i32 @Ext2FreeInode(i32, %struct.TYPE_26__*, i32, i32) #2

declare dso_local i32 @Ext2FreeEntry(%struct.dentry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
