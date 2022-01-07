; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_receive.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.stat = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ZFS_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@CL_GATHER_MOUNT_ALWAYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_receive(i32* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.stat, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %17, align 4
  store i8* null, i8** %19, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @fstat(i32 %22, %struct.stat* %18)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %7, align 4
  br label %137

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @S_ISFIFO(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @libzfs_set_pipe_max(i32 %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @nvlist_lookup_string(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %19)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @ENOENT, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %7, align 4
  br label %137

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i32, i32* @ZFS_DEV, align 4
  %52 = load i32, i32* @O_RDWR, align 4
  %53 = load i32, i32* @O_EXCL, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @open(i32 %51, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp sge i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @VERIFY(i32 %58)
  %60 = load i32*, i32** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @zfs_receive_impl(i32* %60, i8* %61, i8* %62, %struct.TYPE_9__* %63, i32 %64, i32* null, i32* null, i32* %65, i8** %14, i32 %66, i32* %17, i32* null, i32* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i64 @close(i32 %69)
  %71 = icmp eq i64 0, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @VERIFY(i32 %72)
  %74 = load i32, i32* %15, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %50
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %128, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %128

86:                                               ; preds = %81
  %87 = load i8*, i8** %14, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %128

89:                                               ; preds = %86
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %20, align 8
  store i32* null, i32** %21, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %93 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %94 = or i32 %92, %93
  %95 = call %struct.TYPE_8__* @zfs_open(i32* %90, i8* %91, i32 %94)
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %20, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %97 = icmp eq %struct.TYPE_8__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32 -1, i32* %15, align 4
  br label %129

99:                                               ; preds = %89
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %107 = call i32 @zfs_close(%struct.TYPE_8__* %106)
  br label %129

108:                                              ; preds = %99
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %110 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %111 = load i32, i32* @CL_GATHER_MOUNT_ALWAYS, align 4
  %112 = call i32* @changelist_gather(%struct.TYPE_8__* %109, i32 %110, i32 %111, i32 0)
  store i32* %112, i32** %21, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %114 = call i32 @zfs_close(%struct.TYPE_8__* %113)
  %115 = load i32*, i32** %21, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i32 -1, i32* %15, align 4
  br label %129

118:                                              ; preds = %108
  %119 = load i32*, i32** %21, align 8
  %120 = call i32 @changelist_postfix(i32* %119)
  store i32 %120, i32* %15, align 4
  %121 = load i32*, i32** %21, align 8
  %122 = call i32 @changelist_free(i32* %121)
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 -1, i32* %15, align 4
  br label %126

126:                                              ; preds = %125, %118
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127, %86, %81, %76, %50
  br label %129

129:                                              ; preds = %128, %117, %105, %98
  %130 = load i8*, i8** %14, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i8*, i8** %14, align 8
  %134 = call i32 @free(i8* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %135, %47, %25
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @libzfs_set_pipe_max(i32) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @zfs_receive_impl(i32*, i8*, i8*, %struct.TYPE_9__*, i32, i32*, i32*, i32*, i8**, i32, i32*, i32*, i32*) #1

declare dso_local i64 @close(i32) #1

declare dso_local %struct.TYPE_8__* @zfs_open(i32*, i8*, i32) #1

declare dso_local i32 @zfs_close(%struct.TYPE_8__*) #1

declare dso_local i32* @changelist_gather(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @changelist_postfix(i32*) #1

declare dso_local i32 @changelist_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
