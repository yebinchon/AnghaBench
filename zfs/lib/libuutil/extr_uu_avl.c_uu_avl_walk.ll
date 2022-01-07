; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_avl.c_uu_avl_walk.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_avl.c_uu_avl_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UU_WALK_NEXT = common dso_local global i32 0, align 4
@UU_WALK_ROBUST = common dso_local global i32 0, align 4
@UU_WALK_REVERSE = common dso_local global i32 0, align 4
@UU_ERROR_UNKNOWN_FLAG = common dso_local global i32 0, align 4
@UU_ERROR_CALLBACK_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uu_avl_walk(i32* %0, i32 (i8*, i8*)** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i8*, i8*)**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 (i8*, i8*)** %1, i32 (i8*, i8*)*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @UU_WALK_NEXT, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @UU_WALK_ROBUST, align 4
  %16 = load i32, i32* @UU_WALK_REVERSE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @UU_ERROR_UNKNOWN_FLAG, align 4
  %23 = call i32 @uu_set_error(i32 %22)
  store i32 -1, i32* %5, align 4
  br label %52

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @_avl_walk_init(i32* %11, i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %38, %24
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @UU_WALK_NEXT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = call i8* @_avl_walk_advance(i32* %11, i32* %33)
  store i8* %34, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ false, %28 ], [ %35, %32 ]
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = load i32 (i8*, i8*)**, i32 (i8*, i8*)*** %7, align 8
  %40 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %39, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 %40(i8* %41, i8* %42)
  store i32 %43, i32* %12, align 4
  br label %28

44:                                               ; preds = %36
  %45 = call i32 @_avl_walk_fini(i32* %11)
  %46 = load i32, i32* %12, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @UU_ERROR_CALLBACK_FAILED, align 4
  %51 = call i32 @uu_set_error(i32 %50)
  store i32 -1, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %48, %21
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @uu_set_error(i32) #1

declare dso_local i32 @_avl_walk_init(i32*, i32*, i32) #1

declare dso_local i8* @_avl_walk_advance(i32*, i32*) #1

declare dso_local i32 @_avl_walk_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
