; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deleg.c_dsl_load_user_sets.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deleg.c_dsl_load_user_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_DELEG_USER_SETS = common dso_local global i32 0, align 4
@ZFS_DELEG_GROUP_SETS = common dso_local global i32 0, align 4
@ZFS_DELEG_EVERYONE_SETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i8, i32*)* @dsl_load_user_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_load_user_sets(i32* %0, i32 %1, i32* %2, i8 signext %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8 %3, i8* %9, align 1
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @crgetuid(i32* %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ZFS_DELEG_USER_SETS, align 4
  %20 = load i8, i8* %9, align 1
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @dsl_load_sets(i32* %17, i32 %18, i32 %19, i8 signext %20, i32* %14, i32* %21)
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @crgetgid(i32* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ZFS_DELEG_GROUP_SETS, align 4
  %28 = load i8, i8* %9, align 1
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @dsl_load_sets(i32* %25, i32 %26, i32 %27, i8 signext %28, i32* %14, i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ZFS_DELEG_EVERYONE_SETS, align 4
  %34 = load i8, i8* %9, align 1
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @dsl_load_sets(i32* %31, i32 %32, i32 %33, i8 signext %34, i32* null, i32* %35)
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @crgetngroups(i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32* @crgetgroups(i32* %39)
  store i32* %40, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %57, %5
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ZFS_DELEG_GROUP_SETS, align 4
  %54 = load i8, i8* %9, align 1
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @dsl_load_sets(i32* %51, i32 %52, i32 %53, i8 signext %54, i32* %14, i32* %55)
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %41

60:                                               ; preds = %41
  ret void
}

declare dso_local i32 @crgetuid(i32*) #1

declare dso_local i32 @dsl_load_sets(i32*, i32, i32, i8 signext, i32*, i32*) #1

declare dso_local i32 @crgetgid(i32*) #1

declare dso_local i32 @crgetngroups(i32*) #1

declare dso_local i32* @crgetgroups(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
