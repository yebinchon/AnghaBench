; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_setadv.c_adv_consistent.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_setadv.c_adv_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADV_MAGIC1 = common dso_local global i64 0, align 8
@ADV_SIZE = common dso_local global i32 0, align 4
@ADV_MAGIC3 = common dso_local global i64 0, align 8
@ADV_MAGIC2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @adv_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv_consistent(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i64*
  %8 = call i64 @get_32(i64* %7)
  %9 = load i64, i64* @ADV_MAGIC1, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @ADV_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 -4
  %17 = bitcast i8* %16 to i64*
  %18 = call i64 @get_32(i64* %17)
  %19 = load i64, i64* @ADV_MAGIC3, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %45

22:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  store i32 4, i32* %4, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ADV_SIZE, align 4
  %26 = sub nsw i32 %25, 4
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = bitcast i8* %32 to i64*
  %34 = call i64 @get_32(i64* %33)
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %4, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @ADV_MAGIC2, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %21
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @get_32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
