; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_rename.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"prf\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"missing source dataset argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"missing target dataset argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"-p and -r options are mutually exclusive\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"source dataset for recursive rename must be a snapshot\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_rename(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* @B_FALSE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* @B_FALSE, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* @B_FALSE, align 8
  store i64 %14, i64* %11, align 8
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %29 [
    i32 112, label %22
    i32 114, label %24
    i32 102, label %26
    i32 63, label %28
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* @B_TRUE, align 8
  store i64 %23, i64* %10, align 8
  br label %36

24:                                               ; preds = %20
  %25 = load i64, i64* @B_TRUE, align 8
  store i64 %25, i64* %9, align 8
  br label %36

26:                                               ; preds = %20
  %27 = load i64, i64* @B_TRUE, align 8
  store i64 %27, i64* %11, align 8
  br label %36

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %20, %28
  %30 = load i32, i32* @stderr, align 4
  %31 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @optopt, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* %31, i32 %32)
  %34 = load i64, i64* @B_FALSE, align 8
  %35 = call i32 @usage(i64 %34)
  br label %36

36:                                               ; preds = %29, %26, %24, %22
  br label %15

37:                                               ; preds = %15
  %38 = load i64, i64* @optind, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load i64, i64* @optind, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 %43
  store i8** %45, i8*** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* %50)
  %52 = load i64, i64* @B_FALSE, align 8
  %53 = call i32 @usage(i64 %52)
  br label %54

54:                                               ; preds = %48, %37
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* %59)
  %61 = load i64, i64* @B_FALSE, align 8
  %62 = call i32 @usage(i64 %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %4, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @stderr, align 4
  %68 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* %68)
  %70 = load i64, i64* @B_FALSE, align 8
  %71 = call i32 @usage(i64 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i64, i64* %10, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* @stderr, align 4
  %80 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* %80)
  %82 = load i64, i64* @B_FALSE, align 8
  %83 = call i32 @usage(i64 %82)
  br label %84

84:                                               ; preds = %78, %75, %72
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strchr(i8* %90, i8 signext 64)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* @stderr, align 4
  %95 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* %95)
  %97 = load i64, i64* @B_FALSE, align 8
  %98 = call i32 @usage(i64 %97)
  br label %99

99:                                               ; preds = %93, %87, %84
  %100 = load i32, i32* @g_zfs, align 4
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %108 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %109 = or i32 %107, %108
  br label %112

110:                                              ; preds = %99
  %111 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi i32 [ %109, %106 ], [ %111, %110 ]
  %114 = call i32* @zfs_open(i32 %100, i8* %103, i32 %113)
  store i32* %114, i32** %6, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %151

117:                                              ; preds = %112
  %118 = load i64, i64* %10, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @zfs_get_type(i32* %124)
  %126 = call i64 @zfs_name_valid(i8* %123, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %120
  %129 = load i32, i32* @g_zfs, align 4
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @zfs_create_ancestors(i32 %129, i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @zfs_close(i32* %136)
  store i32 1, i32* %3, align 4
  br label %151

138:                                              ; preds = %128, %120, %117
  %139 = load i32*, i32** %6, align 8
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %11, align 8
  %145 = call i64 @zfs_rename(i32* %139, i8* %142, i64 %143, i64 %144)
  %146 = icmp ne i64 %145, 0
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %8, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @zfs_close(i32* %148)
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %138, %135, %116
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i64) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32* @zfs_open(i32, i8*, i32) #1

declare dso_local i64 @zfs_name_valid(i8*, i32) #1

declare dso_local i32 @zfs_get_type(i32*) #1

declare dso_local i64 @zfs_create_ancestors(i32, i8*) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i64 @zfs_rename(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
