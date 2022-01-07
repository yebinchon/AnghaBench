; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_MMIGetText.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_MMIGetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AOT_TEXT_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unexpected text tag: %06x\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32**, i32*)* @MMIGetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @MMIGetText(%struct.TYPE_3__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @APDUGetTag(i32* %12, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @AOT_TEXT_LAST, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @msg_Err(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %7, align 8
  store i32 0, i32* %25, align 4
  %26 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %4, align 8
  br label %45

27:                                               ; preds = %3
  %28 = load i32**, i32*** %6, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @APDUGetLength(i32* %29, i32* %9)
  store i32* %30, i32** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 4
  %33 = load i32**, i32*** %6, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %33, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i8* @vlc_from_EIT(i32* %42, i32 %43)
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %27, %19
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local i32 @APDUGetTag(i32*, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @APDUGetLength(i32*, i32*) #1

declare dso_local i8* @vlc_from_EIT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
