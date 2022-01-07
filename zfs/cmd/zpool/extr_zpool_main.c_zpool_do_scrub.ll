; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_scrub.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_scrub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@B_FALSE = common dso_local global i64 0, align 8
@POOL_SCAN_SCRUB = common dso_local global i64 0, align 8
@POOL_SCRUB_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"spw\00", align 1
@POOL_SCAN_NONE = common dso_local global i64 0, align 8
@POOL_SCRUB_PAUSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"invalid option combination: -s and -p are mutually exclusive\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"invalid option combination: -w cannot be used with -p or -s\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"missing pool name argument\0A\00", align 1
@scrub_callback = common dso_local global i32 0, align 4
@ZPOOL_WAIT_SCRUB = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@wait_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_scrub(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i64, i64* @B_FALSE, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = load i64, i64* @POOL_SCRUB_NORMAL, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  br label %15

15:                                               ; preds = %37, %2
  %16 = load i32, i32* %3, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %37 [
    i32 115, label %22
    i32 112, label %25
    i32 119, label %28
    i32 63, label %30
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* @POOL_SCAN_NONE, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  br label %37

25:                                               ; preds = %20
  %26 = load i64, i64* @POOL_SCRUB_PAUSE, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  br label %37

28:                                               ; preds = %20
  %29 = load i64, i64* @B_TRUE, align 8
  store i64 %29, i64* %7, align 8
  br label %37

30:                                               ; preds = %20
  %31 = load i32, i32* @stderr, align 4
  %32 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @optopt, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* %32, i32 %33)
  %35 = load i64, i64* @B_FALSE, align 8
  %36 = call i32 @usage(i64 %35)
  br label %37

37:                                               ; preds = %30, %20, %28, %25, %22
  br label %15

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @POOL_SCAN_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @POOL_SCRUB_PAUSE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* %50)
  %52 = load i64, i64* @B_FALSE, align 8
  %53 = call i32 @usage(i64 %52)
  br label %54

54:                                               ; preds = %48, %43, %38
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @POOL_SCAN_NONE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @POOL_SCRUB_PAUSE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @stderr, align 4
  %69 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* %69)
  %71 = load i64, i64* @B_FALSE, align 8
  %72 = call i32 @usage(i64 %71)
  br label %73

73:                                               ; preds = %67, %62, %54
  %74 = load i64, i64* @optind, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %3, align 4
  %79 = load i64, i64* @optind, align 8
  %80 = load i8**, i8*** %4, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 %79
  store i8** %81, i8*** %4, align 8
  %82 = load i32, i32* %3, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load i32, i32* @stderr, align 4
  %86 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* %86)
  %88 = load i64, i64* @B_FALSE, align 8
  %89 = call i32 @usage(i64 %88)
  br label %90

90:                                               ; preds = %84, %73
  %91 = load i32, i32* %3, align 4
  %92 = load i8**, i8*** %4, align 8
  %93 = load i64, i64* @B_TRUE, align 8
  %94 = load i32, i32* @scrub_callback, align 4
  %95 = call i32 @for_each_pool(i32 %91, i8** %92, i64 %93, i32* null, i32 %94, %struct.TYPE_5__* %6)
  store i32 %95, i32* %8, align 4
  %96 = load i64, i64* %7, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 bitcast (%struct.TYPE_5__* @ZPOOL_WAIT_SCRUB to i8*), i64 16, i1 false)
  %103 = load i32, i32* %3, align 4
  %104 = load i8**, i8*** %4, align 8
  %105 = load i64, i64* @B_TRUE, align 8
  %106 = load i32, i32* @wait_callback, align 4
  %107 = call i32 @for_each_pool(i32 %103, i8** %104, i64 %105, i32* null, i32 %106, %struct.TYPE_5__* %9)
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %101, %98, %90
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i64) #1

declare dso_local i32 @for_each_pool(i32, i8**, i64, i32*, i32, %struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
