; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgsub.c_otv_ContextSubst_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgsub.c_otv_ContextSubst_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ContextSubst\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" (format %d)\0A\00", align 1
@ContextSubstFormat1 = common dso_local global i32 0, align 4
@SubRuleSet = common dso_local global i32 0, align 4
@SubRule = common dso_local global i32 0, align 4
@ContextSubstFormat2 = common dso_local global i32 0, align 4
@SubClassSet = common dso_local global i32 0, align 4
@SubClassRule = common dso_local global i32 0, align 4
@ContextSubstFormat3 = common dso_local global i32 0, align 4
@FT_INVALID_FORMAT = common dso_local global i32 0, align 4
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @otv_ContextSubst_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_ContextSubst_validate(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  %8 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @OTV_LIMIT_CHECK(i32 2)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @FT_NEXT_USHORT(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @OTV_TRACE(i8* %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %44 [
    i32 1, label %17
    i32 2, label %30
    i32 3, label %38
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ContextSubstFormat1, align 4
  %24 = load i32, i32* @SubRuleSet, align 4
  %25 = load i32, i32* @SubRule, align 4
  %26 = call i32 @OTV_NEST3(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = call i32 @OTV_RUN(i32 %27, %struct.TYPE_4__* %28)
  br label %46

30:                                               ; preds = %2
  %31 = load i32, i32* @ContextSubstFormat2, align 4
  %32 = load i32, i32* @SubClassSet, align 4
  %33 = load i32, i32* @SubClassRule, align 4
  %34 = call i32 @OTV_NEST3(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = call i32 @OTV_RUN(i32 %35, %struct.TYPE_4__* %36)
  br label %46

38:                                               ; preds = %2
  %39 = load i32, i32* @ContextSubstFormat3, align 4
  %40 = call i32 @OTV_NEST1(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = call i32 @OTV_RUN(i32 %41, %struct.TYPE_4__* %42)
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @FT_INVALID_FORMAT, align 4
  br label %46

46:                                               ; preds = %44, %38, %30, %17
  %47 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @OTV_NEST3(i32, i32, i32) #1

declare dso_local i32 @OTV_RUN(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @OTV_NEST1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
