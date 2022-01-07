; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_offline.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"missing pool name\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"missing device name\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@VDEV_AUX_EXTERNAL_PERSIST = common dso_local global i32 0, align 4
@VDEV_AUX_EXTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_offline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* @B_FALSE, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* @B_FALSE, align 8
  store i64 %16, i64* %12, align 8
  br label %17

17:                                               ; preds = %35, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %35 [
    i32 102, label %24
    i32 116, label %26
    i32 63, label %28
  ]

24:                                               ; preds = %22
  %25 = load i64, i64* @B_TRUE, align 8
  store i64 %25, i64* %12, align 8
  br label %35

26:                                               ; preds = %22
  %27 = load i64, i64* @B_TRUE, align 8
  store i64 %27, i64* %11, align 8
  br label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @stderr, align 4
  %30 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @optopt, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* %30, i32 %31)
  %33 = load i64, i64* @B_FALSE, align 8
  %34 = call i32 @usage(i64 %33)
  br label %35

35:                                               ; preds = %28, %22, %26, %24
  br label %17

36:                                               ; preds = %17
  %37 = load i64, i64* @optind, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i32, i32* @stderr, align 4
  %49 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* %49)
  %51 = load i64, i64* @B_FALSE, align 8
  %52 = call i32 @usage(i64 %51)
  br label %53

53:                                               ; preds = %47, %36
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @stderr, align 4
  %58 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* %58)
  %60 = load i64, i64* @B_FALSE, align 8
  %61 = call i32 @usage(i64 %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %8, align 8
  %66 = load i32, i32* @g_zfs, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32* @zpool_open(i32 %66, i8* %67)
  store i32* %68, i32** %9, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %125

71:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  br label %72

72:                                               ; preds = %118, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %72
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load i32*, i32** %9, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @zpool_vdev_path_to_guid(i32* %80, i8* %85)
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @B_FALSE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* @VDEV_AUX_EXTERNAL_PERSIST, align 4
  store i32 %91, i32* %14, align 4
  br label %94

92:                                               ; preds = %79
  %93 = load i32, i32* @VDEV_AUX_EXTERNAL, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = load i64, i64* %13, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load i32*, i32** %9, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i64 @zpool_vdev_fault(i32* %98, i64 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97, %94
  store i32 1, i32* %10, align 4
  br label %104

104:                                              ; preds = %103, %97
  br label %117

105:                                              ; preds = %76
  %106 = load i32*, i32** %9, align 8
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i64 @zpool_vdev_offline(i32* %106, i8* %111, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  store i32 1, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %105
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %72

121:                                              ; preds = %72
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @zpool_close(i32* %122)
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %70
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i64) #1

declare dso_local i32* @zpool_open(i32, i8*) #1

declare dso_local i64 @zpool_vdev_path_to_guid(i32*, i8*) #1

declare dso_local i64 @zpool_vdev_fault(i32*, i64, i32) #1

declare dso_local i64 @zpool_vdev_offline(i32*, i8*, i64) #1

declare dso_local i32 @zpool_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
