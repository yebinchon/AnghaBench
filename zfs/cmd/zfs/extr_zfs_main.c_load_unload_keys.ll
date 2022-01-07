; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_load_unload_keys.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_load_unload_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8*, i8*, i32*, i8*, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"anrL:\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@optarg = common dso_local global i32* null, align 8
@ZFS_ITER_RECURSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Missing dataset argument or -a option\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Cannot specify dataset with -a option\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"alternate keylocation may only be 'prompt' with -r or -a\0A\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@load_key_callback = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"%llu / %llu key(s) successfully %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"verified\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"unloaded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @load_unload_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_unload_keys(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** @B_FALSE, align 8
  store i8* %12, i8** %10, align 8
  %13 = bitcast %struct.TYPE_3__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 56, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  store i8* %14, i8** %15, align 8
  br label %16

16:                                               ; preds = %53, %29, %26, %3
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %32 [
    i32 110, label %26
    i32 76, label %29
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** @B_TRUE, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  br label %16

29:                                               ; preds = %24
  %30 = load i32*, i32** @optarg, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32* %30, i32** %31, align 8
  br label %16

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %46 [
    i32 97, label %36
    i32 114, label %40
  ]

36:                                               ; preds = %34
  %37 = load i8*, i8** @B_TRUE, align 8
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** @B_TRUE, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  br label %53

40:                                               ; preds = %34
  %41 = load i32, i32* @ZFS_ITER_RECURSE, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** @B_TRUE, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %44, i8** %45, align 8
  br label %53

46:                                               ; preds = %34
  %47 = load i32, i32* @stderr, align 4
  %48 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @optopt, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* %48, i32 %49)
  %51 = load i8*, i8** @B_FALSE, align 8
  %52 = call i32 @usage(i8* %51)
  br label %53

53:                                               ; preds = %46, %40, %36
  br label %16

54:                                               ; preds = %16
  %55 = load i64, i64* @optind, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  %60 = load i64, i64* @optind, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 %60
  store i8** %62, i8*** %5, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @stderr, align 4
  %70 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* %70)
  %72 = load i8*, i8** @B_FALSE, align 8
  %73 = call i32 @usage(i8* %72)
  br label %74

74:                                               ; preds = %68, %65, %54
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* @stderr, align 4
  %82 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* %82)
  %84 = load i8*, i8** @B_FALSE, align 8
  %85 = call i32 @usage(i8* %84)
  br label %86

86:                                               ; preds = %80, %77, %74
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @strcmp(i32* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* @stderr, align 4
  %101 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* %101)
  %103 = load i8*, i8** @B_FALSE, align 8
  %104 = call i32 @usage(i8* %103)
  br label %105

105:                                              ; preds = %99, %94, %90, %86
  %106 = load i32, i32* %4, align 4
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %110 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @load_key_callback, align 4
  %113 = call i32 @zfs_for_each(i32 %106, i8** %107, i32 %108, i32 %111, i32* null, i32* null, i32 0, i32 %112, %struct.TYPE_3__* %11)
  store i32 %113, i32* %8, align 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %148

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %121, %105
  %126 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %128, %130
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i8*, i8** %6, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %125
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  br label %145

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144, %138
  %146 = phi i8* [ %143, %138 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %144 ]
  %147 = call i32 @printf(i8* %126, i32 %132, i32 %135, i8* %146)
  br label %148

148:                                              ; preds = %145, %121, %117
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 -1, i32* %8, align 4
  br label %153

153:                                              ; preds = %152, %148
  %154 = load i32, i32* %8, align 4
  ret i32 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i64 @strcmp(i32*, i8*) #2

declare dso_local i32 @zfs_for_each(i32, i8**, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @printf(i8*, i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
