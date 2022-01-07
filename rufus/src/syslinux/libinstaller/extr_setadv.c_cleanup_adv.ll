; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_setadv.c_cleanup_adv.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_setadv.c_cleanup_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADV_MAGIC1 = common dso_local global i32 0, align 4
@ADV_MAGIC2 = common dso_local global i32 0, align 4
@ADV_SIZE = common dso_local global i32 0, align 4
@ADV_MAGIC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cleanup_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_adv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* @ADV_MAGIC1, align 4
  %8 = call i32 @set_32(i32* %6, i32 %7)
  %9 = load i32, i32* @ADV_MAGIC2, align 4
  store i32 %9, i32* %4, align 4
  store i32 8, i32* %3, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ADV_SIZE, align 4
  %13 = sub nsw i32 %12, 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = bitcast i8* %19 to i32*
  %21 = call i64 @get_32(i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* %3, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @set_32(i32* %32, i32 %33)
  %35 = load i8*, i8** %2, align 8
  %36 = load i32, i32* @ADV_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = getelementptr inbounds i8, i8* %38, i64 -4
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* @ADV_MAGIC3, align 4
  %42 = call i32 @set_32(i32* %40, i32 %41)
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* @ADV_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8*, i8** %2, align 8
  %48 = load i32, i32* @ADV_SIZE, align 4
  %49 = call i32 @memcpy(i8* %46, i8* %47, i32 %48)
  ret void
}

declare dso_local i32 @set_32(i32*, i32) #1

declare dso_local i64 @get_32(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
