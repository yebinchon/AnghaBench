; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_check_dir_block_end.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_check_dir_block_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISO_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @iso9660_check_dir_block_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso9660_check_dir_block_end(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @iso9660_get_dir_len(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %14 = urem i32 %12, %13
  %15 = sub i32 %10, %14
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, %15
  store i32 %18, i32* %16, align 4
  store i32 1, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @iso9660_get_dir_len(i32* %22)
  %24 = add i32 %21, %23
  %25 = sub i32 %24, 1
  %26 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %27 = udiv i32 %25, %26
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %31 = udiv i32 %29, %30
  %32 = icmp ne i32 %27, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %19
  %34 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %38 = urem i32 %36, %37
  %39 = sub i32 %34, %38
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %41, %39
  store i32 %42, i32* %40, align 4
  store i32 1, i32* %3, align 4
  br label %44

43:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %33, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @iso9660_get_dir_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
