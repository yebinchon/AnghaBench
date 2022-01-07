; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_node_read.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_node_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.znode = type { i32, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@DMU_READ_PREFETCH = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_acl_node_read(%struct.znode* %0, i64 %1, %struct.TYPE_14__** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.znode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.znode* %0, %struct.znode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i64, i64* @B_FALSE, align 8
  store i64 %18, i64* %17, align 8
  %19 = load %struct.znode*, %struct.znode** %6, align 8
  %20 = getelementptr inbounds %struct.znode, %struct.znode* %19, i32 0, i32 4
  %21 = call i32 @MUTEX_HELD(i32* %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.znode*, %struct.znode** %6, align 8
  %24 = getelementptr inbounds %struct.znode, %struct.znode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = icmp ne %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.znode*, %struct.znode** %6, align 8
  %32 = getelementptr inbounds %struct.znode, %struct.znode* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %34, align 8
  store i32 0, i32* %5, align 4
  br label %160

35:                                               ; preds = %27, %4
  %36 = load %struct.znode*, %struct.znode** %6, align 8
  %37 = getelementptr inbounds %struct.znode, %struct.znode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.znode*, %struct.znode** %6, align 8
  %45 = getelementptr inbounds %struct.znode, %struct.znode* %44, i32 0, i32 0
  %46 = call i32 @mutex_enter(i32* %45)
  %47 = load i64, i64* @B_TRUE, align 8
  store i64 %47, i64* %17, align 8
  br label %48

48:                                               ; preds = %43, %40, %35
  %49 = load %struct.znode*, %struct.znode** %6, align 8
  %50 = call i32 @zfs_znode_acl_version(%struct.znode* %49)
  store i32 %50, i32* %15, align 4
  %51 = load %struct.znode*, %struct.znode** %6, align 8
  %52 = call i32 @zfs_acl_znode_info(%struct.znode* %51, i32* %11, i32* %12, %struct.TYPE_15__* %14)
  store i32 %52, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %151

55:                                               ; preds = %48
  %56 = load i32, i32* %15, align 4
  %57 = call %struct.TYPE_14__* @zfs_acl_alloc(i32 %56)
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call %struct.TYPE_16__* @zfs_acl_node_alloc(i32 %64)
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %13, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.znode*, %struct.znode** %6, align 8
  %75 = getelementptr inbounds %struct.znode, %struct.znode* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %108, label %78

78:                                               ; preds = %55
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load %struct.znode*, %struct.znode** %6, align 8
  %84 = call %struct.TYPE_13__* @ZTOZSB(%struct.znode* %83)
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DMU_READ_PREFETCH, align 4
  %96 = call i32 @dmu_read(i32 %86, i64 %88, i32 0, i32 %91, i32 %94, i32 %95)
  store i32 %96, i32* %16, align 4
  br label %107

97:                                               ; preds = %78
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @bcopy(i32 %99, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %97, %82
  br label %122

108:                                              ; preds = %55
  %109 = load %struct.znode*, %struct.znode** %6, align 8
  %110 = getelementptr inbounds %struct.znode, %struct.znode* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.znode*, %struct.znode** %6, align 8
  %113 = call %struct.TYPE_13__* @ZTOZSB(%struct.znode* %112)
  %114 = call i32 @SA_ZPL_DACL_ACES(%struct.TYPE_13__* %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @sa_lookup(i32 %111, i32 %114, i32 %117, i32 %120)
  store i32 %121, i32* %16, align 4
  br label %122

122:                                              ; preds = %108, %107
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %127 = call i32 @zfs_acl_free(%struct.TYPE_14__* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %129 = call i32 @zfs_acl_node_free(%struct.TYPE_16__* %128)
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @ECKSUM, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* @EIO, align 4
  %135 = call i32 @SET_ERROR(i32 %134)
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %133, %125
  br label %151

137:                                              ; preds = %122
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %141 = call i32 @list_insert_head(i32* %139, %struct.TYPE_16__* %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %143 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* %142, %struct.TYPE_14__** %143, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %137
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %148 = load %struct.znode*, %struct.znode** %6, align 8
  %149 = getelementptr inbounds %struct.znode, %struct.znode* %148, i32 0, i32 1
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %149, align 8
  br label %150

150:                                              ; preds = %146, %137
  br label %151

151:                                              ; preds = %150, %136, %54
  %152 = load i64, i64* %17, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load %struct.znode*, %struct.znode** %6, align 8
  %156 = getelementptr inbounds %struct.znode, %struct.znode* %155, i32 0, i32 0
  %157 = call i32 @mutex_exit(i32* %156)
  br label %158

158:                                              ; preds = %154, %151
  %159 = load i32, i32* %16, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %158, %30
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @zfs_znode_acl_version(%struct.znode*) #1

declare dso_local i32 @zfs_acl_znode_info(%struct.znode*, i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @zfs_acl_alloc(i32) #1

declare dso_local %struct.TYPE_16__* @zfs_acl_node_alloc(i32) #1

declare dso_local i32 @dmu_read(i32, i64, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @ZTOZSB(%struct.znode*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @sa_lookup(i32, i32, i32, i32) #1

declare dso_local i32 @SA_ZPL_DACL_ACES(%struct.TYPE_13__*) #1

declare dso_local i32 @zfs_acl_free(%struct.TYPE_14__*) #1

declare dso_local i32 @zfs_acl_node_free(%struct.TYPE_16__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @list_insert_head(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
