; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline.c_ext2fs_get_memalign.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline.c_ext2fs_get_memalign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT2_ET_NO_MEMORY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_get_memalign(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to i8**
  store i8** %11, i8*** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 8, i64* %6, align 8
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i64, i64* %5, align 8
  %17 = call i8* @malloc(i64 %16)
  %18 = load i8**, i8*** %9, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, 1
  %24 = and i64 %21, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load i8**, i8*** %9, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8**, i8*** %9, align 8
  store i8* null, i8** %30, align 8
  br label %31

31:                                               ; preds = %26, %15
  %32 = load i8**, i8*** %9, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @EXT2_ET_NO_MEMORY, align 8
  store i64 %36, i64* %4, align 8
  br label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
