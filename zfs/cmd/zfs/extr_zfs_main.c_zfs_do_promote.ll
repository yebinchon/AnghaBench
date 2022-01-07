; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_promote.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_promote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"missing clone filesystem argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_promote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_promote(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %30

18:                                               ; preds = %10
  %19 = load i32, i32* @stderr, align 4
  %20 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* %20, i32 %26)
  %28 = load i32, i32* @B_FALSE, align 4
  %29 = call i32 @usage(i32 %28)
  br label %30

30:                                               ; preds = %18, %10, %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* %35)
  %37 = load i32, i32* @B_FALSE, align 4
  %38 = call i32 @usage(i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* %44)
  %46 = load i32, i32* @B_FALSE, align 4
  %47 = call i32 @usage(i32 %46)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* @g_zfs, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %54 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %55 = or i32 %53, %54
  %56 = call i32* @zfs_open(i32 %49, i8* %52, i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %68

60:                                               ; preds = %48
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @zfs_promote(i32* %61)
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @zfs_close(i32* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %59
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32* @zfs_open(i32, i8*, i32) #1

declare dso_local i64 @zfs_promote(i32*) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
