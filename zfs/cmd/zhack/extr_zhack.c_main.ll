; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i32, i8* }

@MAX_NUM_PATHS = common dso_local global i32 0, align 4
@g_importargs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"+c:d:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"error: no command specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"feature\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"error: unknown subcommand: %s\0A\00", align 1
@g_readonly = common dso_local global i32 0, align 4
@g_pool = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"pool export failed; changes may not be committed to disk\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @MAX_NUM_PATHS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i8** %14, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 0), align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @dprintf_setup(i32* %4, i8** %15)
  call void @zfs_prop_init()
  br label %17

17:                                               ; preds = %40, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %10, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %38 [
    i32 99, label %24
    i32 100, label %26
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 2), align 8
  br label %40

26:                                               ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 1), align 8
  %28 = load i32, i32* @MAX_NUM_PATHS, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** @optarg, align 8
  %33 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 0), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 1), align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 1), align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  store i8* %32, i8** %37, align 8
  br label %40

38:                                               ; preds = %22
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %26, %24
  br label %17

41:                                               ; preds = %17
  %42 = load i32, i32* @optind, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @optind, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8** %48, i8*** %5, align 8
  store i32 1, i32* @optind, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %51, %41
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = call i32 @zhack_do_feature(i32 %63, i8** %64)
  store i32 %65, i32* %9, align 4
  br label %71

66:                                               ; preds = %55
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32, i32* @g_readonly, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @g_pool, align 4
  %76 = load i32, i32* @B_TRUE, align 4
  %77 = load i32, i32* @B_FALSE, align 4
  %78 = call i64 @spa_export(i32 %75, i32* null, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @FTAG, align 4
  %82 = call i32 @fatal(i32* null, i32 %81, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %74, %71
  %84 = call i32 (...) @kernel_fini()
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  %86 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dprintf_setup(i32*, i8**) #2

declare dso_local void @zfs_prop_init() #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @zhack_do_feature(i32, i8**) #2

declare dso_local i64 @spa_export(i32, i32*, i32, i32) #2

declare dso_local i32 @fatal(i32*, i32, i8*) #2

declare dso_local i32 @kernel_fini(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
