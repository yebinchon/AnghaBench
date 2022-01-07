; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_destroy_callback.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_destroy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"destroy\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"would destroy %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"will destroy %s\0A\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@MS_FORCE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @destroy_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @zfs_get_name(i32* %11)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %39

25:                                               ; preds = %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @printf(i8* %31, i8* %32)
  br label %38

34:                                               ; preds = %25
  %35 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @printf(i8* %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %22
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @zfs_get_name(i32* %41)
  %43 = call i32* @strchr(i8* %42, i8 signext 47)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @zfs_get_type(i32* %46)
  %48 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @zfs_close(i32* %51)
  store i32 0, i32* %3, align 4
  br label %131

53:                                               ; preds = %45, %40
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @zfs_close(i32* %59)
  store i32 0, i32* %3, align 4
  br label %131

61:                                               ; preds = %53
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @zfs_get_type(i32* %62)
  %64 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @fnvlist_add_boolean(i32 %73, i8* %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = srem i32 %78, 10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %66
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = call i32 @destroy_batched(%struct.TYPE_3__* %87)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %81, %66
  br label %128

90:                                               ; preds = %61
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = call i32 @destroy_batched(%struct.TYPE_3__* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %115, label %95

95:                                               ; preds = %90
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @MS_FORCE, align 4
  br label %104

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 0, %103 ]
  %106 = call i64 @zfs_unmount(i32* %96, i32* null, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = load i32*, i32** %4, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @zfs_destroy(i32* %109, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %108, %104, %90
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @zfs_close(i32* %116)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* @B_TRUE, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  store i32 0, i32* %3, align 4
  br label %131

126:                                              ; preds = %115
  store i32 -1, i32* %3, align 4
  br label %131

127:                                              ; preds = %108
  br label %128

128:                                              ; preds = %127, %89
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @zfs_close(i32* %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %126, %122, %58, %50
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i8* @zfs_get_name(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @zfs_get_type(i32*) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i32 @fnvlist_add_boolean(i32, i8*) #1

declare dso_local i32 @destroy_batched(%struct.TYPE_3__*) #1

declare dso_local i64 @zfs_unmount(i32*, i32*, i32) #1

declare dso_local i64 @zfs_destroy(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
