; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@zpool_sync_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zpool_do_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpool_do_sync(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* @B_FALSE, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %24 [
    i32 102, label %15
    i32 63, label %17
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @B_TRUE, align 4
  store i32 %16, i32* %6, align 4
  br label %24

17:                                               ; preds = %13
  %18 = load i32, i32* @stderr, align 4
  %19 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @optopt, align 4
  %21 = call i32 @fprintf(i32 %18, i8* %19, i32 %20)
  %22 = load i32, i32* @B_FALSE, align 4
  %23 = call i32 @usage(i32 %22)
  br label %24

24:                                               ; preds = %17, %13, %15
  br label %8

25:                                               ; preds = %8
  %26 = load i64, i64* @optind, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load i64, i64* @optind, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31
  store i8** %33, i8*** %4, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* @B_FALSE, align 4
  %37 = load i32, i32* @zpool_sync_one, align 4
  %38 = call i32 @for_each_pool(i32 %34, i8** %35, i32 %36, i32* null, i32 %37, i32* %6)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @for_each_pool(i32, i8**, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
