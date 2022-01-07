; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_redact.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_redact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"too few arguments\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"provided snapshot %s does not exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"specified redaction bookmark (%s) provided already exists\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"provided bookmark name cannot be used, final name would be too long\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"too many redaction snapshots specified\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"redaction snapshot must be descendent of snapshot being redacted\0A\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"attempted to redact redacted dataset or with respect to redacted dataset\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"redaction bookmarks feature not enabled\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"internal error: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_redact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_redact(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8** null, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %13, i8*** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* %20)
  %22 = load i32, i32* @B_FALSE, align 4
  %23 = call i32 @usage(i32 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i8**, i8*** %4, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  store i8** %32, i8*** %7, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %8, align 4
  %35 = call i32* (...) @fnvlist_alloc()
  store i32* %35, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %48, %24
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32*, i32** %9, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @fnvlist_add_boolean(i32* %41, i8* %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %36

51:                                               ; preds = %36
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @lzc_redact(i8* %52, i8* %53, i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @fnvlist_free(i32* %56)
  %58 = load i32, i32* %11, align 4
  switch i32 %58, label %90 [
    i32 0, label %59
    i32 129, label %60
    i32 132, label %65
    i32 130, label %70
    i32 134, label %74
    i32 131, label %78
    i32 133, label %82
    i32 128, label %86
  ]

59:                                               ; preds = %51
  br label %96

60:                                               ; preds = %51
  %61 = load i32, i32* @stderr, align 4
  %62 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* %62, i8* %63)
  br label %96

65:                                               ; preds = %51
  %66 = load i32, i32* @stderr, align 4
  %67 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* %67, i8* %68)
  br label %96

70:                                               ; preds = %51
  %71 = load i32, i32* @stderr, align 4
  %72 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* %72)
  br label %96

74:                                               ; preds = %51
  %75 = load i32, i32* @stderr, align 4
  %76 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* %76)
  br label %96

78:                                               ; preds = %51
  %79 = load i32, i32* @stderr, align 4
  %80 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* %80)
  br label %96

82:                                               ; preds = %51
  %83 = load i32, i32* @stderr, align 4
  %84 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0))
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* %84)
  br label %96

86:                                               ; preds = %51
  %87 = load i32, i32* @stderr, align 4
  %88 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* %88)
  br label %96

90:                                               ; preds = %51
  %91 = load i32, i32* @stderr, align 4
  %92 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %93 = load i32, i32* @errno, align 4
  %94 = call i8* @strerror(i32 %93)
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* %92, i8* %94)
  br label %96

96:                                               ; preds = %90, %86, %82, %78, %74, %70, %65, %60, %59
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @lzc_redact(i8*, i8*, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
