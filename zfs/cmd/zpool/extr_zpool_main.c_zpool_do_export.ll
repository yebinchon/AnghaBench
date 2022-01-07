; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_export.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@B_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"afF\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@zpool_export_one = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"missing pool argument\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_export(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i8*, i8** @B_FALSE, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** @B_FALSE, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** @B_FALSE, align 8
  store i8* %14, i8** %9, align 8
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %10, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %35 [
    i32 97, label %22
    i32 102, label %24
    i32 70, label %26
    i32 63, label %28
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @B_TRUE, align 8
  store i8* %23, i8** %7, align 8
  br label %35

24:                                               ; preds = %20
  %25 = load i8*, i8** @B_TRUE, align 8
  store i8* %25, i8** %8, align 8
  br label %35

26:                                               ; preds = %20
  %27 = load i8*, i8** @B_TRUE, align 8
  store i8* %27, i8** %9, align 8
  br label %35

28:                                               ; preds = %20
  %29 = load i32, i32* @stderr, align 4
  %30 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @optopt, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* %30, i32 %31)
  %33 = load i8*, i8** @B_FALSE, align 8
  %34 = call i32 @usage(i8* %33)
  br label %35

35:                                               ; preds = %28, %20, %26, %24, %22
  br label %15

36:                                               ; preds = %15
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i64, i64* @optind, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* @optind, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  store i8** %48, i8*** %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %36
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* @stderr, align 4
  %56 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* %56)
  %58 = load i8*, i8** @B_FALSE, align 8
  %59 = call i32 @usage(i8* %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %4, align 4
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** @B_TRUE, align 8
  %64 = load i32, i32* @zpool_export_one, align 4
  %65 = call i32 @for_each_pool(i32 %61, i8** %62, i8* %63, i32* null, i32 %64, %struct.TYPE_3__* %6)
  store i32 %65, i32* %3, align 4
  br label %82

66:                                               ; preds = %36
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* @stderr, align 4
  %71 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* %71)
  %73 = load i8*, i8** @B_FALSE, align 8
  %74 = call i32 @usage(i8* %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i32, i32* %4, align 4
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** @B_TRUE, align 8
  %79 = load i32, i32* @zpool_export_one, align 4
  %80 = call i32 @for_each_pool(i32 %76, i8** %77, i8* %78, i32* null, i32 %79, %struct.TYPE_3__* %6)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %75, %60
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @for_each_pool(i32, i8**, i8*, i32*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
