; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_space_used.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_space_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2_xattr*, i32)* @space_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @space_used(%struct.ext2_xattr* %0, i32 %1) #0 {
  %3 = alloca %struct.ext2_xattr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext2_xattr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ext2_xattr* %0, %struct.ext2_xattr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.ext2_xattr*, %struct.ext2_xattr** %3, align 8
  store %struct.ext2_xattr* %11, %struct.ext2_xattr** %6, align 8
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %18 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @find_ea_index(i32 %19, i8** %7, i32* %10)
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @EXT2_EXT_ATTR_LEN(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %30 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %16
  %34 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %35 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @EXT2_EXT_ATTR_SIZE(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %33, %16
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %47 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %46, i32 1
  store %struct.ext2_xattr* %47, %struct.ext2_xattr** %6, align 8
  br label %12

48:                                               ; preds = %12
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @find_ea_index(i32, i8**, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @EXT2_EXT_ATTR_LEN(i32) #1

declare dso_local i64 @EXT2_EXT_ATTR_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
