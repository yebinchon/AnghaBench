; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsdec.c_DuplicateAndPushStyle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsdec.c_DuplicateAndPushStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32* }

@STYLE_NO_DEFAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__**)* @DuplicateAndPushStyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DuplicateAndPushStyle(%struct.TYPE_4__** %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32* @text_style_Duplicate(i32* %13)
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @STYLE_NO_DEFAULTS, align 4
  %17 = call i32* @text_style_Create(i32 %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32* [ %14, %9 ], [ %17, %15 ]
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32* null, i32** %2, align 8
  br label %49

27:                                               ; preds = %18
  %28 = call %struct.TYPE_4__* @malloc(i32 16)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %5, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @text_style_Delete(i32* %36)
  store i32* null, i32** %2, align 8
  br label %49

38:                                               ; preds = %27
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %47, align 8
  %48 = load i32*, i32** %4, align 8
  store i32* %48, i32** %2, align 8
  br label %49

49:                                               ; preds = %38, %35, %26
  %50 = load i32*, i32** %2, align 8
  ret i32* %50
}

declare dso_local i32* @text_style_Duplicate(i32*) #1

declare dso_local i32* @text_style_Create(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @text_style_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
