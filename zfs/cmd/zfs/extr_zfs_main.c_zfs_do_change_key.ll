; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_change_key.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_change_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"lio:\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@optarg = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Properties not allowed for inheriting\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Missing dataset argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@ZFS_PROP_KEYSTATUS = common dso_local global i32 0, align 4
@ZFS_KEYSTATUS_AVAILABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_change_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_change_key(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i64, i64* @B_FALSE, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* @B_FALSE, align 8
  store i64 %14, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %15 = call i32* (...) @fnvlist_alloc()
  store i32* %15, i32** %12, align 8
  br label %16

16:                                               ; preds = %43, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %36 [
    i32 108, label %23
    i32 105, label %25
    i32 111, label %27
  ]

23:                                               ; preds = %21
  %24 = load i64, i64* @B_TRUE, align 8
  store i64 %24, i64* %9, align 8
  br label %43

25:                                               ; preds = %21
  %26 = load i64, i64* @B_TRUE, align 8
  store i64 %26, i64* %10, align 8
  br label %43

27:                                               ; preds = %21
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* @optarg, align 4
  %30 = call i32 @parseprop(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @nvlist_free(i32* %33)
  store i32 1, i32* %3, align 4
  br label %142

35:                                               ; preds = %27
  br label %43

36:                                               ; preds = %21
  %37 = load i32, i32* @stderr, align 4
  %38 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @optopt, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* %38, i32 %39)
  %41 = load i64, i64* @B_FALSE, align 8
  %42 = call i32 @usage(i64 %41)
  br label %43

43:                                               ; preds = %36, %35, %25, %23
  br label %16

44:                                               ; preds = %16
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @nvlist_empty(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @stderr, align 4
  %53 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* %53)
  %55 = load i64, i64* @B_FALSE, align 8
  %56 = call i32 @usage(i64 %55)
  br label %57

57:                                               ; preds = %51, %47, %44
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
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load i32, i32* @stderr, align 4
  %70 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* %70)
  %72 = load i64, i64* @B_FALSE, align 8
  %73 = call i32 @usage(i64 %72)
  br label %74

74:                                               ; preds = %68, %57
  %75 = load i32, i32* %4, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* %79)
  %81 = load i64, i64* @B_FALSE, align 8
  %82 = call i32 @usage(i64 %81)
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i32, i32* @g_zfs, align 4
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %92 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %93 = or i32 %91, %92
  %94 = call i32* @zfs_open(i32 %84, i8* %90, i32 %93)
  store i32* %94, i32** %11, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load i64, i64* @B_FALSE, align 8
  %99 = call i32 @usage(i64 %98)
  br label %100

100:                                              ; preds = %97, %83
  %101 = load i64, i64* %9, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %100
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %106 = call i64 @zfs_prop_get_int(i32* %104, i32 %105)
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @ZFS_KEYSTATUS_AVAILABLE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %103
  %111 = load i32*, i32** %11, align 8
  %112 = load i64, i64* @B_FALSE, align 8
  %113 = call i32 @zfs_crypto_load_key(i32* %111, i64 %112, i32* null)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @nvlist_free(i32* %117)
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @zfs_close(i32* %119)
  store i32 -1, i32* %3, align 4
  br label %142

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121, %103
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @zfs_refresh_properties(i32* %123)
  br label %125

125:                                              ; preds = %122, %100
  %126 = load i32*, i32** %11, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @zfs_crypto_rewrap(i32* %126, i32* %127, i64 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i32*, i32** %12, align 8
  %134 = call i32 @nvlist_free(i32* %133)
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @zfs_close(i32* %135)
  store i32 -1, i32* %3, align 4
  br label %142

137:                                              ; preds = %125
  %138 = load i32*, i32** %12, align 8
  %139 = call i32 @nvlist_free(i32* %138)
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 @zfs_close(i32* %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %137, %132, %116, %32
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parseprop(i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i64) #1

declare dso_local i32 @nvlist_empty(i32*) #1

declare dso_local i32* @zfs_open(i32, i8*, i32) #1

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #1

declare dso_local i32 @zfs_crypto_load_key(i32*, i64, i32*) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i32 @zfs_refresh_properties(i32*) #1

declare dso_local i32 @zfs_crypto_rewrap(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
