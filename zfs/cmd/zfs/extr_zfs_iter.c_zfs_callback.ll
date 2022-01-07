; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_iter.c_zfs_callback.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_iter.c_zfs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i64, i32, %struct.TYPE_12__**, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32* }

@B_TRUE = common dso_local global i32 0, align 4
@ZFS_TYPE_BOOKMARK = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@avl_pool = common dso_local global i32 0, align 4
@ZFS_ITER_RECVD_PROPS = common dso_local global i32 0, align 4
@ZFS_ITER_LITERAL_PROPS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_ITER_RECURSE = common dso_local global i32 0, align 4
@ZFS_ITER_DEPTH_LIMIT = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@ZFS_ITER_SIMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @zfs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  %14 = load i32, i32* @B_TRUE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = call i32 @zfs_include_snapshots(i32* %15, %struct.TYPE_11__* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @zfs_get_type(i32* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @zfs_get_type(i32* %31)
  %33 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %115

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %115

38:                                               ; preds = %35, %2
  %39 = call %struct.TYPE_10__* @safe_malloc(i32 16)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %11, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* @avl_pool, align 4
  %47 = call i32 @uu_avl_node_init(%struct.TYPE_10__* %43, i32* %45, i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @uu_avl_find(i32 %50, %struct.TYPE_10__* %51, i32 %54, i32* %10)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %111

57:                                               ; preds = %38
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %59, align 8
  %61 = icmp ne %struct.TYPE_12__** %60, null
  br i1 %61, label %62, label %103

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = icmp ne %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %68
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @zfs_prune_proplist(i32* %77, i32 %80)
  br label %82

82:                                               ; preds = %76, %68, %62
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ZFS_ITER_RECVD_PROPS, align 4
  %91 = and i32 %89, %90
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ZFS_ITER_LITERAL_PROPS, align 4
  %96 = and i32 %94, %95
  %97 = call i64 @zfs_expand_proplist(i32* %83, %struct.TYPE_12__** %86, i32 %91, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %82
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %101 = call i32 @free(%struct.TYPE_10__* %100)
  store i32 -1, i32* %3, align 4
  br label %223

102:                                              ; preds = %82
  br label %103

103:                                              ; preds = %102, %57
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @uu_avl_insert(i32 %106, %struct.TYPE_10__* %107, i32 %108)
  %110 = load i32, i32* @B_FALSE, align 4
  store i32 %110, i32* %7, align 4
  br label %114

111:                                              ; preds = %38
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %113 = call i32 @free(%struct.TYPE_10__* %112)
  br label %114

114:                                              ; preds = %111, %103
  br label %115

115:                                              ; preds = %114, %35, %30
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ZFS_ITER_RECURSE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %216

122:                                              ; preds = %115
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ZFS_ITER_DEPTH_LIMIT, align 4
  %127 = and i32 %125, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %122
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp slt i64 %132, %135
  br i1 %136, label %137, label %216

137:                                              ; preds = %129, %122
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %165, label %149

149:                                              ; preds = %137
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ZFS_ITER_DEPTH_LIMIT, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %161 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %156, %149, %137
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @zfs_get_type(i32* %166)
  %168 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32*, i32** %4, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = call i32 @zfs_iter_filesystems(i32* %171, i32 (i32*, i8*)* @zfs_callback, i8* %172)
  br label %174

174:                                              ; preds = %170, %165, %156
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @zfs_get_type(i32* %175)
  %177 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %178 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %176, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %174
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load i32*, i32** %4, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @ZFS_ITER_SIMPLE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = load i8*, i8** %5, align 8
  %195 = call i32 @zfs_iter_snapshots(i32* %186, i32 %193, i32 (i32*, i8*)* @zfs_callback, i8* %194, i32 0, i32 0)
  br label %196

196:                                              ; preds = %185, %182, %174
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @zfs_get_type(i32* %197)
  %199 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %200 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %201 = or i32 %199, %200
  %202 = and i32 %198, %201
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %196
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load i32*, i32** %4, align 8
  %209 = load i8*, i8** %5, align 8
  %210 = call i32 @zfs_iter_bookmarks(i32* %208, i32 (i32*, i8*)* @zfs_callback, i8* %209)
  br label %211

211:                                              ; preds = %207, %204, %196
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, -1
  store i64 %215, i64* %213, align 8
  br label %216

216:                                              ; preds = %211, %129, %115
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32*, i32** %4, align 8
  %221 = call i32 @zfs_close(i32* %220)
  br label %222

222:                                              ; preds = %219, %216
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %222, %99
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @zfs_include_snapshots(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @zfs_get_type(i32*) #1

declare dso_local %struct.TYPE_10__* @safe_malloc(i32) #1

declare dso_local i32 @uu_avl_node_init(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32* @uu_avl_find(i32, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @zfs_prune_proplist(i32*, i32) #1

declare dso_local i64 @zfs_expand_proplist(i32*, %struct.TYPE_12__**, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @uu_avl_insert(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @zfs_iter_filesystems(i32*, i32 (i32*, i8*)*, i8*) #1

declare dso_local i32 @zfs_iter_snapshots(i32*, i32, i32 (i32*, i8*)*, i8*, i32, i32) #1

declare dso_local i32 @zfs_iter_bookmarks(i32*, i32 (i32*, i8*)*, i8*) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
