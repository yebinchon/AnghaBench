; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_events.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"vHfc\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@ZFS_TYPE_POOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid pool name '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"invalid options combined with -c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_events(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  br label %9

9:                                                ; preds = %31, %2
  %10 = load i32, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %31 [
    i32 118, label %16
    i32 72, label %18
    i32 102, label %20
    i32 99, label %22
    i32 63, label %24
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %31

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 1, i32* %19, align 4
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 1, i32* %21, align 8
  br label %31

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 1, i32* %23, align 4
  br label %31

24:                                               ; preds = %14
  %25 = load i32, i32* @stderr, align 4
  %26 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @optopt, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* %26, i32 %27)
  %29 = load i32, i32* @B_FALSE, align 4
  %30 = call i32 @usage(i32 %29)
  br label %31

31:                                               ; preds = %24, %14, %22, %20, %18, %16
  br label %9

32:                                               ; preds = %9
  %33 = load i64, i64* @optind, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %3, align 4
  %38 = load i64, i64* @optind, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38
  store i8** %40, i8*** %4, align 8
  %41 = load i32, i32* %3, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load i32, i32* @stderr, align 4
  %45 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* %45)
  %47 = load i32, i32* @B_FALSE, align 4
  %48 = call i32 @usage(i32 %47)
  br label %74

49:                                               ; preds = %32
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %4, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strlcpy(i8* %54, i8* %57, i32 8)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @ZFS_TYPE_POOL, align 4
  %62 = call i32 @zfs_name_valid(i8* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* @stderr, align 4
  %66 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* %66, i8* %68)
  %70 = load i32, i32* @B_FALSE, align 4
  %71 = call i32 @usage(i32 %70)
  br label %72

72:                                               ; preds = %64, %52
  br label %73

73:                                               ; preds = %72, %49
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i32, i32* %3, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85, %81, %77, %74
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* @stderr, align 4
  %95 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* %95)
  %97 = load i32, i32* @B_FALSE, align 4
  %98 = call i32 @usage(i32 %97)
  br label %99

99:                                               ; preds = %93, %89, %85
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 @zpool_do_events_clear(%struct.TYPE_4__* %5)
  store i32 %104, i32* %6, align 4
  br label %107

105:                                              ; preds = %99
  %106 = call i32 @zpool_do_events_next(%struct.TYPE_4__* %5)
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @zfs_name_valid(i8*, i32) #2

declare dso_local i32 @zpool_do_events_clear(%struct.TYPE_4__*) #2

declare dso_local i32 @zpool_do_events_next(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
