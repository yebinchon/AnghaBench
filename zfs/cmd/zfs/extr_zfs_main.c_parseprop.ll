; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_parseprop.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_parseprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"missing '=' for property=value argument\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"property '%s' specified multiple times\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @parseprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseprop(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 61)
  store i8* %8, i8** %6, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* %12)
  %14 = load i32, i32* @B_FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @nvlist_exists(i32* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, i32* @stderr, align 4
  %25 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* %25, i8* %26)
  %28 = load i32, i32* @B_FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %15
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @nvlist_add_string(i32* %30, i8* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 (...) @nomem()
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, i32* @B_TRUE, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %23, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i64 @nvlist_exists(i32*, i8*) #1

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nomem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
