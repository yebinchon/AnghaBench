; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_have_rr.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_have_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nope = common dso_local global i32 0, align 4
@dunno = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iso9660_have_rr(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %10 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 1
  %12 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %11, align 8
  %13 = load i32, i32* @nope, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @_ifs_stat_root(i32* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @dunno, align 4
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @UINT64_MAX, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %33 = call i32 @iso_have_rr_traverse(i32* %30, i8* %31, i8** %32, i32* %5)
  store i32 %33, i32* %8, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @free(i8* %34)
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %37 = load i8*, i8** %36, align 16
  %38 = call i32 @free(i8* %37)
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %29, %22, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @_ifs_stat_root(i32*) #1

declare dso_local i32 @iso_have_rr_traverse(i32*, i8*, i8**, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
