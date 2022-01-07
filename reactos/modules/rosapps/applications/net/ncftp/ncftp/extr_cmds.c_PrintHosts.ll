; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_PrintHosts.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_PrintHosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [81 x i8] c"--BOOKMARK----------URL--------------------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"  %-16s  %s\0A\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @PrintHosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintHosts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca [128 x i8], align 16
  store i32 0, i32* %4, align 4
  %7 = call i32* @OpenBookmarkFile(i32* null)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %39

11:                                               ; preds = %0
  %12 = call i32* (...) @OpenPager()
  store i32* %12, i32** %3, align 8
  br label %13

13:                                               ; preds = %25, %11
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @GetNextBookmark(i32* %14, %struct.TYPE_4__* %5)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %27 = call i32 @BookmarkToURL(%struct.TYPE_4__* %5, i8* %26, i32 128)
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31)
  br label %13

33:                                               ; preds = %13
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @ClosePager(i32* %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @CloseBookmarkFile(i32* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %33, %10
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32* @OpenBookmarkFile(i32*) #1

declare dso_local i32* @OpenPager(...) #1

declare dso_local i64 @GetNextBookmark(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @BookmarkToURL(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @ClosePager(i32*) #1

declare dso_local i32 @CloseBookmarkFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
