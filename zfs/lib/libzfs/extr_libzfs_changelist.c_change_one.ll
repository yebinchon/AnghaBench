; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_changelist.c_change_one.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_changelist.c_change_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i64, i32, i32, i8*, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i8*, i32, i32* }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZPROP_SRC_NONE = common dso_local global i64 0, align 8
@ZFS_PROP_NAME = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZPROP_SRC_DEFAULT = common dso_local global i64 0, align 8
@ZPROP_SRC_INHERITED = common dso_local global i64 0, align 8
@CL_GATHER_MOUNT_ALWAYS = common dso_local global i32 0, align 4
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @change_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_one(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  %18 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %22 = load i64, i64* @ZPROP_SRC_NONE, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* @ZPROP_SRC_NONE, align 8
  store i64 %23, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @ZFS_IS_VOLUME(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ZFS_PROP_NAME, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %27, %2
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %19 to i32
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %40 = load i32, i32* @B_FALSE, align 4
  %41 = call i64 @zfs_prop_get(i32* %34, i64 %37, i8* %21, i32 %38, i64* %11, i8* %39, i32 64, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %182

44:                                               ; preds = %33, %27
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ZPROP_INVAL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %19 to i32
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %57 = load i32, i32* @B_FALSE, align 4
  %58 = call i64 @zfs_prop_get(i32* %51, i64 %54, i8* %21, i32 %55, i64* %12, i8* %56, i32 64, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %182

61:                                               ; preds = %50, %44
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @ZPROP_SRC_DEFAULT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %93, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @ZPROP_SRC_INHERITED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %93, label %79

79:                                               ; preds = %75
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ZPROP_INVAL, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %181

85:                                               ; preds = %79
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @ZPROP_SRC_DEFAULT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* @ZPROP_SRC_INHERITED, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %181

93:                                               ; preds = %89, %85, %75, %71, %66, %61
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @zfs_get_handle(i32* %94)
  %96 = call %struct.TYPE_8__* @zfs_alloc(i32 %95, i32 40)
  store %struct.TYPE_8__* %96, %struct.TYPE_8__** %10, align 8
  %97 = icmp eq %struct.TYPE_8__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 -1, i32* %13, align 4
  br label %182

99:                                               ; preds = %93
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CL_GATHER_MOUNT_ALWAYS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %99
  %110 = load i32*, i32** %4, align 8
  %111 = call i64 @zfs_is_mounted(i32* %110, i32* null)
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %109, %99
  %114 = phi i1 [ true, %99 ], [ %112, %109 ]
  %115 = zext i1 %114 to i32
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @zfs_is_shared(i32* %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %124 = call i64 @zfs_prop_get_int(i32* %122, i32 %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load i8*, i8** @B_TRUE, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = call i64 (...) @getzoneid()
  %131 = load i64, i64* @GLOBAL_ZONEID, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %113
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i8*, i8** @B_TRUE, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 7
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %138, %133, %113
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @uu_avl_node_init(%struct.TYPE_8__* %143, i32* %145, i32 %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %154 = call i32* @uu_avl_find(i32 %152, %struct.TYPE_8__* %153, i32* null, i32* %14)
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %142
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @uu_avl_insert(i32 %159, %struct.TYPE_8__* %160, i32 %161)
  br label %166

163:                                              ; preds = %142
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %165 = call i32 @free(%struct.TYPE_8__* %164)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  br label %166

166:                                              ; preds = %163, %156
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = load i32*, i32** %4, align 8
  %173 = load i8*, i8** %5, align 8
  %174 = call i32 @zfs_iter_children(i32* %172, i32 (i32*, i8*)* @change_one, i8* %173)
  store i32 %174, i32* %13, align 4
  br label %175

175:                                              ; preds = %171, %166
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %177 = icmp ne %struct.TYPE_8__* %176, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* %13, align 4
  store i32 %179, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %186

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %89, %79
  br label %182

182:                                              ; preds = %181, %98, %60, %43
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @zfs_close(i32* %183)
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %186

186:                                              ; preds = %182, %178
  %187 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ZFS_IS_VOLUME(i32*) #2

declare dso_local i64 @zfs_prop_get(i32*, i64, i8*, i32, i64*, i8*, i32, i32) #2

declare dso_local %struct.TYPE_8__* @zfs_alloc(i32, i32) #2

declare dso_local i32 @zfs_get_handle(i32*) #2

declare dso_local i64 @zfs_is_mounted(i32*, i32*) #2

declare dso_local i32 @zfs_is_shared(i32*) #2

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #2

declare dso_local i64 @getzoneid(...) #2

declare dso_local i32 @uu_avl_node_init(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32* @uu_avl_find(i32, %struct.TYPE_8__*, i32*, i32*) #2

declare dso_local i32 @uu_avl_insert(i32, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @free(%struct.TYPE_8__*) #2

declare dso_local i32 @zfs_iter_children(i32*, i32 (i32*, i8*)*, i8*) #2

declare dso_local i32 @zfs_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
