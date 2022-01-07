; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_events_next.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_events_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32 }

@ZFS_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%-30s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZEVENT_NONE = common dso_local global i32 0, align 4
@ZEVENT_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"dropped %d events\0A\00", align 1
@FM_FMRI_ZFS_POOL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @zpool_do_events_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpool_do_events_next(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* @ZFS_DEV, align 4
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = call i32 @open(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY(i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %1
  br label %23

23:                                               ; preds = %22, %68, %82
  %24 = load i32, i32* @g_zfs, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ZEVENT_NONE, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @ZEVENT_NONBLOCK, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @zpool_events_next(i32 %24, i32** %3, i32* %6, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %3, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %33
  br label %87

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, ...) @printf(i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @strlen(i32 %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @FM_FMRI_ZFS_POOL, align 4
  %59 = call i64 @nvlist_lookup_string(i32* %57, i32 %58, i8** %7)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @strcmp(i32 %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %23

69:                                               ; preds = %61, %56, %50
  %70 = load i32*, i32** %3, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = call i32 @zpool_do_events_short(i32* %70, %struct.TYPE_4__* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @zpool_do_events_nvprint(i32* %78, i32 8)
  %80 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @printf(i8* %80)
  br label %82

82:                                               ; preds = %77, %69
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 @fflush(i32 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @nvlist_free(i32* %85)
  br label %23

87:                                               ; preds = %42
  %88 = load i32, i32* %4, align 4
  %89 = call i64 @close(i32 %88)
  %90 = icmp eq i64 0, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @VERIFY(i32 %91)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @zpool_events_next(i32, i32**, i32*, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @zpool_do_events_short(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @zpool_do_events_nvprint(i32*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
