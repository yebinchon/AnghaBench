; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_snapshot.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32*, i8*, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ro:\00", align 1
@optarg = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"missing snapshot argument\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"no snapshots were created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_snapshot(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load i8*, i8** @B_FALSE, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %16 = call i64 @nvlist_alloc(i32** %8, i32 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @nomem()
  br label %20

20:                                               ; preds = %18, %2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %22 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %23 = call i64 @nvlist_alloc(i32** %21, i32 %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @nomem()
  br label %27

27:                                               ; preds = %25, %20
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %56 [
    i32 111, label %35
    i32 114, label %47
    i32 63, label %51
  ]

35:                                               ; preds = %33
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @optarg, align 4
  %38 = call i32 @parseprop(i32* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @nvlist_free(i32* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @nvlist_free(i32* %44)
  store i32 1, i32* %3, align 4
  br label %148

46:                                               ; preds = %35
  br label %56

47:                                               ; preds = %33
  %48 = load i8*, i8** @B_TRUE, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** @B_TRUE, align 8
  store i8* %50, i8** %10, align 8
  br label %56

51:                                               ; preds = %33
  %52 = load i32, i32* @stderr, align 4
  %53 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @optopt, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* %53, i32 %54)
  br label %140

56:                                               ; preds = %33, %47, %46
  br label %28

57:                                               ; preds = %28
  %58 = load i64, i64* @optind, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i64, i64* @optind, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 %63
  store i8** %65, i8*** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load i32, i32* @stderr, align 4
  %70 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* %70)
  br label %140

72:                                               ; preds = %57
  %73 = load i32, i32* %4, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i8*, i8** @B_TRUE, align 8
  store i8* %76, i8** %10, align 8
  br label %77

77:                                               ; preds = %75, %72
  br label %78

78:                                               ; preds = %111, %77
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %78
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 64)
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %140

89:                                               ; preds = %81
  %90 = load i8*, i8** %11, align 8
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* @g_zfs, align 4
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %99 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %100 = or i32 %98, %99
  %101 = call i32* @zfs_open(i32 %94, i8* %97, i32 %100)
  store i32* %101, i32** %12, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %89
  br label %140

105:                                              ; preds = %89
  %106 = load i32*, i32** %12, align 8
  %107 = call i64 @zfs_snapshot_cb(i32* %106, %struct.TYPE_3__* %9)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %140

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %4, align 4
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %5, align 8
  br label %78

116:                                              ; preds = %78
  %117 = load i32, i32* @g_zfs, align 4
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @zfs_snapshot_nvl(i32 %117, i32* %119, i32* %120)
  store i32 %121, i32* %6, align 4
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @nvlist_free(i32* %123)
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @nvlist_free(i32* %125)
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %116
  %130 = load i8*, i8** %10, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32, i32* @stderr, align 4
  %134 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* %134)
  br label %136

136:                                              ; preds = %132, %129, %116
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %3, align 4
  br label %148

140:                                              ; preds = %109, %104, %88, %68, %51
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @nvlist_free(i32* %142)
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @nvlist_free(i32* %144)
  %146 = load i8*, i8** @B_FALSE, align 8
  %147 = call i32 @usage(i8* %146)
  store i32 -1, i32* %3, align 4
  br label %148

148:                                              ; preds = %140, %136, %40
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @nomem(...) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @parseprop(i32*, i32) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i64 @zfs_snapshot_cb(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @zfs_snapshot_nvl(i32, i32*, i32*) #2

declare dso_local i32 @usage(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
