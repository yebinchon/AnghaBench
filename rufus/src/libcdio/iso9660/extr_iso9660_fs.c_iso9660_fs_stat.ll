; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_fs_stat.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_fs_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @iso9660_fs_stat(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %34

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32* null, i32** %3, align 8
  br label %34

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @_fs_stat_root(i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %34

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = call i8** @_cdio_strsplit(i8* %23, i8 signext 47)
  store i8** %24, i8*** %7, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = call i32* @_fs_stat_traverse(i32* %25, i32* %26, i8** %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @free(i32* %29)
  %31 = load i8**, i8*** %7, align 8
  %32 = call i32 @_cdio_strfreev(i8** %31)
  %33 = load i32*, i32** %8, align 8
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %22, %21, %15, %11
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32* @_fs_stat_root(i32*) #1

declare dso_local i8** @_cdio_strsplit(i8*, i8 signext) #1

declare dso_local i32* @_fs_stat_traverse(i32*, i32*, i8**) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @_cdio_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
