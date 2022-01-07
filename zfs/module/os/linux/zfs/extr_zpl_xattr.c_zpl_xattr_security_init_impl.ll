; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c_zpl_xattr_security_init_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c_zpl_xattr_security_init_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.xattr = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.xattr*, i8*)* @zpl_xattr_security_init_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_xattr_security_init_impl(%struct.inode* %0, %struct.xattr* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.xattr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xattr*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.xattr* %1, %struct.xattr** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.xattr*, %struct.xattr** %5, align 8
  store %struct.xattr* %9, %struct.xattr** %7, align 8
  br label %10

10:                                               ; preds = %31, %3
  %11 = load %struct.xattr*, %struct.xattr** %7, align 8
  %12 = getelementptr inbounds %struct.xattr, %struct.xattr* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load %struct.xattr*, %struct.xattr** %7, align 8
  %18 = getelementptr inbounds %struct.xattr, %struct.xattr* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.xattr*, %struct.xattr** %7, align 8
  %21 = getelementptr inbounds %struct.xattr, %struct.xattr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xattr*, %struct.xattr** %7, align 8
  %24 = getelementptr inbounds %struct.xattr, %struct.xattr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @__zpl_xattr_security_set(%struct.inode* %16, i32* %19, i32 %22, i32 %25, i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %34

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.xattr*, %struct.xattr** %7, align 8
  %33 = getelementptr inbounds %struct.xattr, %struct.xattr* %32, i32 1
  store %struct.xattr* %33, %struct.xattr** %7, align 8
  br label %10

34:                                               ; preds = %29, %10
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @__zpl_xattr_security_set(%struct.inode*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
