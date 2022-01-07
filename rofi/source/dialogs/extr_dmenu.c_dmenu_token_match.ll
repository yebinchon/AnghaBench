; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_token_match.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_token_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32)* @dmenu_token_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmenu_token_match(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @mode_get_private_data(i32* %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @pango_parse_markup(i8* %26, i32 -1, i32 0, i32* null, i8** %9, i32* null, i32* null)
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load i32**, i32*** %6, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @helper_token_match(i32** %31, i8* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @g_free(i8* %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %50

37:                                               ; preds = %18
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %4, align 4
  br label %50

39:                                               ; preds = %3
  %40 = load i32**, i32*** %6, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @helper_token_match(i32** %40, i8* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %39, %37, %30
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @mode_get_private_data(i32*) #1

declare dso_local i32 @pango_parse_markup(i8*, i32, i32, i32*, i8**, i32*, i32*) #1

declare dso_local i32 @helper_token_match(i32**, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
